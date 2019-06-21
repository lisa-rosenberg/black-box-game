#include <QtCore/QStringRef>
#include <iostream>
#include <QtCore/QVariant>
#include <QtQml/QQmlProperty>

#include "BlackBoxModel.h"

Q_INVOKABLE void BlackBoxModel::test(QObject* obj) {
    myObject = obj;
    std::cout << qPrintable(myObject->property("objectName").toString()) << std::endl;
}