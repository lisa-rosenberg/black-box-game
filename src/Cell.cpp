#include <utility>

#include <utility>

#include "Cell.h"

Cell::Cell() {
    this->x = 0;
    this->y = 0;
    this->type = FIELD;
    this->atomGuess = false;
}

// ### SETTER ### //

void Cell::setX(int xValue) {
    this->x = xValue;
}

void Cell::setY(int yValue) {
    this->y = yValue;
}

void Cell::setColor(QColor colorValue) {
    this->color = std::move(colorValue);
}

void Cell::setCellType(Cell::Type typeValue) {
    this->type = typeValue;
}

void Cell::setAtomGuess(bool atomGuessValue) {
    this->atomGuess = atomGuessValue;
}

// ### GETTER ### //

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

bool Cell::getAtomGuess() {
    return this->atomGuess;
}