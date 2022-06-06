import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 800
    height: 480
    maximumWidth: 800
    maximumHeight: 480
    minimumWidth: 800
    minimumHeight: 480
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
    }
}
