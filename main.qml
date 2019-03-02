import QtQuick 2.12
import QtQuick.Window 2.12

import Qt.labs.qmlmodels 1.0

import QtQuick.Controls.Material 2.12

Window {
    visible: true
    width: 460
    height: 600
    title: qsTr("Hello World")

    color: "#dddddd"

    Material.theme: Material.Light
    Material.accent: Material.Green

    DelegateChooser {
        id: delegateChooser
        role: "type"

        DelegateChoice {
            roleValue: "empty"
            EmptyDelegate {}
        }
        DelegateChoice {
            roleValue: "bool"
            BoolDelegate {}
        }
        DelegateChoice {
            roleValue: "string"
            StringDelegate {}
        }
        DelegateChoice {
            roleValue: "subsec"
            SubSectionDelegate {}
        }
        DelegateChoice {
            roleValue: "owner"
            OwnerDelegate {}
        }
    }

    ListView {
        anchors.fill: parent

        header: heading
        delegate: delegateChooser
        model: SettingsModel {}
    }

    Component {
        id: heading
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 60

            Text {
                anchors.fill: parent
                anchors.leftMargin: 20
                height: 70
                text: "Settings"
                font.bold: true
                font.pixelSize: 32

                verticalAlignment: Text.AlignBottom
            }
            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                height: 1
                color: "#aaaaaa"
            }
        }
    }
}
