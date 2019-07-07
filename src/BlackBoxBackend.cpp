#include <QtCore/QStringRef>
#include <QtCore/QVariant>
#include <QtQml/QQmlProperty>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlComponent>
#include <QQuickItem>
#include <QQuickView>
#include <QApplication>

#include <iostream>
#include <random>

#include "BlackBoxBackend.h"
#include "Cell.h"

using namespace std;

vector<Ray> BlackBoxBackend::rays;
vector<QColor> BlackBoxBackend::rayDeflectionColors;

BlackBoxBackend::BlackBoxBackend() {
    this->atomAmount = 0;
    this->gameFinished = false;
    this->score = MAX_SCORE;
}

Q_INVOKABLE void BlackBoxBackend::newGame() {
    gameFinished = false;

    initBoard();
    resetScore();
    resetBackendModel();
    setRandomAtoms();
}

Q_INVOKABLE void BlackBoxBackend::enterGuess() {
    gameFinished = true;
    bool win = true;

    // Check for correct and wrong guessed atoms and set ui cell color
    for (int x = 1; x <= 8; ++x) {
        for (int y = 1; y <= 8; ++y) {
            if (board[x][y].getAtomGuess() && board[x][y].getCellType() == Cell::ATOM) {
                setObjectColor(x, y, getEnumColor(SIGNAL_GREEN));
            } else if (board[x][y].getAtomGuess() && board[x][y].getCellType() != Cell::ATOM) {
                setObjectColor(x, y, getEnumColor(SIGNAL_RED));
                win = false;
            } else if (!board[x][y].getAtomGuess() && board[x][y].getCellType() == Cell::ATOM) {
                setObjectColor(x, y, getEnumColor(SIGNAL_GREEN));
                win = false;
            }
        }
    }

    if (!win) {
        score = 0;
        setObjectText(SCORE_AMOUNT, score);
    }
}

Q_INVOKABLE void BlackBoxBackend::emitRay(QObject *obj) {
    // Get x and y indices of clicked cell
    Cell clickedCell = getCellCoordinates(obj);
    int x = clickedCell.getX();
    int y = clickedCell.getY();

    if (!currentCellCoordinatesBelongToSomeRay(x, y)) {
        // Emit new ray
        Ray ray = Ray(clickedCell, gameFinished);
        rays.emplace_back(ray);

        if (clickedCell.getX() == 0) {
            nextRayStep(ray, EAST);
        } else if (clickedCell.getX() == 9) {
            nextRayStep(ray, WEST);
        } else if (clickedCell.getY() == 9) {
            nextRayStep(ray, NORTH);
        } else if (clickedCell.getY() == 0) {
            nextRayStep(ray, SOUTH);
        }

    } else {
        // Ray already emitted - display whole ray if game finished
        if (gameFinished) {
            for (auto & ray : rays) {
                Cell frontCell = ray.getRayCells().front();
                Cell backCell = ray.getRayCells().back();

                // Get ray of clicked cell
                if (((frontCell.getX() == x) && (frontCell.getY() == y)) ||
                    ((backCell.getX() == x) && (backCell.getY() == y))) {
                    colorRay(ray);
                }
            }
        }
    }
}

Q_INVOKABLE void BlackBoxBackend::setAtomGuess(QObject *obj) {
    if (!gameFinished) {
        Cell cell = getCellCoordinates(obj);
        int currentAtoms = 0;

        // Get current atom amount
        for (int x = 1; x <= 8; ++x) {
            for (int y = 1; y <= 8; ++y) {
                if (board[x][y].getAtomGuess()) {
                    currentAtoms++;
                }
            }
        }

        if (board[cell.getX()][cell.getY()].getAtomGuess()) {
            // Remove atom guess
            board[cell.getX()][cell.getY()].setAtomGuess(false);
            setObjectVisibility(cell.getX(), cell.getY(), false);
        } else if (currentAtoms < atomAmount) {
            // Add atom guess
            board[cell.getX()][cell.getY()].setAtomGuess(true);
            setObjectVisibility(cell.getX(), cell.getY(), true);
        }
    }
}

