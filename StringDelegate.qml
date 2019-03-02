import QtQuick 2.0

SettingDelegate {
    text: name
    rectColor: iconColor

    Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        width: 400

        horizontalAlignment: Text.AlignRight

        text: valueString
    }
}
