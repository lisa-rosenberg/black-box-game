//
// Created by lisar on 19/06/12.
//

#ifndef SOSE19_PADI02_BLACKBOXMODEL_H
#define SOSE19_PADI02_BLACKBOXMODEL_H

#include <QPoint>
#include <QObject>
#include <QString>
#include <QAbstractItemModel>

class BlackBoxModel : public QAbstractItemModel {

    Q_OBJECT
    Q_ENUMS(Roles)

public:

    enum State {
        CellState
    };

    explicit BlackBoxModel(QObject *parent = nullptr);

    void emitRay(const QString &id);

private:
    QPoint static getCellCoordinates(const QString &id);

};



#endif //SOSE19_PADI02_BLACKBOXMODEL_H
