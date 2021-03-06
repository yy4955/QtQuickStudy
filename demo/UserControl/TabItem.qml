import QtQuick 2.9
import QtQuick.Controls 2.2

TabItemForm {

    property string buttonNormalImage: "";
    property string buttonPressImage: "";
    property string buttonHoverImage: "";
    property string buttonDisableImage: "";

    property bool active: false
    signal clicked()

    source : buttonNormalImage;

    onActiveChanged: {
        source = active? buttonPressImage : buttonNormalImage
    }

    mouseArea.onEntered: {

        if(!active){
            source = buttonHoverImage;
        }
        else{
            source = buttonPressImage;
        }
    }

    mouseArea.onExited: {
        if(!active){
        source = buttonNormalImage;
        }
        else{
            source = buttonPressImage;
        }
    }

    mouseArea.onClicked: {
        active = true
        clicked()
    }

}
