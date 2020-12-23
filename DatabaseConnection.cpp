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
    db.setDatabaseName("/home/kirill/vladBagin/plan");
}

//    • по шифру кафедры подсчитать общее количество проводимых ею занятий;
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

//    • вывести список дисциплин для  заданной специальности;
QString DatabaseConnection::second(QString specialty)
{
    QSqlQuery query = db.exec("SELECT * FROM plan WHERE specialty = '" + specialty + "'");
    QString result;
    while (query.next()) {
        // я пока все в одну строку, ну наверное надо массив возращать или что то такое
        result += query.value(2).toString();
    }
    return result;
}

//    • найти план занятий по заданным специальности и дисциплине;
QString DatabaseConnection::third(QString specialty, QString subject)
{
    QSqlQuery query = db.exec("SELECT * FROM plan WHERE specialty = '" + specialty + "' AND subject = '" + subject + "'");
    QString result;
    while (query.next()) {
        result += query.value(7).toString() + "; ";
    }
    return result;
}

//• вывести список дисциплин, читаемых заданной кафедрой.
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





//    while (query.next()) {
//        result += query.value(4).toString() + "; ";
//    }
