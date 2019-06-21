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

}

Q_INVOKABLE void BlackBoxBackend::emitRay(QObject *obj) {
    std::cout << qPrintable(obj->property("objectName").toString()) << std::endl;

    // Get x and y indices of clicked cell
    //Cell cell = getCellCoordinates(obj);

    // Emit ray


}

Q_INVOKABLE void BlackBoxBackend::setAtomGuess(QObject *obj) {

}

void BlackBoxBackend::initBoard() {
    int boardSize = sizeof(board) / sizeof(board[0]);

    for (int row = 0; row < boardSize; ++row) {
        for (int col = 0; col < boardSize; ++col) {
            Cell cell;

            // Set cell coordinates
            cell.setX(col);
            cell.setY(row);

            // Set cell type and color
            if ((row == 0 && col == 0) || (row == 0 && col == boardSize - 1) ||
                (row == boardSize - 1 && col == 0) || (row == boardSize - 1 && col == boardSize - 1)) {
                cell.setCellType(Cell::CORNER);
                cell.setColor(4, 6, 17);
            } else if (row == 0 || row == boardSize - 1 || col == 0 || col == boardSize - 1) {
                cell.setCellType(Cell::EDGE);
                cell.setColor(26, 27, 32);
            } else {
                cell.setCellType(Cell::FIELD);
                cell.setColor(55, 16, 99);
            }

            // Set ui cell color
            emit setObjectColor(QString::fromStdString("c" + std::to_string(row) + std::to_string(col)), cell.getColor());
//            QObject *currentCell = getQObjectById(QString::fromStdString(std::to_string(row) + std::to_string(col)));
//            currentCell->setProperty("color", cell.getColor());
        }
    }

}

void BlackBoxBackend::setAtoms() {
    // Get random number between 3 to 5
    std::random_device rd;
    std::mt19937 rand(rd());
    std::uniform_int_distribution<> dist(3, 5);
    int atomAmount = dist(rand);

    // Set ui atom amount label
    emit setObjectText(QString::fromStdString("atomAmount"), QString::fromStdString(std::to_string(atomAmount)));
//    auto *atomLabel = getQObjectById("atomAmount");
//    atomLabel->setProperty("text", QString::fromStdString(std::to_string(atomAmount)));

    // Set atoms on board
    dist = std::uniform_int_distribution<> (1, 9);
    while (atomAmount > 0) {
        // Get random number between inside board
        int x = dist(rand);
        int y = dist(rand);

        if (board[x][y].getCellType() != Cell::ATOM) {
            board[x][y].setCellType(Cell::ATOM);
            atomAmount--;

            // For testing purpose
            emit setObjectColor(QString::fromStdString("c" + std::to_string(y) + std::to_string(x)), QColor(20, 20, 20));
//            auto *currentCell = getQObjectById(QString::fromStdString(std::to_string(y) + std::to_string(x)));
//            currentCell->setProperty("color", QColor(20, 20, 20));
        }
    }
}

//QObject* BlackBoxBackend::getQObjectById(const QString &id) {
//    std::cout << qPrintable(id) << std::endl;
//
//    return cellObj->findChild<QObject*>(id);
//}

Cell BlackBoxBackend::getCellCoordinates(QObject *obj) {
    QString objName = obj->property("objectName").toString();

    QStringRef xValue(&objName, 0, 1);
    QStringRef yValue(&objName, 1, 1);

    Cell cell;
    cell.setX(xValue.toInt());
    cell.setY(yValue.toInt());

    return cell;
}


