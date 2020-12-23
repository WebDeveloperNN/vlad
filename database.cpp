#include "database.h"
#include <iostream>

Database::Database()
{
    // db хранит database connection
    db = QSqlDatabase::addDatabase(DB_DRIVER);
    // setDatabaseName(path to database). Probably it only with sqlite
    db.setDatabaseName(DB_NAME);
    // надо сдетаь чтобы при нажатии эта функция вызывалась а не в конструторе
    connectToDB();
}

bool Database::connectToDB()
{
    if (db.open()) {
        db_connection = true;
        return true;
    }
    else {
        db_connection = false;
        return false;
    }
    // тут наверное не обязательно вызывать переменную а вызвать сигнал, который скжает,
    // что все ок и вызовет следущие блоки
}

QString Database::messageBox()
{
    if (db_connection) {
        return "Вы успешно подключились к базе данных";
    } else {
        return "Соединение с базой данных провалилось";
    }
}

Q_INVOKABLE QString Database::test()
{
    return db.connectionName();
}


//        QSqlQuery q;
//        q.exec("SELECT * FROM users");
//        QString data = "";
//        while(q.next()) {
//           data += q.value(1).toString() + " ";
//        }
