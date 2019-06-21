//
// Created by lisar on 19/06/21.
//

#include "Cell.h"

Cell::Cell() {

}

void Cell::setX(int x) {
    this->x = x;
}

void Cell::setY(int y) {
    this->y = y;
}

void Cell::setColor(int r, int g, int b) {
    this->color = QColor(r, g, b);
}
