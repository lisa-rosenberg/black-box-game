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
    void setColor(int r, int g, int b);
    void setCellType(Type cellType);

    int getX();
    int getY();

    QColor getColor();
    Cell::Type getCellType();

private:
    int x = 0;
    int y = 0;

    QColor color;
    Type type;
};


#endif //SOSE19_PADI02_CELL_H