void BlackBoxBackend::initBoard() {
    int boardSize = sizeof(board) / sizeof(board[0]);

    for (int y = 0; y < boardSize; ++y) {
        for (int x = 0; x < boardSize; ++x) {
            Cell cell;

            // Set cell coordinates
            cell.setX(x);
            cell.setY(y);

            // Set atom guess state
            cell.setAtomGuess(false);

            // Set cell type and color
            if ((x == 0 && y == 0) || (x == 0 && y == boardSize - 1) ||
                (x == boardSize - 1 && y == 0) || (x == boardSize - 1 && y == boardSize - 1)) {
                cell.setCellType(Cell::CORNER);
                cell.setColor(getEnumColor(MIDNIGHT_BLUE));
            } else if (x == 0 || x == boardSize - 1 || y == 0 || y == boardSize - 1) {
                cell.setCellType(Cell::EDGE);
                cell.setColor(getEnumColor(MARENGO_GRAY));
            } else {
                cell.setCellType(Cell::FIELD);
                cell.setColor(getEnumColor(DARK_VIOLET));

                // Remove atoms
                setObjectVisibility(x, y, false);
            }

            // Save cell in board and set ui cell color
            board[x][y] = cell;
            setObjectColor(x, y, cell.getColor());
        }
    }
}

void BlackBoxBackend::resetScore() {
    score = MAX_SCORE;
    setObjectText(SCORE_AMOUNT, MAX_SCORE);
}

void BlackBoxBackend::resetBackendModel() {
    rays.clear();
}

void BlackBoxBackend::nextRayStep(Ray ray, BlackBoxBackend::Direction direction) {
    Cell currentCell = ray.getRayCells().back();
    int x = currentCell.getX();
    int y = currentCell.getY();

    switch (direction) {
        case SOUTH:
            if (board[x + 0][y + 1].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                ray.addRayCell(board[x + 0][y + 1]);
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 0][y + 1].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y + 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 1][y + 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 0][y + 2].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                ray.addRayCell(board[x + 0][y + 1]);
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y + 2].getCellType() == Cell::ATOM && board[x - 1][y + 2].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                ray.addRayCell(board[x + 0][y + 1]);
                nextRayStep(ray, NORTH);
            } else if (board[x + 1][y + 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x + 0][y + 1]);
                nextRayStep(ray, WEST);
            } else if (board[x - 1][y + 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x + 0][y + 1]);
                nextRayStep(ray, EAST);
            } else {
                // Ray is not deflected by an atom
                ray.addRayCell(board[x + 0][y + 1]);
                nextRayStep(ray, SOUTH);
            }
            break;

        case WEST:
            if (board[x - 1][y + 0].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                ray.addRayCell(board[x - 1][y + 0]);
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 1][y + 0].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 1][y + 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 1][y - 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 2][y + 0].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                ray.addRayCell(board[x - 1][y + 0]);
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 2][y + 1].getCellType() == Cell::ATOM && board[x - 2][y - 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                ray.addRayCell(board[x - 1][y + 0]);
                nextRayStep(ray, EAST);
            } else if (board[x - 2][y + 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x - 1][y + 0]);
                nextRayStep(ray, NORTH);
            } else if (board[x - 2][y - 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x - 1][y + 0]);
                nextRayStep(ray, SOUTH);
            } else {
                // Ray is not deflected by an atom
                ray.addRayCell(board[x - 1][y + 0]);
                nextRayStep(ray, WEST);
            }
            break;

        case NORTH:
            if (board[x + 0][y - 1].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                ray.addRayCell(board[x + 0][y - 1]);
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 0][y - 1].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y - 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x - 1][y - 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 0][y - 2].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                ray.addRayCell(board[x + 0][y - 1]);
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y - 2].getCellType() == Cell::ATOM && board[x - 1][y - 2].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                ray.addRayCell(board[x + 0][y - 1]);
                nextRayStep(ray, SOUTH);
            } else if (board[x + 1][y - 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x + 0][y - 1]);
                nextRayStep(ray, WEST);
            } else if (board[x - 1][y - 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x + 0][y - 1]);
                nextRayStep(ray, EAST);
            } else {
                // Ray is not deflected by an atom
                ray.addRayCell(board[x + 0][y - 1]);
                nextRayStep(ray, NORTH);
            }
            break;

        case EAST:
            if (board[x + 1][y + 0].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                ray.addRayCell(board[x + 1][y + 0]);
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y + 0].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y + 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 1][y - 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                checkForRayReflection(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 2][y + 0].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                ray.addRayCell(board[x + 1][y + 0]);
                rayHitsAtom(ray);
                updateRay(ray);
                decreaseScore(ray.getRayType());
                colorRay(ray);
            } else if (board[x + 2][y + 1].getCellType() == Cell::ATOM && board[x + 2][y - 1].getCellType() == Cell::ATOM) {
                // Ray is reflected by an atom
                ray.addRayCell(board[x + 1][y + 0]);
                nextRayStep(ray, WEST);
            } else if (board[x + 2][y + 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x + 1][y + 0]);
                nextRayStep(ray, NORTH);
            } else if (board[x + 2][y - 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                ray.addRayCell(board[x + 1][y + 0]);
                nextRayStep(ray, SOUTH);
            } else {
                // Ray is not deflected by an atom
                ray.addRayCell(board[x + 1][y + 0]);
                nextRayStep(ray, EAST);
            }
            break;
    }
}

