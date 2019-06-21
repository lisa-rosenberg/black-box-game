#include <QtCore/QStringRef>
#include <iostream>
#include <QtCore/QVariant>
#include <QtQml/QQmlProperty>

#include "BlackBoxModel.h"
#include "Cell.h"

Q_INVOKABLE void BlackBoxModel::newGame() {

}

Q_INVOKABLE void BlackBoxModel::enterGuess() {

}

Q_INVOKABLE void BlackBoxModel::emitRay(QObject *obj) {
    cellObj = obj;
    std::cout << qPrintable(cellObj->property("objectName").toString()) << std::endl;

    // Get x and y indices of clicked cell
    Cell cell = getCellCoordinates(obj);

    // Emit ray


}

Q_INVOKABLE void BlackBoxModel::setAtom(QObject *obj) {

}

void BlackBoxModel::initBoard() {
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
        }
    }

}

Cell BlackBoxModel::getCellCoordinates(QObject *obj) {
    QString objName = obj->property("objectName").toString();

    QStringRef xValue(&objName, 0, 1);
    QStringRef yValue(&objName, 1, 1);

    Cell cell;
    cell.setX(xValue.toInt());
    cell.setY(yValue.toInt());

    return cell;
}


