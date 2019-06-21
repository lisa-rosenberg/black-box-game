#ifndef SOSE19_PADI02_BLACKBOXBACKEND_H
#define SOSE19_PADI02_BLACKBOXBACKEND_H

#include <QObject>
#include <QQmlContext>
#include <QApplication>
#include <QQmlApplicationEngine>

#include "Cell.h"

class BlackBoxBackend : public QObject {
    Q_OBJECT

public:
    BlackBoxBackend();
    ~BlackBoxBackend();

    QObject* cellObj;
    Cell board[10][10];

public slots:
    Q_INVOKABLE void newGame();
    Q_INVOKABLE void emitRay(QObject *obj);
    Q_INVOKABLE void setAtomGuess(QObject *obj);
    Q_INVOKABLE void enterGuess();

signals:
    void setObjectText(QString objectName, QString text);
    void setObjectColor(QString objectName, QColor color);

private:
    void initBoard();
    void setAtoms();

    Cell getCellCoordinates(QObject *obj);
    //QObject *getQObjectById(const QString &id);
};

#endif //SOSE19_PADI02_BLACKBOXBACKEND_H