void BlackBoxBackend::rayHitsAtom(Ray &currentRay) {
    currentRay.setRayType(Ray::HIT);
    currentRay.setRayColor(getEnumColor(MIDNIGHT_VIOLET));
}

void BlackBoxBackend::checkForRayReflection(Ray &currentRay) {
    Cell frontCell = currentRay.getRayCells().front();
    Cell backCell = currentRay.getRayCells().back();

    if ((frontCell.getX() == backCell.getX()) && (frontCell.getY() == backCell.getY())) {
        currentRay.setRayType(Ray::REFLECTION);
        currentRay.setRayColor(getEnumColor(WHITE_VIOLET));
    }
}

void BlackBoxBackend::updateRay(Ray &currentRay) {
    Cell frontCell = currentRay.getRayCells().front();

    for (auto &ray : rays) {
        Cell currentCell = ray.getRayCells().front();
        if ((currentCell.getX() == frontCell.getX()) && (currentCell.getY() == frontCell.getY())) {
            ray = currentRay;
        }
    }
}

void BlackBoxBackend::colorRay(Ray &currentRay) {
    if (!gameFinished) {
        // Display front and back cells of ray on board
        Cell frontCell = currentRay.getRayCells().front();
        Cell backCell = currentRay.getRayCells().back();

        board[frontCell.getX()][frontCell.getY()].setColor(currentRay.getRayColor());
        setObjectColor(frontCell.getX(), frontCell.getY(), currentRay.getRayColor());

        if (currentRay.getRayType() != Ray::HIT) {
            board[backCell.getX()][backCell.getY()].setColor(currentRay.getRayColor());
            setObjectColor(backCell.getX(), backCell.getY(), currentRay.getRayColor());
        }

    } else {
        // Reset displayed ray on board
        for (int x = 0; x <= 9; ++x) {
            for (int y = 0; y <= 9; ++y) {
                if (board[x][y].getCellType() == Cell::ATOM || board[x][y].getAtomGuess()) {
                    // Atoms and atom guesses will not be reset
                    continue;
                } else if (board[x][y].getCellType() == Cell::FIELD) {
                    // Every other field cells will be reset
                    setObjectColor(x, y, getEnumColor(DARK_VIOLET));
                } else if (board[x][y].getCellType() == Cell::EDGE) {
                    // Reset edge cells if ray was not emitted during game
                    for (auto &ray : rays) {
                        if (currentCellCoordinatesBelongToSpecificRay(x, y, ray) && !ray.getIngameRay()) {
                            setObjectColor(x, y, getEnumColor(MARENGO_GRAY));
                        }
                    }
                }
            }
        }

        // Display whole ray on board
        for (unsigned i = 0; i < currentRay.getRayCells().size(); ++i) {
            Cell currentCell = currentRay.getRayCells().at(i);

            if (!board[currentCell.getX()][currentCell.getY()].getAtomGuess()) {
                board[currentCell.getX()][currentCell.getY()].setColor(currentRay.getRayColor());
                setObjectColor(currentCell.getX(), currentCell.getY(), currentRay.getRayColor());
            }
        }
    }
}

bool BlackBoxBackend::currentCellCoordinatesBelongToSomeRay(int x, int y) {
    for (auto &ray : rays) {
        Cell frontCell = ray.getRayCells().front();
        Cell backCell = ray.getRayCells().back();

        if ((x == frontCell.getX() && y == frontCell.getY()) || (x == backCell.getX() && y == backCell.getY())) {
            return true;
        }
    }

    return false;
}

bool BlackBoxBackend::currentCellCoordinatesBelongToSpecificRay(int x, int y, Ray ray) {
    Cell frontCell = ray.getRayCells().front();
    Cell backCell = ray.getRayCells().back();

    return (x == frontCell.getX() && y == frontCell.getY()) || (x == backCell.getX() && y == backCell.getY());
}

