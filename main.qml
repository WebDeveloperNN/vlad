import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Window {
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Vlad Bagin")

    // items

Grid {
    columns: 2
    anchors.centerIn: parent
    spacing: 100

//    ListModel {}

    Repeater {
        model: ["Расчитать
количество
занятий", "Узнать экзамен
или зачет", "Список
дисциплин
(по специальности)", "Вывести
список
дисциплин
(по кафедре)"]
        Block {
            text: modelData
            test: index
        }
    }



}

PopupWindow{
    id: popup
}
}

//шифр специальности, (specialty)
//наименование дисциплины (subject)
//шифр кафедры [БукваЦифраЦифра] (department),
//количество лекций (lecture),
//количество практик, (practice)
//количество лабораторных, (laboratory)
//признак: 2 – экзамен, 1 – зачет, 0 – нет ничего. ()

//    • по шифру кафедры подсчитать общее количество проводимых ею занятий;
//    • вывести список дисциплин для  заданной специальности;
//    • найти план занятий по заданным специальности и дисциплине;
//    • вывести список дисциплин, читаемых заданной кафедрой.





