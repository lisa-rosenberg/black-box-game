#include <utility>

#include <utility>
#include <random>
#include <iostream>

#include "Ray.h"
#include "BlackBoxBackend.h"

using namespace std;

Ray::Ray(Cell cell) {
    this->rayCells.emplace_back(cell);
    this->color = getNewColor();
    this->type = DEFLECTION;
    this->visible = false;
}

// ### SETTER ### //

void Ray::addRayCell(Cell cell) {
    this->rayCells.emplace_back(cell);
}

void Ray::setRayColor(QColor colorValue) {
    this->color = move(colorValue);
}

void Ray::setRayType(Ray::Type rayType) {
    this->type = rayType;
}

void Ray::setRayVisibility(bool visibleValue) {
    this->visible = visibleValue;
}

// ### GETTER ### //

vector<Cell> Ray::getRayCells() {
    return this->rayCells;
}

QColor Ray::getRayColor() {
    return this->color;
}

Ray::Type Ray::getRayType() {
    return this->type;
}

bool Ray::getRayVisibility() {
    return this->visible;
}

QColor Ray::getNewColor() {
    // Get random index number of rayDeflectionColors
    random_device rd;
    mt19937 rand(rd());
    uniform_int_distribution<> dist(0, BlackBoxBackend::rayDeflectionColors.size() - 1);

    // Check if color is already used by another ray
    QColor newColor = nullptr;

    while (newColor == nullptr) {
        int randomIndex = dist(rand);
        QColor randomColor = BlackBoxBackend::rayDeflectionColors.at(randomIndex);
        bool colorAlreadyUsed = false;

        for (auto currentRay : BlackBoxBackend::rays) {
            if (randomColor == currentRay.getRayColor()) {
                colorAlreadyUsed = true;
            }
        }

        if (!colorAlreadyUsed) {
            newColor = randomColor;
        }
    }

    return newColor;
}