import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {

    property int w_width: 1300
    property int w_height: 800

    id:window
    width: w_width
    height: w_height
    visible: true
    title: qsTr("音乐播放器")


    ColumnLayout{
        anchors.fill: parent
        TopView{
            id:topView
        }

        HomeView{
            id:homeView
            Layout.fillHeight: true

        }

        BottomView{
            id:bottomView

        }

    }
}
