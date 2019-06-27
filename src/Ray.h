#ifndef SOSE19_PADI02_RAY_H
#define SOSE19_PADI02_RAY_H


#include "Cell.h"
#include <vector>

class Ray {

public:
    explicit Ray(Cell cell);

    enum Type {
        HIT,
        REFLECTION,
        DEFLECTION
    };

    void addRayCell(Cell cell);
    void setRayColor(QColor colorValue);
    void setRayType(Type rayType);
    void setRayVisibility(bool visibleValue);
    void setValidRayColors();

    std::vector<std::vector<Cell>> getRayCells();
    QColor getRayColor();
    Type getRayType();
    bool getRayVisibility();

private:
    std::vector<std::vector<Cell>> rayCells;
    QColor color;
    Type type;
    bool visible;

    QColor getNewColor();
};


#endif //SOSE19_PADI02_RAY_H
