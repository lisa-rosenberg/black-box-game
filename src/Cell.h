#ifndef SOSE19_PADI02_CELL_H
#define SOSE19_PADI02_CELL_H

#include <QColor>

class Cell {

public:
    Cell();

    enum Type {
        CORNER,
        EDGE,
        FIELD,
        ATOM
    };

    void setX(int xValue);
    void setY(int yValue);
    void setColor(QColor colorValue);
    void setCellType(Type typeValue);
    void setAtomGuess(bool atomGuessValue);

    int getX();
    int getY();
    bool getAtomGuess();
    QColor getColor();
    Cell::Type getCellType();

private:
    int x = 0;
    int y = 0;
    bool atomGuess = false;
    QColor color;
    Type type;
};


#endif //SOSE19_PADI02_CELL_H
