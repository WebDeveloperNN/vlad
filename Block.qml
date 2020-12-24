import QtQuick 2.0

import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3




    Rectangle {
        property alias activeBlock: first.rotation
        id: first
        color: ma.containsMouse ? "lightgreen" : "lightgray";
        border.color: "black"
        width: Screen.width / 3
        height: Screen.height / 3
        property alias text: first_text.text
        rotation: 0
        property int test: 4

        Text {
            id: first_text
            text: qsTr(" Расчитать
количество
занятий")
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 24
//            color: ma.containsMouse ? "black" : "white";
            color: "black"
            anchors.centerIn: parent
        }

        MouseArea {
            id: ma
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true

            onClicked: {
                if (test == 0)
                    DB.setActiveBlock("first");
                if (test == 1)
                    DB.setActiveBlock("second");
                if (test == 2)
                    DB.setActiveBlock("third");
                if (test == 3)
                    DB.setActiveBlock("fourth");

                popup.open();

            }


        }




}





























