#include <utility>

#include <utility>
#include <random>

#include "Ray.h"
#include "BlackBoxBackend.h"

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
    this->color = std::move(colorValue);
}

void Ray::setRayType(Ray::Type rayType) {
    this->type = rayType;
}

void Ray::setRayVisibility(bool visibleValue) {
    this->visible = visibleValue;
}

// ### GETTER ### //

std::vector<std::vector<Cell>> Ray::getRayCells() {
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
    std::random_device rd;
    std::mt19937 rand(rd());
    std::uniform_int_distribution<> dist(0, BlackBoxBackend::rayDeflectionColors.size());

    // Check if color is already used by another ray
    QColor newColor = nullptr;

    while (newColor == nullptr) {
        int randomIndex = dist(rand);
        QColor randomColor = reinterpret_cast<QColor &&>(BlackBoxBackend::rayDeflectionColors.at(randomIndex));
        bool colorAlreadyUsed = false;

        for (int i = 0; i < BlackBoxBackend::rays.size(); ++i) {
            Cell currentCell = reinterpret_cast<Cell &&>(BlackBoxBackend::rays.at(i));
            if (randomColor == currentCell.getColor()) {
                colorAlreadyUsed = true;
            }
        }

        if (!colorAlreadyUsed) {
            newColor = randomColor;
        }
    }
}
