#ifndef SOSE19_PADI02_BLACKBOXBACKEND_H
#define SOSE19_PADI02_BLACKBOXBACKEND_H

#include <QObject>
#include <QQmlContext>
#include <QApplication>
#include <QQmlApplicationEngine>

#include "Cell.h"
#include "Ray.h"

class BlackBoxBackend : public QObject {
    Q_OBJECT

public:
    BlackBoxBackend();

    QObject object;
    Cell board[10][10];
    static std::vector<std::vector<Ray>> rays;
    static std::vector<std::vector<QColor>> rayDeflectionColors;
    int atomAmount;

    enum Color {
        MIDNIGHT_BLUE,
        MARENGO_GRAY,
        DARK_VIOLET,
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
        LIME_YELLOW,
        ABYSSAL_BLACK,
        WHITE_VIOLET,
        MIDNIGHT_VIOLET,
        SIGNAL_RED,
        SIGNAL_GREEN,
        VIVID_ORANGE,
        VIVID_BLUE,
        BRIGHT_VIOLET,
        VIVID_VIOLET,
        VIVID_YELLOW
    };

    void setRayDeflectionColors();

private:
    bool gameFinished = false;

    enum Direction {
        SOUTH,
        WEST,
        NORTH,
        EAST
    };

    void initBoard();
    void nextRayStep(Ray ray, BlackBoxBackend::Direction direction);

    Cell getCellCoordinates(QObject *obj);
    QColor getEnumColor(Color color);

    void setAtoms();
    void setObjectColor(const int &x, const int &y, const QColor &color);
    void setObjectText(const std::string &objectId, const std::string &text);

public slots:
    Q_INVOKABLE void newGame();
    Q_INVOKABLE void emitRay(QObject *obj);
    Q_INVOKABLE void setAtomGuess(QObject *obj);
    Q_INVOKABLE void enterGuess();

signals:
    void setObjectText(const QString &objectId, const QString &text);
    void setObjectColor(const QString &objectId, const QColor &color);

    void checkForRayReflection(Ray &ray) const;

    void rayHitsAtom(Ray &ray) const;
};

#endif //SOSE19_PADI02_BLACKBOXBACKEND_H
