.class public Lcom/android/systemui/multiwindow/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    .line 13
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.media.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.media.reader"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.flyme.flymebbs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.searchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.youku.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.qzone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.tieba"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.snda.wifilocating"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.ss.android.article.news"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.smile.gifmaker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.chaozh.iReaderFree"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.news"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sankuai.meituan"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.pplive.androidphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sohu.sohuvideo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.netease.newsreader.activity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tudou.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.android.qqdownloader"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.duowan.mobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.letv.android.client"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.youdao.dict"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tmall.wireless"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.qqlite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.qihoo.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.netease.cloudmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.browser.apps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaoenai.app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xfplay.play"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "cn.htjyb.reader"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.soft.blued"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.androidqqmail"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.qq.reader"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.cubic.autohome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.zhihu.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sankuai.meituan.takeoutnew"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.MobileTicket"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.wuba"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.appsearch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meitu.meipaimv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.eastmoney.android.fund"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mogujie"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.ijinshan.browser_fast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "sogou.mobile.explorer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sdu.didi.psnger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.funcity.taxi.passenger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.ubercab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.qiyi.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.UCMobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "cn.wps.moffice_eng"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "tv.danmaku.bili"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.instagram.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.store"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.ubercab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.spotify.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.skype.raider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.apps.translate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.estrongs.android.pop"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ru.mail.mailapp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.bbm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.twitter.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.ibg.joox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lenovo.anyshare.gps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.bsb.hike"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.UCMobile.intl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.qihoo.security"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.imo.android.imoim"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.flipkart.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.cleanmaster.mguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.uc.browser.en"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.truecaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.amazon.mShop.android.shopping"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.facebook.lite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.domobile.applock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.olacabs.customer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.opera.mini.native"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.snapdeal.main"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.surpax.ledflashlight.panel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "net.one97.paytm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.videolan.vlc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.myntra.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.apps.photos"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.olx.southasia"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.commsource.beautyplus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.saavn.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.cleartrip.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    sget-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
