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
    //Cell cell = getCellCoordinates(obj);

    // Emit ray


}

Q_INVOKABLE void BlackBoxModel::setAtom(QObject *obj) {

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


