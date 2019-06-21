#include "Cell.h"

Cell::Cell() {
    this->x = 0;
    this->y = 0;
    this->color = QColor(0, 0, 0);
    this->type = FIELD;
}

void Cell::setX(int xValue) {
    this->x = xValue;
}

void Cell::setY(int yValue) {
    this->y = yValue;
}

void Cell::setColor(int r, int g, int b) {
    this->color = QColor(r, g, b);
}

void Cell::setCellType(Cell::Type cellType) {
    this->type = cellType;
}

int Cell::getX() {
    return this->x;
}

int Cell::getY() {
    return this->y;
}

QColor Cell::getColor() {
    return this->color;
}

Cell::Type Cell::getCellType() {
    return this->type;
}
