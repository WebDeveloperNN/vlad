#ifndef DATABASE_H
#define DATABASE_H

#include <QtSql>
#include <QObject>
#include <QString>

// имя базы данных
#define DB_NAME     "/home/kirill/book/database"
// Driver
#define DB_DRIVER "QSQLITE"
// имя таблицы
#define DB_TABLE    "gai"


//// имя колонок в таблице
//#define DB_TABLE_BRAND "name"
////#define DB_TABLE_SNAME "tel"
//#define DB_TABLE_PHONE "tel"


class Database : public QObject
{
    Q_OBJECT
//    Q_PROPERTY(QString testVar)

public:
    Database();
    Q_INVOKABLE QString test();


public slots:
    bool connectToDB();
    QString messageBox();

private:
    QSqlDatabase db;
    bool db_connection;
};

#endif // DATABASE_H











