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

    QObject object;
    Cell board[10][10];
    int atomAmount;

private:

    enum Color {
        MIDNIGHT_BLUE,
        MARENGO_GRAY,
        BRIGHT_VIOLET,
        BRIGHT_GREEN,
        BRIGHT_MAGENTA,
        LIME_GREEN,
        BRIGHT_YELLOW,
        LIME_CYAN,
        BRIGHT_ORANGE,
        BRIGHT_BLUE,
        BRIGHT_PINK,
        BRIGHT_CYAN,
        VIVID_RED,
        VIVID_YELLOW,
        ABYSS_BLACK,
        WHITE_VIOLET,
        MIDNIGHT_VIOLET,
        SIGNAL_RED
    };

    void initBoard();
    void setAtoms();

    Cell getCellCoordinates(QObject *obj);
    QColor getEnumColor(BlackBoxBackend::Color color);

public slots:
    Q_INVOKABLE void newGame();
    Q_INVOKABLE void emitRay(QObject *obj);
    Q_INVOKABLE void setAtomGuess(QObject *obj);
    Q_INVOKABLE void enterGuess();

signals:
    void setObjectText(const QString &objectId, const QString &text);
    void setObjectColor(const QString &objectId, const QColor &color);
};

#endif //SOSE19_PADI02_BLACKBOXBACKEND_H