void BlackBoxBackend::setRandomAtoms() {
    // Get random number between 3 to 5
    random_device rd;
    mt19937 rand(rd());
    uniform_int_distribution<> dist(3, 5);

    atomAmount = dist(rand);
    int remainingAtoms = atomAmount;

    // Set ui atom amount label
    setObjectText(ATOM_AMOUNT, atomAmount);

    // Set atoms on board
    dist = uniform_int_distribution<> (1, 8);
    while (remainingAtoms > 0) {
        // Get random number between inside board
        int x = dist(rand);
        int y = dist(rand);

        if (board[x][y].getCellType() != Cell::ATOM) {
            board[x][y].setCellType(Cell::ATOM);
            remainingAtoms--;
        }
    }
}

void BlackBoxBackend::decreaseScore(Ray::Type rayType) {
    if (!gameFinished && rayType == Ray::DEFLECTION) {
        this->score -= 2;
    } else if (!gameFinished && (rayType == Ray::HIT || rayType == Ray::REFLECTION)) {
        this->score -= 1;
    }

    setObjectText(SCORE_AMOUNT, score);
}

Cell BlackBoxBackend::getCellCoordinates(QObject *obj) {
    QString objName = obj->property("objectName").toString();

    // Get x and y values from cell's objectName attribute
    QStringRef xValue(&objName, 1, 1);
    QStringRef yValue(&objName, 0, 1);

    // Return cell object with coordinates
    Cell cell;
    cell.setX(xValue.toInt());
    cell.setY(yValue.toInt());

    return cell;
}

QColor BlackBoxBackend::getEnumColor(BlackBoxBackend::Color color) {
    switch(color) {
        case MIDNIGHT_BLUE:     return QColor("#09102b");
        case MARENGO_GRAY:      return QColor("#181d30");
        case DARK_VIOLET:       return QColor("#5002a7");
        case BRIGHT_GREEN:      return QColor("#99fc28");
        case BRIGHT_MAGENTA:    return QColor("#f528fc");
        case LIME_GREEN:        return QColor("#2ffc28");
        case BRIGHT_YELLOW:     return QColor("#fcf528");
        case LIME_CYAN:         return QColor("#28fc8b");
        case BRIGHT_ORANGE:     return QColor("#fc8b28");
        case BRIGHT_BLUE:       return QColor("#2899fc");
        case BRIGHT_PINK:       return QColor("#fc2899");
        case BRIGHT_CYAN:       return QColor("#28fcf5");
        case VIVID_RED:         return QColor("#ff1d55");
        case LIME_YELLOW:       return QColor("#e1ff28");
        case ABYSSAL_BLACK:     return QColor("#000000");
        case WHITE_VIOLET:      return QColor("#f7f0ff");
        case MIDNIGHT_VIOLET:   return QColor("#1a0b32");
        case SIGNAL_RED:        return QColor("#ff0d31");
        case SIGNAL_GREEN:      return QColor("#00ff10");
        case VIVID_ORANGE:      return QColor("#ff5100");
        case VIVID_BLUE:        return QColor("#2c38ff");
        case BRIGHT_VIOLET:     return QColor("#b900ff");
        case VIVID_VIOLET:      return QColor("#8b28fc");
        case VIVID_YELLOW:      return QColor("#ffcb00");
        default:                return QColor("#000000");
    }
}

void BlackBoxBackend::setObjectColor(const int &x, const int &y, const QColor &color) {
    emit setObjectColor(QString::fromStdString(C + to_string(y) + to_string(x)), color);
}

void BlackBoxBackend::setObjectText(const string &objectId, const int &number) {
    emit setObjectText(QString::fromStdString(objectId), QString::number(number));
}

void BlackBoxBackend::setObjectVisibility(const int &x, const int &y, const bool &visible) {
    emit setObjectVisibility(QString::fromStdString(A + to_string(y) + to_string(x)), visible);
}

void BlackBoxBackend::setRayDeflectionColors() {
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_GREEN));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_MAGENTA));
    rayDeflectionColors.emplace_back(getEnumColor(LIME_GREEN));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_YELLOW));
    rayDeflectionColors.emplace_back(getEnumColor(LIME_CYAN));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_ORANGE));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_BLUE));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_PINK));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_CYAN));
    rayDeflectionColors.emplace_back(getEnumColor(VIVID_RED));
    rayDeflectionColors.emplace_back(getEnumColor(LIME_YELLOW));
    rayDeflectionColors.emplace_back(getEnumColor(VIVID_ORANGE));
    rayDeflectionColors.emplace_back(getEnumColor(VIVID_BLUE));
    rayDeflectionColors.emplace_back(getEnumColor(BRIGHT_VIOLET));
    rayDeflectionColors.emplace_back(getEnumColor(VIVID_VIOLET));
    rayDeflectionColors.emplace_back(getEnumColor(VIVID_YELLOW));
}