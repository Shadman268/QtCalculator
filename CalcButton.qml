import QtQuick 2.0

Rectangle {
    id: button;
    property alias text: text.text
    property alias textHeight: text.font.pixelSize;
    border.width: 2
    border.color: "white"
    implicitHeight: text.height
    implicitWidth: text.width
    signal clicked;
    Text {
        id: text
        color: "black"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.fill: parent
        font.family: "Helvetica"
    }

    MouseArea {
        id: mouse;
        anchors.fill: parent
        onClicked: button.clicked();
    }
}
