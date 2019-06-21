#ifndef SOSE19_PADI02_BLACKBOXMODEL_H
#define SOSE19_PADI02_BLACKBOXMODEL_H

#include <QObject>
#include "Cell.h"

class BlackBoxModel : public QObject {
    Q_OBJECT

public:
    QObject* cellObj;

public slots:
    Q_INVOKABLE void newGame();
    Q_INVOKABLE void emitRay(QObject *obj);
    Q_INVOKABLE void setAtom(QObject *obj);
    Q_INVOKABLE void enterGuess();

private:
    Cell getCellCoordinates(QObject *obj);
};

#endif //SOSE19_PADI02_BLACKBOXMODEL_H
