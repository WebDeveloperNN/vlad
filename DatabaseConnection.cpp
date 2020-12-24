#include "DatabaseConnection.h"

DatabaseConnection::DatabaseConnection()
{
    db_connect();
    isConnected = db.open();
}

// connect to db
void DatabaseConnection::db_connect()
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("/home/kirill/vladBagin/plan.sqlite");
}

int DatabaseConnection::first(QString department)
{
    QSqlQuery query = db.exec("SELECT * FROM plan WHERE department = '" + department + "'");
    int result = 0;
    while (query.next()) {
        result += query.value(4).toInt();
        result += query.value(5).toInt();
        result += query.value(6).toInt();
    }
    return result;
}

QString DatabaseConnection::second(QString specialty)
{
    QSqlQuery query = db.exec("SELECT * FROM plan WHERE specialty = '" + specialty + "'");
    QString result;
    while (query.next()) {
        // я пока все в одну строку, ну наверное надо массив возращать или что то такое
        result += query.value(2).toString() + "; ";
    }
    return result;
}

QString DatabaseConnection::third(QString specialty, QString subject)
{
    QSqlQuery query = db.exec("SELECT * FROM plan WHERE specialty = '" + specialty + "' AND subject = '" + subject + "'");
        QString result = query.value(7).toString();
    if (result == 0) return "Нет ничего";
    if (result == 1) return "Зачет";
    if (result == 2) return "Экзамен";
    return "Не правильно введенные данные";
}

QString DatabaseConnection::fourth(QString department)
{
    QSqlQuery query = db.exec("SELECT * FROM plan WHERE department = '" + department + "'");
    QString result;
    while (query.next()) {
        result += query.value(2).toString() + "; ";
    }
    return result;

}

void DatabaseConnection::setActiveBlock(QString activeBlock)
{
    this->activeBlock = activeBlock;
}

QString DatabaseConnection::getActiveBlock()
{
    return this->activeBlock;
}
