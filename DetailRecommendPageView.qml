import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

//滚动视图
ScrollView{
    clip: true  //裁剪超出组件的元素，
    ColumnLayout {

        Text {
            text: qsTr("推荐内容")
            font.family: "微软雅黑"
            font.pointSize: 18
        }

        MusicBannerView{
            id:bannerView
            Layout.preferredWidth: window.width-200 //轮播图长度
            Layout.preferredHeight: (window.width-200)*0.3  //轮播图宽度
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

    Component.onCompleted: {
        getBannerList()
    }

    function getBannerList(){

        function onReply(reply){
            http.onReplySignal.disconnect(onReply)
            var banners = JSON.parse(reply).banners //获取网页的图片数据
            bannerView.bannerList = banners
        }

        http.onReplySignal.connect(onReply)
        http.connet("banner")
    }
}
