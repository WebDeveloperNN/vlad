import QtQuick 2.0


    Rectangle {
        width: 15
        height: 15
        color: "transparent"

        MouseArea {
            id: mousearea
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onPressed: {
                // close
            }
        }

        Rectangle {
            id: first
            anchors.centerIn: parent
            width: 15
            height: 3
            color: mousearea.containsMouse ? "red" : "black"
            rotation: 45
        }
        Rectangle {
            id: second
            anchors.centerIn: parent
            width: 15
            height: 3
            color: mousearea.containsMouse ? "red" : "black"
            rotation: -45
        }
    }





