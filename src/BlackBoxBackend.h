#ifndef SOSE19_PADI02_BLACKBOXBACKEND_H
#define SOSE19_PADI02_BLACKBOXBACKEND_H

#include <QObject>
#include <QQmlContext>
#include <QApplication>
#include <QQmlApplicationEngine>

#include "Cell.h"
#include "Ray.h"

using namespace std;

class BlackBoxBackend : public QObject {
    Q_OBJECT

public:
    BlackBoxBackend();

    Cell board[10][10];
    static vector<Ray> rays;
    static vector<QColor> rayDeflectionColors;
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
    const int MAX_SCORE = 32;
    const string C = "c";
    const string A = "a";
    const string SCORE_AMOUNT = "scoreAmount";
    const string ATOM_AMOUNT = "atomAmount";

    bool gameFinished = false;
    int score;

    enum Direction {
        SOUTH,
        WEST,
        NORTH,
        EAST
    };

    static Cell getCellCoordinates(QObject *obj);
    static QColor getEnumColor(Color color);

    void setRandomAtoms();
    void setObjectColor(const int &x, const int &y, const QColor &color);
    void setObjectText(const std::string &objectId, const int &number);
    void setObjectVisibility(const int &x, const int &y, const bool &visible);

    void initBoard();
    static void resetModel();
    void resetScore();

    void decreaseScore(Ray::Type rayType);
    void nextRayStep(Ray ray, BlackBoxBackend::Direction direction);
    static void checkForRayReflection(Ray &currentRay);
    static void rayHitsAtom(Ray &currentRay);
    static void updateRay(Ray &currentRay);
    void colorRay(Ray &currentRay);

public slots:
    Q_INVOKABLE void newGame();
    Q_INVOKABLE void emitRay(QObject *obj);
    Q_INVOKABLE void setAtomGuess(QObject *obj);
    Q_INVOKABLE void enterGuess();

signals:
    void setObjectText(const QString &objectId, const QString &text);
    void setObjectColor(const QString &objectId, const QColor &color);
    void setObjectVisibility(const QString &objectId, const bool &visible);
};

#endif //SOSE19_PADI02_BLACKBOXBACKEND_H
