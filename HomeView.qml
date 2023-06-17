import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQml

//左边框
Frame{

    property var qmlList: [
            {icon:"recommend-white",value:"推荐内容",qml:"DetailRecommendPageView"},
            {icon:"cloud-white",value:"搜索音乐",qml:"DetailSearchPageView"},
            {icon:"local-white",value:"本地音乐",qml:"DetailLocalPageView"},
            {icon:"history-white",value:"播放历史",qml:"DetailHistoryPageView"},
            {icon:"favorite-big-white",value:"我喜欢的",qml:"DetailFavoritePageView"},
            {icon:"favorite-big-white",value:"专辑歌单",qml:"DetailPlayListPageView"}
        ]


    Layout.preferredWidth: 200
    Layout.fillHeight: true
    background: Rectangle{
        color: "lightgrey"
    }
    padding: 0

    ListView{
        id:menuView
        model: ListModel{
            id:menuViewModel
        }
        delegate: menuViewDelegate
    }

    Component{
        id:menuViewDelegate
        Rectangle{
            id:menuViewDelegateItem
            height: 50
            width: 200
            RowLayout{

            }
        }
    }
}
