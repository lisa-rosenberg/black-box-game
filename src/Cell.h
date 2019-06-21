//
// Created by lisar on 19/06/21.
//

#ifndef SOSE19_PADI02_CELL_H
#define SOSE19_PADI02_CELL_H

class Cell {

private:
    int x = 0;
    int y = 0;

    const static int color[];

public:
    Cell();

    void setX(int x);
    void setY(int y);

    void setColor(int r, int g, int b);
};


#endif //SOSE19_PADI02_CELL_H
