import QtQuick 2.0
import QtQuick.Controls 2.12

SettingDelegate {
    text: name
    rectColor: iconColor

    Switch {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8

        checked: valueBool
    }
}
