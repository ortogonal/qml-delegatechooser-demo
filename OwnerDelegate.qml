import QtQuick 2.0

Rectangle {
    anchors.left: parent.left
    anchors.right: parent.right
    height: 80

    Rectangle {
        anchors.verticalCenter: parent.verticalCenter

        anchors.left: parent.left
        anchors.leftMargin: 20

        height: 60
        width: height

        clip: true
        radius: height / 2

        Image {
            id: avatarImage
            anchors.fill: parent

            source: model.avatar
            fillMode: Image.PreserveAspectCrop

        }
    }

    Text {
        id: nameText
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 100

        text: model.name
        font.pixelSize: 30

        color: "black"
    }

    Text {
        anchors.top: nameText.bottom
        anchors.topMargin: -2
        anchors.left: parent.left
        anchors.leftMargin: 100

        text: info
        font.pixelSize: 18

        color: "black"
    }

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height: 1
        color: "#aaaaaa"
    }
}
