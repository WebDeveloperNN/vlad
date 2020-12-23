#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "database.h"
#include <QIcon>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);


// 1
//   #include "database.h"
//   qmlRegisterType<Database>("com.ics.demo", 1, 0, "Database");
//    Database { id: database }; Database.test()
// 2
    //#include "database.h"
    //#include <QQmlContext>
    //Database database;
    //engine.rootContext()->setContextProperty("Database", &database);
// Global var: Database. Database.test()

    QGuiApplication app(argc, argv);
    app.setWindowIcon(QIcon("/home/kirill/book/icon.png"));

    QQmlApplicationEngine engine;

    Database database;
    engine.rootContext()->setContextProperty("Database", &database);


    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);


    engine.load(url);

    return app.exec();
}
