//
// Created by lisar on 19/06/21.
//

#ifndef SOSE19_PADI02_CELL_H
#define SOSE19_PADI02_CELL_H

#include <QColor>

class Cell {

public:
    enum Type {
        CORNER,
        EDGE,
        FIELD,
        ATOM
    };

    Cell();

    void setX(int x);
    void setY(int y);
    void setColor(int r, int g, int b);
    void setCellType(Type type);

private:
    int x = 0;
    int y = 0;

    QColor color;
    Type type;
};


#endif //SOSE19_PADI02_CELL_H
