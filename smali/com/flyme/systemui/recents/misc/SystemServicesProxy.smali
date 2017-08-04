.class public Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;,
        Lcom/flyme/systemui/recents/misc/SystemServicesProxy$1;
    }
.end annotation


# static fields
.field static final sBgThread:Landroid/os/HandlerThread;

.field static final sBgThreadHandler:Landroid/os/Handler;

.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field static sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sNotkillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sOriginScale:F

.field static sResetAnimationScaleRunnable:Ljava/lang/Runnable;

.field static sSharedPreferences:Landroid/content/SharedPreferences;

.field static sSysWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field static sWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field conn:Landroid/content/ServiceConnection;

.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAwm:Landroid/appwidget/AppWidgetManager;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field mCalculateReleaseMem:J

.field mDefaultInputPkg:Ljava/lang/String;

.field mDefaultLauncherPkg:Ljava/lang/String;

.field mDefaultLiveWallpaperPkg:Ljava/lang/String;

.field mDemoSpecialPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field mPkgMemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mPkgProcessInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field mRecordCalculateReleaseMem:J

.field mSm:Landroid/app/SearchManager;

.field mSystemUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile mWhiteListLoaded:Z

.field mWm:Landroid/view/WindowManager;

.field sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Ljava/lang/Runnable;[IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "afterRemoveTask"    # Ljava/lang/Runnable;
    .param p3, "targetID"    # [I
    .param p4, "isDemo"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killAllTasks(Landroid/content/Context;Ljava/lang/Runnable;[IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDemo"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->prepareKillProcess(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskEx(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Recents-SystemServicesProxy"

    .line 122
    const/16 v2, 0xa

    .line 121
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThread:Landroid/os/HandlerThread;

    .line 123
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 126
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 127
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    .line 501
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.share"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.media.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteList:Ljava/util/HashSet;

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBlackList:Ljava/util/ArrayList;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    .line 586
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.process.acore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.process.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.defcontainer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.usagestats"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.drm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.development"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.telephony"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.simmelock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.onetimeinitializer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.downloads"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.vpndialogs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.provision"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.certinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.wallpapercropper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.location.fused"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.backupconfirm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.proxyhandler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.inputdevices"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.userdictionary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.pacprocessor"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.printspooler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.externalstorage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.applications"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.dreams.basic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.speechrecorder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.smspush"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.shell"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.atci.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.voiceextension"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.lbs.em2.ui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.connectivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.batterywarning"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.thermalmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mtk.telephony"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.DataUsageLockScreenClient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.CellConnService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.omacp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.apst.target"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.mtkthermalstress"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.ppl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.engineermode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.ygps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security.meizu"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.blockservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.nxp.walletservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.mzsnssyncservice.prebuild"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.mzsyncservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.experiencedatasync"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.map.location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.input_mz"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.mzsimcontacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.flyme.android.theme.LRA_Strong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.flyme.android.theme.LRA_Soft"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.smsreg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.powersave"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.providers.drm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.calendarimporter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.alarmclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mediatek.nlpservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.mzo2oservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.phasebeam"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.noisefield"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.musicvis"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.dreams.phototable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.webview"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.captiveportallogin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.wallpaper.holospiral"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.wallpaper.livepicker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.mms.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.galaxy4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.managedprovisioning"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.inputmethod.latin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.flyme.systemuitools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.yunos.baseservice.cmns_client"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.amap.android.location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.example.monkeytest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.lifekit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.share"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.waves.maxxservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.mstore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.flymecommunication"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.musicfx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.splitloccontroller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    const/4 v0, 0x0

    sput v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sOriginScale:F

    .line 1424
    new-instance v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$1;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sResetAnimationScaleRunnable:Ljava/lang/Runnable;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 871
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWhiteListLoaded:Z

    .line 1498
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    .line 1499
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSystemUidList:Ljava/util/ArrayList;

    .line 1500
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgProcessInfoList:Ljava/util/List;

    .line 1501
    iput-wide v8, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    .line 1502
    iput-wide v8, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mRecordCalculateReleaseMem:J

    .line 1503
    new-instance v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 152
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 153
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 154
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 155
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 157
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 158
    const-string/jumbo v4, "search"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSm:Landroid/app/SearchManager;

    .line 159
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 160
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    .line 166
    .local v3, "wId":I
    const v1, 0x1050001

    .line 167
    .local v1, "hId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 168
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 171
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 173
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 177
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSm:Landroid/app/SearchManager;

    invoke-virtual {v4, v7}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "assist":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    .line 151
    :cond_0
    return-void
.end method

.method public static disableAnimationScale()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 1455
    sget-object v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    sget-object v4, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1456
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 1457
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 1459
    .local v1, "reset":Z
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v3

    sput v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sOriginScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :goto_0
    if-eqz v1, :cond_0

    .line 1465
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1466
    const-string/jumbo v3, "recents.Proxy"

    const-string/jumbo v4, "disable window animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1471
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1472
    sget-object v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "needreset"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "origin"

    sget v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sOriginScale:F

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1473
    sget-object v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    sget-object v4, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1454
    .end local v1    # "reset":Z
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_2
    return-void

    .line 1460
    .restart local v1    # "reset":Z
    .restart local v2    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 1467
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1468
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 1476
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "reset":Z
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_2
    sget-object v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    sget-object v4, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1477
    sget-object v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    sget-object v4, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sResetAnimationScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 200
    :cond_1
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method private getMainPidDependPkgName(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1507
    :try_start_0
    iget-object v3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1508
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgProcessInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1509
    iget-object v3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgProcessInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;

    .line 1510
    .local v1, "info":Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
    iget-boolean v3, v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->isMain:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1511
    iget-wide v4, v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v3, v4

    .line 1516
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1511
    return v3

    .line 1508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    .end local v1    # "info":Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
    :cond_1
    const/4 v3, -0x1

    .line 1516
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1514
    return v3

    .line 1515
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1516
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1515
    throw v3
.end method

.method public static getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "taskId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1102
    const/4 v0, 0x0

    .line 1104
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v3

    .line 1105
    .local v3, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v3, :cond_0

    return-object v8

    .line 1107
    :cond_0
    iget-object v4, v3, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 1108
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v3, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1109
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 1110
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 1111
    sget-object v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    .line 1110
    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1119
    :cond_1
    if-eqz v0, :cond_2

    .line 1121
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1113
    :cond_2
    :goto_0
    return-object v4

    .line 1122
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1114
    .end local v0    # "descriptor":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 1115
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1116
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    if-eqz v0, :cond_3

    .line 1121
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1117
    :cond_3
    :goto_1
    return-object v8

    .line 1122
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1118
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 1119
    if-eqz v0, :cond_4

    .line 1121
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1118
    :cond_4
    :goto_2
    throw v5

    .line 1122
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method static inBlackList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method private initDefaultInput(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 774
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 775
    const-string/jumbo v3, "default_input_method"

    .line 773
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "currentInputMethodId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 777
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "methodId":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 779
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultInputPkg:Ljava/lang/String;

    .line 782
    .end local v1    # "methodId":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "recents.Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentInputMethodId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultInputPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method private initDefaultLauncherList()V
    .locals 4

    .prologue
    .line 761
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    const-string/jumbo v2, "android.intent.category.HOME"

    .line 761
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 762
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 763
    const/4 v3, 0x0

    .line 761
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 764
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 765
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLauncherPkg:Ljava/lang/String;

    .line 760
    :cond_0
    return-void
.end method

.method private initDefaultLiveWallpaper(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 786
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 787
    .local v0, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-nez v0, :cond_0

    .line 788
    iput-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLiveWallpaperPkg:Ljava/lang/String;

    .line 785
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLiveWallpaperPkg:Ljava/lang/String;

    .line 791
    const-string/jumbo v1, "recents.Proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current live wallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLiveWallpaperPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDemoFeature(Z)V
    .locals 2
    .param p1, "isDemo"    # Z

    .prologue
    const/4 v0, 0x0

    .line 796
    if-eqz p1, :cond_1

    .line 797
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    .line 799
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.media.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.MzAutoInstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.meizu.flyme.update"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iput-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected static isInSysList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 710
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSysWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 717
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const/4 v0, 0x1

    return v0

    .line 720
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMutilStack(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 3
    .param p0, "taskInfo"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 1051
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1052
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui.multiwindow.MultiWindowActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1052
    if-eqz v1, :cond_0

    .line 1054
    const/4 v1, 0x1

    return v1

    .line 1056
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isMutilStack(Lcom/flyme/systemui/recents/model/Task;)Z
    .locals 3
    .param p0, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1061
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui.multiwindow.MultiWindowActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1061
    if-eqz v1, :cond_0

    .line 1063
    const/4 v1, 0x1

    return v1

    .line 1065
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isRecentStack(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 3
    .param p0, "taskInfo"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 1030
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1031
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.flyme.systemui.recents.RecentsEmptyActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1031
    if-eqz v1, :cond_0

    .line 1033
    const/4 v1, 0x1

    return v1

    .line 1035
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 724
    invoke-static {p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->inBlackList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 725
    return v7

    .line 727
    :cond_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 729
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 730
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-ne v5, v8, :cond_2

    .line 731
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v5, v7

    .line 736
    .local v4, "pkgName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const v6, 0x186a0

    rem-int/2addr v5, v6

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_1

    .line 737
    return v8

    .line 733
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 734
    .local v0, "index":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .restart local v4    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_3
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 740
    .end local v0    # "index":I
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_4
    return v7
.end method

.method private declared-synchronized killAllTasks(Landroid/content/Context;Ljava/lang/Runnable;[IZ)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "afterRemoveTask"    # Ljava/lang/Runnable;
    .param p3, "targetID"    # [I
    .param p4, "isDemo"    # Z

    .prologue
    monitor-enter p0

    .line 394
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v19, :cond_0

    monitor-exit p0

    return-void

    .line 395
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->recordCalculateReleaseMemAfterKillAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 397
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->prepareKillProcess(Landroid/content/Context;Z)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v20

    .line 400
    const/16 v21, 0x7

    .line 402
    const/16 v22, -0x2

    .line 399
    invoke-virtual/range {v19 .. v22}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 404
    .local v16, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v16, :cond_1

    .line 495
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 405
    return-void

    .line 408
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v13

    .line 411
    .local v13, "lockTaskManager":Lcom/flyme/systemui/recents/model/LockTaskManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v9, "keepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v17, "toForcestopPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_a

    .line 415
    :try_start_5
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 416
    .local v6, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v6, :cond_3

    .line 413
    .end local v6    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 418
    .restart local v6    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    invoke-static {v6}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isRecentStack(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 419
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 420
    .local v14, "pkg":Ljava/lang/String;
    iget v5, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 422
    .local v5, "id":I
    const/16 v19, 0x0

    aget v19, p3, v19

    move/from16 v0, v19

    if-eq v5, v0, :cond_4

    const/16 v19, 0x1

    aget v19, p3, v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_6

    .line 423
    :cond_4
    if-eqz v14, :cond_5

    .line 424
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_5
    const-string/jumbo v19, "recents.Proxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is target"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 449
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 450
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 494
    .end local v3    # "e":Ljava/lang/SecurityException;
    .end local v4    # "i":I
    .end local v9    # "keepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "lockTaskManager":Lcom/flyme/systemui/recents/model/LockTaskManager;
    .end local v16    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v17    # "toForcestopPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v19

    .line 495
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 494
    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v19

    monitor-exit p0

    throw v19

    .line 430
    .restart local v4    # "i":I
    .restart local v5    # "id":I
    .restart local v6    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v9    # "keepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "lockTaskManager":Lcom/flyme/systemui/recents/model/LockTaskManager;
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v16    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v17    # "toForcestopPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLauncherPkg:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLauncherPkg:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 431
    const-string/jumbo v19, "recents.Proxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is home"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 436
    const-string/jumbo v19, "recents.Proxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is demo specailApp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 440
    :cond_8
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->isPackageLocked(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 442
    const-string/jumbo v19, "recents.Proxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is locked app"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 445
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskEx(ILjava/lang/String;)V

    .line 446
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const-string/jumbo v19, "recents.Proxy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is other app should remove"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 454
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_a
    if-eqz p2, :cond_b

    .line 455
    :try_start_9
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 459
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    .line 460
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 461
    .local v18, "toKillPkgName":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "info$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 462
    .local v7, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 465
    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v19, v0

    const v20, 0x186a0

    rem-int v19, v19, v20

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 466
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget-object v15, v20, v19

    .line 469
    .local v15, "pkgName":Ljava/lang/String;
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 472
    .end local v15    # "pkgName":Ljava/lang/String;
    :cond_d
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget-object v15, v20, v19

    .line 475
    .restart local v15    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 481
    .end local v7    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v15    # "pkgName":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v4, v19, -0x1

    :goto_4
    if-ltz v4, :cond_10

    .line 482
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 483
    .restart local v14    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 484
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 489
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "killName$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 490
    .local v10, "killName":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 491
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v10, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killProcessPolicyByPkgName(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 495
    .end local v10    # "killName":Ljava/lang/String;
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    .line 393
    return-void
.end method

.method private declared-synchronized prepareKillProcess(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDemo"    # Z

    .prologue
    monitor-enter p0

    .line 744
    :try_start_0
    invoke-direct {p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->initDefaultLauncherList()V

    .line 745
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->initDefaultInput(Landroid/content/Context;)V

    .line 746
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->initDefaultLiveWallpaper(Landroid/content/Context;)V

    .line 747
    invoke-direct {p0, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->initDemoFeature(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 743
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeTaskEx(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 510
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sNotkillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->removeTaskNotKillProcess(I)Z

    .line 509
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_0
.end method

.method public static resetAnimationScaleIfNeed(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1439
    sget-object v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 1440
    const-string/jumbo v2, "recents_animationcache"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 1442
    :cond_0
    sget-object v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "needreset"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1443
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 1445
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    sget-object v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "origin"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1446
    sget-object v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "needreset"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1447
    const-string/jumbo v2, "recents.Proxy"

    const-string/jumbo v3, "reset window animation while init"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_0
    return-void

    .line 1448
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method dealWithSpecailMusic(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 905
    const-string/jumbo v5, "com.meizu.media.music"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 906
    return v8

    .line 910
    :cond_0
    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 911
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 918
    :cond_1
    new-instance v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;-><init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Ljava/lang/String;Landroid/content/Context;)V

    .line 937
    .local v2, "musicConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.meizu.media.music.support.MusicSupportService"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.meizu.media.music"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 941
    return v6

    .line 912
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "musicConnection":Landroid/content/ServiceConnection;
    :cond_2
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 913
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 914
    return v6

    .line 943
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "musicConnection":Landroid/content/ServiceConnection;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "recents.Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is music but bindService false and kill"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 947
    :goto_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 948
    return v8

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "recents.Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is music but bindService exception and kill"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1193
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    return-object v2

    .line 1200
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1201
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1148
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    return-object v3

    .line 1152
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1155
    return-object v3
.end method

.method public getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 1178
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 1208
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1211
    :cond_0
    return-object p1
.end method

.method public getCalculateReleaseMem()J
    .locals 2

    .prologue
    .line 1643
    iget-wide v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    return-wide v0
.end method

.method public getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1315
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1316
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getMeminfo([Lcom/flyme/systemui/recents/model/Task;)V
    .locals 38
    .param p1, "tasks"    # [Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 1521
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 1522
    :cond_0
    return-void

    .line 1526
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->clear()V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSystemUidList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgProcessInfoList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 1532
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 1533
    .local v28, "taskMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flyme/systemui/recents/model/Task;>;"
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 1534
    .local v22, "pidList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "n":I
    :goto_0
    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 1535
    aget-object v27, p1, v6

    .line 1536
    .local v27, "task":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 1538
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "task":Lcom/flyme/systemui/recents/model/Task;
    check-cast v27, Lcom/flyme/systemui/recents/model/Task;

    .line 1539
    .restart local v27    # "task":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1543
    .end local v27    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->waitWhiteListIfNeed()V

    .line 1546
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 1547
    .local v14, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "info$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1548
    .local v8, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/16 v25, 0x0

    .line 1549
    .local v25, "pkgName":Ljava/lang/String;
    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 1550
    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v25, v32, v33

    .line 1552
    .end local v25    # "pkgName":Ljava/lang/String;
    :cond_5
    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, ":"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1553
    .local v7, "index":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v7, v0, :cond_9

    const/4 v10, 0x1

    .line 1554
    .local v10, "isMain":Z
    :goto_2
    if-nez v25, :cond_6

    .line 1555
    if-eqz v10, :cond_a

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1557
    :cond_6
    :goto_3
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_4

    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 1559
    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v32, v0

    const v33, 0x186a0

    rem-int v32, v32, v33

    const/16 v33, 0x2710

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_7

    invoke-static/range {v25 .. v25}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInSysList(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 1561
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSystemUidList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 1566
    :cond_8
    new-instance v30, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;

    invoke-direct/range {v30 .. v30}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;-><init>()V

    .line 1567
    .local v30, "tempPkgProcessInfo":Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
    move-object/from16 v0, v30

    iput-boolean v10, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->isMain:Z

    .line 1568
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pkgName:Ljava/lang/String;

    .line 1569
    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pid:J

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgProcessInfoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1636
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9    # "info$iterator":Ljava/util/Iterator;
    .end local v10    # "isMain":Z
    .end local v14    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v20    # "n":I
    .end local v22    # "pidList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v28    # "taskMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flyme/systemui/recents/model/Task;>;"
    .end local v30    # "tempPkgProcessInfo":Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
    :catchall_0
    move-exception v32

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1636
    throw v32

    .line 1553
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v9    # "info$iterator":Ljava/util/Iterator;
    .restart local v14    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v20    # "n":I
    .restart local v22    # "pidList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v28    # "taskMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "isMain":Z
    goto/16 :goto_2

    .line 1555
    :cond_a
    :try_start_1
    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .local v25, "pkgName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1574
    .end local v7    # "index":I
    .end local v8    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "isMain":Z
    .end local v25    # "pkgName":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1575
    .local v21, "pidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1576
    .restart local v7    # "index":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 1577
    .local v23, "pids":[I
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 1578
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    aput v32, v23, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1583
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v26

    .line 1584
    .local v26, "processPss":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgProcessInfoList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 1585
    .local v24, "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;>;"
    const/4 v7, 0x0

    .line 1586
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 1587
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;

    .line 1588
    .local v12, "key":Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
    aget-wide v32, v26, v7

    const/16 v34, 0xa

    shr-long v32, v32, v34

    move-wide/from16 v0, v32

    iput-wide v0, v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->mem:J

    .line 1589
    const-string/jumbo v32, "recents.Proxy"

    invoke-virtual {v12}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    iget-object v0, v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 1591
    .local v29, "tempMem":Ljava/lang/Long;
    if-eqz v29, :cond_d

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    iget-object v0, v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-wide v0, v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->mem:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    add-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1594
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    iget-object v0, v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-wide v0, v12, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;->mem:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1598
    .end local v12    # "key":Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;
    .end local v24    # "pkgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/misc/SystemServicesProxy$PkgProcessInfo;>;"
    .end local v26    # "processPss":[J
    .end local v29    # "tempMem":Ljava/lang/Long;
    :catch_0
    move-exception v4

    .line 1599
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1602
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_e
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1604
    .local v11, "iter":Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1605
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1606
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1607
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 1608
    .local v17, "mem":Ljava/lang/Long;
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/flyme/systemui/recents/model/Task;

    .line 1609
    .restart local v27    # "task":Lcom/flyme/systemui/recents/model/Task;
    if-eqz v27, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/flyme/systemui/recents/model/Task;->mem:J

    .line 1611
    :cond_10
    if-eqz v27, :cond_11

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    .line 1612
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isSpecailApp(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_f

    invoke-static {v13}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInSysList(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_f

    invoke-static {v13}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInWhiteList(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSystemUidList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    .line 1613
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    .line 1614
    const-string/jumbo v32, "recents.Proxy"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "forceStopPackage release mem :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1618
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "mem":Ljava/lang/Long;
    .end local v27    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_12
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    :goto_8
    move/from16 v0, v20

    if-ge v6, v0, :cond_15

    .line 1619
    aget-object v16, p1, v6

    .line 1620
    .local v16, "localTask":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/flyme/systemui/recents/model/Task;

    .line 1621
    .local v31, "tempTask":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    move-wide/from16 v18, v0

    .line 1622
    .local v18, "mem":J
    const-wide/16 v32, -0x1

    cmp-long v32, v18, v32

    if-nez v32, :cond_13

    .line 1623
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/flyme/systemui/recents/model/Task;->mem:J

    .line 1625
    :cond_13
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/flyme/systemui/recents/model/Task;->mem:J

    .line 1626
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    .line 1627
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/flyme/systemui/recents/model/Task;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/flyme/systemui/recents/model/Task;

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    move-wide/from16 v18, v0

    .line 1628
    const-wide/16 v32, -0x1

    cmp-long v32, v18, v32

    if-eqz v32, :cond_14

    .line 1629
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    move-wide/from16 v0, v32

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/flyme/systemui/recents/model/Task;->mem:J

    .line 1618
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1633
    .end local v16    # "localTask":Lcom/flyme/systemui/recents/model/Task;
    .end local v18    # "mem":J
    .end local v31    # "tempTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mRecordCalculateReleaseMem:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-nez v32, :cond_16

    .line 1634
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1637
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1639
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v32

    new-instance v33, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;

    invoke-direct/range {v33 .. v33}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;->setReleaseMem(J)Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1520
    return-void
.end method

.method public getRecentTasks(IIZ)Ljava/util/List;
    .locals 15
    .param p1, "numLatestTasks"    # I
    .param p2, "userId"    # I
    .param p3, "isTopTaskHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v13, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return-object v13

    .line 240
    :cond_0
    const/16 v6, 0xa

    .line 241
    .local v6, "minNumTasksToQuery":I
    move/from16 v0, p1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 242
    .local v8, "numTasksToQuery":I
    iget-object v13, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 244
    const/4 v14, 0x7

    .line 242
    move/from16 v0, p2

    invoke-virtual {v13, v8, v14, v0}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v10

    .line 249
    .local v10, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v10, :cond_1

    .line 250
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    return-object v13

    .line 253
    :cond_1
    const/4 v3, 0x1

    .line 254
    .local v3, "isFirstValidTask":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v12, "tempTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 258
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 259
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 262
    .local v9, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-static {v9}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isRecentStack(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 263
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {v9}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isMutilStack(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 266
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    .line 277
    const/high16 v14, 0x800000

    .line 276
    if-ne v13, v14, :cond_6

    const/4 v2, 0x1

    .line 280
    .local v2, "isExcluded":Z
    :goto_1
    if-nez v3, :cond_7

    .line 281
    if-nez v2, :cond_5

    iget v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p0, v13}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 282
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 276
    .end local v2    # "isExcluded":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isExcluded":Z
    goto :goto_1

    .line 286
    :cond_7
    const/4 v3, 0x0

    .line 289
    :cond_8
    const/4 v4, 0x0

    .line 290
    .local v4, "isRepeat":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_2
    if-ge v1, v7, :cond_9

    .line 291
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 292
    .local v11, "tempTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v14, v11, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v13, v14, :cond_a

    iget v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v14, v11, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v13, v14, :cond_a

    .line 293
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 294
    const/4 v4, 0x1

    .line 298
    .end local v11    # "tempTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_9
    if-nez v4, :cond_2

    .line 299
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .restart local v11    # "tempTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 302
    .end local v1    # "i":I
    .end local v2    # "isExcluded":Z
    .end local v4    # "isRepeat":Z
    .end local v7    # "n":I
    .end local v9    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11    # "tempTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-interface {v10, v14, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    return-object v13
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 3
    .param p1, "numTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 955
    const-string/jumbo v0, "recents.Proxy"

    const-string/jumbo v1, "getRunningTasks : AM is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-object v2

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1323
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1324
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskThumbnail(I)Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    .locals 8
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1070
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-object v7

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1081
    .local v6, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 1082
    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1086
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1088
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    .line 1089
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    .line 1088
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1090
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1091
    const-string/jumbo v0, "recents.Proxy"

    const-string/jumbo v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_1
    new-instance v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    invoke-direct {v0, v6}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 1095
    :cond_2
    return-object v7
.end method

.method public getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 963
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 964
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    return-object v2

    .line 965
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v1
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1331
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1332
    .local v1, "windowRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    return-object v1

    .line 1334
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1335
    .local v0, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1336
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1337
    return-object v1
.end method

.method public hasSoftNavigationBar()Z
    .locals 2

    .prologue
    .line 1043
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1047
    const/4 v1, 0x0

    return v1
.end method

.method public initWhiteList(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 811
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWhiteListLoaded:Z

    .line 812
    new-instance v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    invoke-direct {v2, p0, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;-><init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->conn:Landroid/content/ServiceConnection;

    .line 861
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 862
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.meizu.safe.RubbishClean"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    const-string/jumbo v2, "com.meizu.safe"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isForegroundUserOwner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1236
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInHomeStack(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 994
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isInHomeStack(I)Z

    move-result v0

    return v0
.end method

.method public isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeTopMost"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    const/4 v3, 0x0

    .line 973
    if-eqz p1, :cond_2

    .line 974
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 977
    .local v0, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.flyme.systemui.recents.RecentsEmptyActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 977
    if-eqz v1, :cond_1

    .line 979
    if-eqz p2, :cond_0

    .line 980
    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 982
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 985
    :cond_1
    if-eqz p2, :cond_2

    .line 986
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 989
    .end local v0    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    return v3
.end method

.method isSpecailApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 881
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 882
    :cond_0
    return v2

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLauncherPkg:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLauncherPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    return v1

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultInputPkg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultInputPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 893
    return v1

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLiveWallpaperPkg:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDefaultLiveWallpaperPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 896
    return v1

    .line 898
    :cond_4
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mDemoSpecialPkg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 899
    return v1

    .line 901
    :cond_5
    return v2
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteListLoaded()Z
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWhiteListLoaded:Z

    return v0
.end method

.method public declared-synchronized killAllTasks(Landroid/content/Context;Ljava/lang/Runnable;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "afterRemoveTask"    # Ljava/lang/Runnable;
    .param p3, "targetID"    # [I

    .prologue
    monitor-enter p0

    .line 387
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killAllTasks(Landroid/content/Context;Ljava/lang/Runnable;[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 386
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public killAllTasksAsync(Landroid/content/Context;[IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetID"    # [I
    .param p3, "isDemo"    # Z

    .prologue
    .line 377
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$4;-><init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;[IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method

.method public killProcessPolicyByPkgName(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "isKillAll"    # Z

    .prologue
    const/4 v7, 0x0

    .line 521
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    const-string/jumbo v4, "recents.Proxy"

    const-string/jumbo v5, "International will do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 524
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flyme/systemui/recents/model/LockTaskManager;->isPackageLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 525
    const-string/jumbo v4, "recents.Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is in locked -- do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {p0, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isSpecailApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 527
    const-string/jumbo v4, "recents.Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is in isSpecailApp -- do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_3
    invoke-static {p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInSysList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 529
    const-string/jumbo v4, "recents.Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is in sysWhite -- do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 530
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->dealWithSpecailMusic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 532
    :cond_5
    invoke-static {p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInWhiteList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 533
    if-nez p3, :cond_6

    .line 534
    const-string/jumbo v4, "recents.Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is in user\'s white -- killed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :try_start_0
    invoke-direct {p0, p2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getMainPidDependPkgName(Ljava/lang/String;)I

    move-result v1

    .line 537
    .local v1, "pid":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 538
    new-instance v4, Landroid/app/FlymeExtIActivityManagerProxy;

    invoke-direct {v4}, Landroid/app/FlymeExtIActivityManagerProxy;-><init>()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const-string/jumbo v6, "user remove in Recents"

    invoke-virtual {v4, v5, v1, v6}, Landroid/app/FlymeExtIActivityManagerProxy;->killPid(Landroid/os/IBinder;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 540
    .end local v1    # "pid":I
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 544
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string/jumbo v4, "recents.Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is in user\'s white -- do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 547
    :cond_7
    const-string/jumbo v4, "recents.Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is other -- forceStopPackage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-nez p3, :cond_b

    .line 550
    :try_start_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 551
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flyme/systemui/recents/model/LockTaskManager;->isPackageLocked(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_a

    .line 556
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 569
    :cond_9
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 551
    if-eqz v4, :cond_8

    .line 553
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;

    invoke-direct {v6}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;-><init>()V

    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;->setReleaseMem(J)Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;

    move-result-object v4

    invoke-virtual {v5, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 555
    :catchall_0
    move-exception v4

    .line 556
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 555
    throw v4

    .line 560
    :cond_b
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 561
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 562
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 563
    .local v3, "topActivity":Landroid/content/ComponentName;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 564
    return-void
.end method

.method public moveTaskToFront(ILandroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v2, 0x1

    .line 1130
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    if-eqz p2, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 1135
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1134
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1129
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0
.end method

.method recordCalculateReleaseMemAfterKillAll()V
    .locals 2

    .prologue
    .line 1666
    iget-wide v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    iput-wide v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mRecordCalculateReleaseMem:J

    .line 1665
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1408
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    :goto_0
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTaskById(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;-><init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public removeTaskByTask(Landroid/content/Context;Lcom/flyme/systemui/recents/model/Task;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/flyme/systemui/recents/model/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flyme/systemui/recents/model/Task;",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/systemui/recents/model/Task;>;"
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sBgThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;-><init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Lcom/flyme/systemui/recents/model/Task;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1380
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-eqz v2, :cond_1

    .line 1382
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez p4, :cond_0

    :goto_0
    invoke-interface {v2, p2, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1383
    return v4

    .line 1382
    :cond_0
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p3, v1, v3

    const v2, 0x7f09024e

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-static {p1, v1}, Lcom/flyme/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1389
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1394
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1397
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_0
    return-void

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const v4, 0x222df

    const/16 v3, 0x4e20

    const/4 v5, 0x0

    .line 1344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1347
    .local v8, "start":J
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v7

    .line 1348
    .local v7, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v1, :cond_0

    .line 1349
    iget-object v0, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 1352
    .local v0, "source":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1353
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    move v6, v5

    .line 1350
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1363
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenshot spend : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/Constants;->pfmLog(Ljava/lang/String;)V

    .line 1364
    return-object v10

    .line 1356
    .end local v0    # "source":Landroid/graphics/Rect;
    .end local v10    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1359
    .restart local v0    # "source":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1360
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    move v6, v5

    .line 1357
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v10

    .restart local v10    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public updateCalculateReleaseMem(J)V
    .locals 1
    .param p1, "mem"    # J

    .prologue
    .line 1647
    iput-wide p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    .line 1646
    return-void
.end method

.method public updateCalculateReleaseMemWhileLockChange(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "Locked"    # Z

    .prologue
    .line 1652
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1653
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isSpecailApp(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1650
    return-void

    .line 1653
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mSystemUidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    if-eqz p2, :cond_2

    .line 1655
    iget-wide v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1660
    :catchall_0
    move-exception v0

    .line 1661
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mMemReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1660
    throw v0

    .line 1657
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J

    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mPkgMemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mCalculateReleaseMem:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method waitWhiteListIfNeed()V
    .locals 4

    .prologue
    .line 1670
    const/4 v1, 0x0

    .line 1671
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isWhiteListLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1673
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1674
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1669
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
