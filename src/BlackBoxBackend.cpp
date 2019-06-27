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

}

Q_INVOKABLE void BlackBoxBackend::newGame() {
    gameFinished = false;

    initBoard();
    setAtoms();
}

Q_INVOKABLE void BlackBoxBackend::enterGuess() {
    gameFinished = true;

    // Check for correct and wrong guessed atoms and set ui cell color
    for (int x = 1; x <= 8; ++x) {
        for (int y = 1; y <= 8; ++y) {
            if (board[x][y].getAtomGuess() && board[x][y].getCellType() == Cell::ATOM) {
                setObjectColor(x, y, getEnumColor(SIGNAL_GREEN));
            } else if (board[x][y].getAtomGuess() && board[x][y].getCellType() != Cell::ATOM) {
                setObjectColor(x, y, getEnumColor(SIGNAL_RED));
            }
        }
    }
}

Q_INVOKABLE void BlackBoxBackend::emitRay(QObject *obj) {
    // Get x and y indices of clicked cell
    Cell cell = getCellCoordinates(obj);

    if (board[cell.getX()][cell.getY()].getColor() == QColor(MARENGO_GRAY)) {
        // Emit new ray
        Ray ray = Ray(cell);
        BlackBoxBackend::rays.emplace_back(ray);

        if (cell.getX() == 0) {

        } else if (cell.getX() == 9) {

        } else if (cell.getY() == 9) {

        } else if (cell.getY() == 0) {

        }
    } else {
        // Ray already emitted
        if (gameFinished) {
            // TODO Show ray
        }
    }
}

Q_INVOKABLE void BlackBoxBackend::setAtomGuess(QObject *obj) {
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
        // Remove atom guess in board
        board[cell.getX()][cell.getY()].setAtomGuess(false);

        // Set ui cell color
        setObjectColor(cell.getX(), cell.getY(), getEnumColor(DARK_VIOLET));
    } else if (currentAtoms < atomAmount) {
        // Save atom guess in board
        board[cell.getX()][cell.getY()].setAtomGuess(true);

        // Set ui cell color
        setObjectColor(cell.getX(), cell.getY(), getEnumColor(MIDNIGHT_VIOLET));
    }
}

void BlackBoxBackend::initBoard() {
    int boardSize = sizeof(board) / sizeof(board[0]);

    for (int row = 0; row < boardSize; ++row) {
        for (int col = 0; col < boardSize; ++col) {
            Cell cell;

            // Set cell coordinates
            cell.setX(col);
            cell.setY(row);

            // Set atom guess state
            cell.setAtomGuess(false);

            // Set cell type and color
            if ((row == 0 && col == 0) || (row == 0 && col == boardSize - 1) ||
                (row == boardSize - 1 && col == 0) || (row == boardSize - 1 && col == boardSize - 1)) {
                cell.setCellType(Cell::CORNER);
                cell.setColor(getEnumColor(MIDNIGHT_BLUE));
            } else if (row == 0 || row == boardSize - 1 || col == 0 || col == boardSize - 1) {
                cell.setCellType(Cell::EDGE);
                cell.setColor(getEnumColor(MARENGO_GRAY));
            } else {
                cell.setCellType(Cell::FIELD);
                cell.setColor(getEnumColor(DARK_VIOLET));
            }

            // Save cell in board
            board[row][col] = cell;

            // Set ui cell color
            setObjectColor(col, row, cell.getColor());
        }
    }
}

void BlackBoxBackend::nextRayStep(Ray ray, BlackBoxBackend::Direction direction) {
    Cell currentCell = ray.getRayCells().back();
    int x = currentCell.getX();
    int y = currentCell.getY();

    switch (direction) {
        case SOUTH:
            ray.addRayCell(board[x + 0][y + 1]);
            setObjectColor(x + 0, y + 1, ray.getRayColor());

            if (board[x + 0][y + 1].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                checkForRayReflection(ray);
            } else if (board[x + 0][y + 2].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
            } else if (board[x + 1][y + 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, WEST);
            } else if (board[x - 1][y + 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, EAST);
            } else {
                // Ray is not deflected by an atom
                nextRayStep(ray, SOUTH);
            }

        case WEST:
            ray.addRayCell(board[x - 1][y + 0]);
            setObjectColor(x - 1, y + 0, ray.getRayColor());

            if (board[x - 1][y + 0].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                checkForRayReflection(ray);
            } else if (board[x - 2][y + 0].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
            } else if (board[x - 2][y + 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, NORTH);
            } else if (board[x - 2][y - 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, SOUTH);
            } else {
                // Ray is not deflected by an atom
                nextRayStep(ray, WEST);
            }

        case NORTH:
            ray.addRayCell(board[x + 0][y - 1]);
            setObjectColor(x + 0, y - 1, ray.getRayColor());

            if (board[x + 0][y - 1].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                checkForRayReflection(ray);
            } else if (board[x + 0][y - 2].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
            } else if (board[x + 1][y - 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, WEST);
            } else if (board[x - 1][y - 2].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, EAST);
            } else {
                // Ray is not deflected by an atom
                nextRayStep(ray, NORTH);
            }

        case EAST:
            ray.addRayCell(board[x + 1][y + 0]);
            setObjectColor(x + 1, y + 0, ray.getRayColor());

            if (board[x + 1][y + 0].getCellType() == Cell::EDGE) {
                // Ray reaches an edge
                checkForRayReflection(ray);
            } else if (board[x + 2][y + 0].getCellType() == Cell::ATOM) {
                // Ray hits an atom
                rayHitsAtom(ray);
            } else if (board[x + 2][y + 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, NORTH);
            } else if (board[x + 2][y + 1].getCellType() == Cell::ATOM) {
                // Ray is deflected by an atom
                nextRayStep(ray, SOUTH);
            } else {
                // Ray is not deflected by an atom
                nextRayStep(ray, EAST);
            }
    }
}

void BlackBoxBackend::rayHitsAtom(Ray &ray) const {
    ray.setRayType(Ray::HIT);
    ray.setRayColor(MIDNIGHT_VIOLET);
}

void BlackBoxBackend::checkForRayReflection(Ray &ray) const {
    Cell firstCell = ray.getRayCells().front();
    Cell lastCell = ray.getRayCells().back();

    if ((firstCell.getX() == lastCell.getY()) && (firstCell.getX() == lastCell.getY())) {
        ray.setRayType(Ray::REFLECTION);
        ray.setRayColor(WHITE_VIOLET);
    }
}

void BlackBoxBackend::setAtoms() {
    // Get random number between 3 to 5
    random_device rd;
    mt19937 rand(rd());
    uniform_int_distribution<> dist(3, 5);

    atomAmount = dist(rand);
    int remainingAtoms = atomAmount;

    // Set ui atom amount label
    setObjectText("atomAmount", to_string(atomAmount));

    // Set atoms on board
    dist = uniform_int_distribution<> (1, 8);
    while (remainingAtoms > 0) {
        // Get random number between inside board
        int x = dist(rand);
        int y = dist(rand);

        if (board[x][y].getCellType() != Cell::ATOM) {
            board[x][y].setCellType(Cell::ATOM);
            remainingAtoms--;

            // For testing purpose
            setObjectColor(x, y, getEnumColor(SIGNAL_RED));
        }
    }
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
        case MARENGO_GRAY:      return QColor("#424551");
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
    emit setObjectColor(QString::fromStdString("c" + to_string(y) + to_string(x)), color);
}

void BlackBoxBackend::setObjectText(const string &objectId, const string &text) {
    emit setObjectText(QString::fromStdString(objectId), QString::fromStdString(text));
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


