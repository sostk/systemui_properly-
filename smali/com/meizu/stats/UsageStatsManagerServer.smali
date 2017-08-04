.class public Lcom/meizu/stats/UsageStatsManagerServer;
.super Lcom/meizu/stats/IUsageStatsManager$Stub;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;,
        Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;,
        Lcom/meizu/stats/UsageStatsManagerServer$Page;,
        Lcom/meizu/stats/UsageStatsManagerServer$1;
    }
.end annotation


# static fields
.field public static SOURCE:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;


# instance fields
.field private mChannelNum:I

.field private mClearPackageSessionTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

.field private mLastSwitchToBackground:J

.field private mOnline:Z

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/stats/UsageStatsManagerServer$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSetSessionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordEventThread:Landroid/os/HandlerThread;

.field private volatile mRecording:Z

.field private mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUpload:Z

.field private mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

.field private mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method static synthetic -get0(Lcom/meizu/stats/UsageStatsManagerServer;)I
    .locals 1

    iget v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mChannelNum:I

    return v0
.end method

.method static synthetic -get1(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    return v0
.end method

.method static synthetic -get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    return v0
.end method

.method static synthetic -get8(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic -get9(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/stats/UsageStatsManagerServer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/meizu/stats/UsageStatsManagerServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/stats/UsageStatsManagerServer;ILjava/lang/String;)V
    .locals 0
    .param p1, "bulkLimit"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsManagerServer;->setBulkLimitInternal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/stats/UsageStatsManagerServer;Z)V
    .locals 0
    .param p1, "online"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsManagerServer;->setOnlineInternal(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/stats/UsageStatsManagerServer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsManagerServer;->setSourceInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/stats/UsageStatsManagerServer;Z)V
    .locals 0
    .param p1, "upload"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsManagerServer;->setUploadedInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/meizu/stats/IUsageStatsManager$Stub;-><init>()V

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RecordEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPendingSetSessionEvents:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mChannelNum:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 76
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$1;

    invoke-direct {v0, p0}, Lcom/meizu/stats/UsageStatsManagerServer$1;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    .line 88
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    .line 89
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    .line 90
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    .line 92
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManagerServer;->init()V

    .line 86
    return-void
.end method

.method static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsManagerServer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 96
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    if-nez v0, :cond_1

    .line 97
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsManagerServer;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 103
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 108
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/meizu/stats/UsageStatsManagerServer;->initChannelNum(Landroid/content/Context;)V

    .line 109
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.meizu.stats"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 111
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 112
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-static {v2, v3, v4}, Lcom/meizu/stats/UsageStatsUploader;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "meizu_data_collection"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    .line 117
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-direct {v0, p0, v2}, Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    .line 118
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "meizu_data_collection"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    .line 118
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method private initChannelNum(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 342
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 344
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 345
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "uxip_channel_num"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mChannelNum:I

    .line 340
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    return-void

    .line 346
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "uxip_channel_num"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 348
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "UsageStatsManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setBulkLimitInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "bulkLimit"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v0, p1}, Lcom/meizu/stats/UsageStatsUploader;->setBulkLimit(I)V

    .line 482
    :cond_0
    return-void
.end method

.method private setOnlineInternal(Z)V
    .locals 2
    .param p1, "online"    # Z

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eq v0, p1, :cond_0

    .line 452
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    .line 453
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->setOnline(Z)V

    .line 454
    if-eqz p1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-static {v0, p1, v1}, Lcom/meizu/stats/UsageStatsUploader;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->setUploaded(Z)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->setUploaded(Z)V

    goto :goto_0
.end method

.method private setSourceInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 436
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    sput-object p1, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v1, p1, v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->updateSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v0    # "sessionId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setUploadedInternal(Z)V
    .locals 2
    .param p1, "upload"    # Z

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    .line 411
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->setUploaded(Z)V

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public getSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 418
    const-string/jumbo v1, "UsageStatsManagerServer"

    const-string/jumbo v2, "null == mPackageSession, getSessionId will return null!"

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-object v3

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    .local v0, "sessionId":Ljava/lang/String;
    const-string/jumbo v1, "UsageStatsManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSessionId success, sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-object v0
.end method

.method public getSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    const-string/jumbo v0, "UsageStatsManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSource success, SOURCE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    return-object v0
.end method

.method public onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method public onPage(Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "start"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p3}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/meizu/stats/UsageStatsManagerServer$Page;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 128
    .local v1, "page":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    if-eqz p2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v2, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void

    .line 131
    .local v0, "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method public setBulkLimit(ILjava/lang/String;)V
    .locals 4
    .param p1, "bulkLimit"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 475
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 476
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "bulk_limit"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 479
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v2, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    return-void
.end method

.method public setOnline(Z)V
    .locals 3
    .param p1, "online"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 447
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void

    .line 446
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 428
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 432
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v2, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void
.end method

.method public setUploaded(Z)V
    .locals 3
    .param p1, "upload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 405
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    return-void

    .line 404
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
