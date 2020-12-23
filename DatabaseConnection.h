#ifndef DATABASECONNECTION_H
#define DATABASECONNECTION_H
#include <QtSql>
#include <QString>
#include <QVariant>
#include <QObject>

class DatabaseConnection : public QObject
{
    Q_OBJECT


public:
    DatabaseConnection();
    void db_connect();
    Q_INVOKABLE int first(QString department);
    Q_INVOKABLE QString second(QString specialty);
    Q_INVOKABLE QString third(QString specialty, QString subject);
    Q_INVOKABLE QString fourth(QString department);
    Q_INVOKABLE void setActiveBlock(QString activeBlock);
    Q_INVOKABLE QString getActiveBlock();

private:
    bool isConnected;
    QSqlDatabase db;
    QString activeBlock;

};

#endif // DATABASECONNECTION_H
