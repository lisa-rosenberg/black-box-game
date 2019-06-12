//
// Created by lisar on 19/06/12.
//

#include <QtCore/QStringRef>
#include <iostream>

#include "BlackBoxModel.h"

void BlackBoxModel::emitRay(const QString &id) {

    // Get cell coordinates
    QPoint cell = getCellCoordinates(id);
    std::cout << cell.x() << cell.y() << std::endl;

    // Emit ray

}

QPoint BlackBoxModel::getCellCoordinates(const QString &id) {

    // Extract x and y values from cell id
    QStringRef x(&id, 1, 1);
    QStringRef y(&id, 2, 1);

    // Return cell coordinates
    return QPoint(x.toInt(), y.toInt());
}


