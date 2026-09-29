import QtQuick

Rectangle {
    color: Colors.background
    implicitWidth: child.implicitWidth
    radius: 30
    MouseArea {
        width: parent.implicitWidth
        height: parent.implicitHeight

        onClicked: {
            popup_menu.open("WindowPopup.qml", parent.x + parent.implicitWidth / 2);
        }
    }
    Text {
        id: child
        text: niri.focusedWindow?.title ?? "Desktop"
        anchors.verticalCenter: parent.verticalCenter
        topPadding: 2
        leftPadding: 10
        rightPadding: 10
        font.pixelSize: 16
        color: Colors.foreground
    }
}
