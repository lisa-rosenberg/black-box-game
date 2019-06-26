#include <QtCore/QStringRef>
#include <iostream>
#include <QtCore/QVariant>
#include <QtQml/QQmlProperty>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlComponent>
#include <random>
#include <QQuickItem>
#include <QQuickView>
#include <QApplication>

#include "BlackBoxBackend.h"
#include "Cell.h"

BlackBoxBackend::BlackBoxBackend() {

}

Q_INVOKABLE void BlackBoxBackend::newGame() {
    initBoard();
    setAtoms();
}

Q_INVOKABLE void BlackBoxBackend::enterGuess() {
    gameFinished = true;

    // Check for correct and wrong guessed atoms and set ui cell color
    for (int x = 1; x <= 8; ++x) {
        for (int y = 1; y <= 8; ++y) {
            if (board[x][y].getAtomGuess() && board[x][y].getCellType() == Cell::ATOM) {
                emit setObjectColor(QString::fromStdString("c" + std::to_string(y) + std::to_string(x)), getEnumColor(SIGNAL_GREEN));
            } else if (board[x][y].getAtomGuess() && board[x][y].getCellType() != Cell::ATOM) {
                emit setObjectColor(QString::fromStdString("c" + std::to_string(y) + std::to_string(x)), getEnumColor(SIGNAL_RED));
            }
        }
    }
}

Q_INVOKABLE void BlackBoxBackend::emitRay(QObject *obj) {
    // Get x and y indices of clicked cell
    Cell cell = getCellCoordinates(obj);

    // Emit ray
    std::cout << qPrintable(obj->property("objectName").toString()) << std::endl;
    std::cout << cell.getX() << cell.getY() << std::endl;
}

Q_INVOKABLE void BlackBoxBackend::setAtomGuess(QObject *obj) {
    Cell cell = getCellCoordinates(obj);

    // Get current atom amount
    int currentAtoms = 0;
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
        emit setObjectColor(QString::fromStdString("c" + std::to_string(cell.getY()) + std::to_string(cell.getX())), getEnumColor(BRIGHT_VIOLET));
    } else if (currentAtoms < atomAmount) {
        // Save atom guess in board
        board[cell.getX()][cell.getY()].setAtomGuess(true);

        // Set ui cell color
        emit setObjectColor(QString::fromStdString("c" + std::to_string(cell.getY()) + std::to_string(cell.getX())), getEnumColor(MIDNIGHT_VIOLET));
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
                cell.setColor(getEnumColor(BRIGHT_VIOLET));
            }

            // Save cell in board
            board[row][col] = cell;

            // Set ui cell color
            emit setObjectColor(QString::fromStdString("c" + std::to_string(row) + std::to_string(col)), cell.getColor());
        }
    }

}

void BlackBoxBackend::setAtoms() {
    // Get random number between 3 to 5
    std::random_device rd;
    std::mt19937 rand(rd());
    std::uniform_int_distribution<> dist(3, 5);
    atomAmount = dist(rand);
    int remainingAtoms = atomAmount;

    // Set ui atom amount label
    emit setObjectText(QString::fromStdString("atomAmount"), QString::fromStdString(std::to_string(atomAmount)));

    // Set atoms on board
    dist = std::uniform_int_distribution<> (1, 8);
    while (remainingAtoms > 0) {
        // Get random number between inside board
        int x = dist(rand);
        int y = dist(rand);

        if (board[x][y].getCellType() != Cell::ATOM) {
            board[x][y].setCellType(Cell::ATOM);
            remainingAtoms--;

            // For testing purpose
            emit setObjectColor(QString::fromStdString("c" + std::to_string(y) + std::to_string(x)), getEnumColor(SIGNAL_RED));
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
        case BRIGHT_VIOLET:     return QColor("#8b28fc");
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
        case VIVID_YELLOW:      return QColor("#e1ff28");
        case ABYSS_BLACK:       return QColor("#000000");
        case WHITE_VIOLET:      return QColor("#f7f0ff");
        case MIDNIGHT_VIOLET:   return QColor("#1a0b32");
        case SIGNAL_RED:        return QColor("#ff0d31");
        case SIGNAL_GREEN:      return QColor("#00ff10");
    }
}


