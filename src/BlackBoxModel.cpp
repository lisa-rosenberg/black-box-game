#include <QtCore/QStringRef>
#include <iostream>

#include "BlackBoxModel.h"

void BlackBoxModel::test(int value) {
    std::cout << "Value is: " << value << std::endl;
}
