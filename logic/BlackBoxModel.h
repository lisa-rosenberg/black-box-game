//
// Created by lisar on 19/06/12.
//

#ifndef SOSE19_PADI02_BLACKBOXMODEL_H
#define SOSE19_PADI02_BLACKBOXMODEL_H

#include <QPoint>

class BlackBoxModel {

public:
    void emitRay(const QString &id);

private:
    QPoint static getCellCoordinates(const QString &id);

};



#endif //SOSE19_PADI02_BLACKBOXMODEL_H
