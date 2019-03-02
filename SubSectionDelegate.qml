import QtQuick 2.0

SettingDelegate {
    text: name
    rectColor: iconColor

    Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20

        font.pixelSize: 22
        color: "#aaaaaa"
        text: ">"

    }
}
