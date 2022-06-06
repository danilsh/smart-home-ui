import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: mainWindow
    visible: true
    visibility: "FullScreen"
    title: qsTr("smart-home-ui")
    color: "black"

    Rectangle {
        anchors.fill: parent
        anchors.margins: 10
        border.color: "royalblue"
        border.width: 2
        radius: 10
        color: "#101010"
        antialiasing: true

        Text {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 20
            anchors.topMargin: 20
            color: "white"
            text: "W: " + mainWindow.width + " H: " + mainWindow.height
        }
    }
}
