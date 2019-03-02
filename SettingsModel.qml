import QtQuick 2.0

ListModel {
    ListElement { type: "empty"; }
    ListElement { type: "owner"; name: "Erik Larsson"; info: "Just a happy Qt hacker"; avatar: "avatar.jpg" }
    ListElement { type: "empty"}
    ListElement { type: "bool"; iconColor: "#00BCD4"; name: "Airplane mode"; valueBool: false }
    ListElement { type: "bool"; iconColor: "#009688"; name: "WiFi"; valueBool: true }
    ListElement { type: "bool"; iconColor: "#4CAF50"; name: "Bluetooth"; valueBool: true }
    ListElement { type: "empty"}
    ListElement { type: "string"; iconColor: "#8BC34A"; name: "IP"; valueString: "192.168.0.10" }
    ListElement { type: "string"; iconColor: "#CDDC39"; name: "Netmask"; valueString: "255.255.255.0" }
    ListElement { type: "empty"}
    ListElement { type: "subsec"; iconColor: "#FFEB3B"; name: "Display settings"; }
    ListElement { type: "subsec"; iconColor: "#FFC107"; name: "Privacy settings"; }
}
