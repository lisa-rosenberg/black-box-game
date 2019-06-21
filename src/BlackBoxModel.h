#ifndef SOSE19_PADI02_BLACKBOXMODEL_H
#define SOSE19_PADI02_BLACKBOXMODEL_H

#include <QObject>

class BlackBoxModel : public QObject {
    Q_OBJECT

public:
    QObject* myObject;

public slots:
    Q_INVOKABLE void test(QObject* obj);

private:

};

#endif //SOSE19_PADI02_BLACKBOXMODEL_H
