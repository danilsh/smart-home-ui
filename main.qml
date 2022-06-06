import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id: mainWindow
    visible: true
    visibility: "FullScreen"
    title: qsTr("smart-home-ui")
    color: "black"

    Rectangle {
        anchors.fill: parent
        anchors.margins: 5
        border.color: "royalblue"
        border.width: 1
        radius: 8
        color: "#101010"
        antialiasing: true

        ColumnLayout {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 7
            spacing: 5

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.preferredWidth: contentWidth
                Layout.preferredHeight: contentHeight
                color: "white"
                text: "W: " + mainWindow.width + " " + contentWidth + " H: " + mainWindow.height + " " + contentHeight
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.preferredWidth: 150
                Layout.preferredHeight: 80
                border.color: "seagreen"
                border.width: 1
                radius: 6
                color: "transparent"
                antialiasing: true
            }

            Rectangle {
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.preferredWidth: 150
                Layout.preferredHeight: 80
                border.color: "seagreen"
                border.width: 1
                radius: 6
                color: "transparent"
                antialiasing: true
            }
        }
    }
}
