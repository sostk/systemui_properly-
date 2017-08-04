.class public Lcom/meizu/stats/UsageStatsUploader;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;,
        Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;,
        Lcom/meizu/stats/UsageStatsUploader$DbObserver;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;

.field public static sUMID:Ljava/lang/String;

.field private static volatile sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;


# instance fields
.field private mAlarmTimeRunning:Z

.field private mContext:Landroid/content/Context;

.field private mDbObserver:Lcom/meizu/stats/UsageStatsUploader$DbObserver;

.field private mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

.field private mLastAlarmTime:J

.field private volatile mNetworkConnected:Z

.field private mOfflineDayFlowSum:J

.field private mOnline:Z

.field private volatile mOnlineBulkLimit:J

.field private mOnlineDayFlowSum:J

.field private mPackageName:Ljava/lang/String;

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mParcelLimit:I

.field private volatile mPowerConnecting:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStatsUploadThread:Landroid/os/HandlerThread;

.field private volatile mUpload:Z

.field private mUploaderReceiver:Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;

.field private mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;


# direct methods
.method static synthetic -get0(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mAlarmTimeRunning:Z

    return v0
.end method

.method static synthetic -get1(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/stats/UsageStatsUploader;)J
    .locals 2

    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/meizu/stats/UsageStatsUploader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/meizu/stats/UsageStatsUploader;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get7(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    return v0
.end method

.method static synthetic -get8(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsProxy$Event;Z)Z
    .locals 1
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .param p2, "isWifi"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->uploadEventInternal(Lcom/meizu/stats/UsageStatsProxy$Event;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "isWifi"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->uploadEvents(Lorg/json/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelEvents()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->cancelUploadAlarm()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkResetConditions()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->init()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 0
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/stats/UsageStatsUploader;J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sLock:Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "00000000000000000000000000000000000"

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v7, "StatsUploadThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    .line 93
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    .line 98
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mAlarmTimeRunning:Z

    .line 99
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    .line 100
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    .line 104
    sget v6, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_EVENTS_THRESHOLD:I

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineBulkLimit:J

    .line 105
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 108
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    .line 110
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageName:Ljava/lang/String;

    .line 112
    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v6, :cond_4

    sget v6, Lcom/meizu/experiencedatasync/UsageStatsConstants;->ONLINE_EVENTS_PARCEL_LIMIT:I

    :goto_0
    iput v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    .line 114
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 115
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.meizu.stats"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 116
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "online_flow_sum"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 117
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "offline_flow_sum"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    .line 118
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "cacheMac":Ljava/lang/String;
    invoke-static {p1}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "curMac":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    const-string/jumbo v8, "00000000000000000000000000000000000"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v6

    iput-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    .line 124
    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v6, :cond_1

    .line 125
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v6, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;-><init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    .line 130
    new-instance v6, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;-><init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;)V

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mUploaderReceiver:Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;

    .line 132
    :try_start_0
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mUploaderReceiver:Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v6, :cond_3

    .line 138
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "batteryfilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 141
    .local v5, "result":Landroid/content/Intent;
    if-eqz v5, :cond_2

    const-string/jumbo v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .end local v0    # "batteryfilter":Landroid/content/IntentFilter;
    .end local v5    # "result":Landroid/content/Intent;
    :cond_2
    :goto_2
    const-string/jumbo v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    :cond_3
    const-string/jumbo v6, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "com.meizu.usagestats.uploader_alarm."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    :try_start_2
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mUploaderReceiver:Lcom/meizu/stats/UsageStatsUploader$UploaderReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :goto_3
    new-instance v6, Lcom/meizu/stats/UsageStatsUploader$DbObserver;

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-direct {v6, p0, v7}, Lcom/meizu/stats/UsageStatsUploader$DbObserver;-><init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mDbObserver:Lcom/meizu/stats/UsageStatsUploader$DbObserver;

    .line 160
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsUploader;->mDbObserver:Lcom/meizu/stats/UsageStatsUploader$DbObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "content://com.meizu.usagestats/event"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 162
    iget-object v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mDbObserver:Lcom/meizu/stats/UsageStatsUploader$DbObserver;

    const/4 v9, 0x1

    .line 161
    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 164
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    new-instance v7, Lcom/meizu/stats/UsageStatsUploader$1;

    invoke-direct {v7, p0}, Lcom/meizu/stats/UsageStatsUploader$1;-><init>(Lcom/meizu/stats/UsageStatsUploader;)V

    invoke-virtual {v6, v7}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void

    .line 113
    .end local v1    # "cacheMac":Ljava/lang/String;
    .end local v2    # "curMac":Ljava/lang/String;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_4
    sget v6, Lcom/meizu/experiencedatasync/UsageStatsConstants;->EVENTS_PARCEL_LIMIT:I

    goto/16 :goto_0

    .line 144
    .restart local v1    # "cacheMac":Ljava/lang/String;
    .restart local v2    # "curMac":Ljava/lang/String;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "UsageStatsUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 156
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "UsageStatsUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 133
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method private cancelUploadAlarm()V
    .locals 6

    .prologue
    .line 775
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.meizu.usagestats.uploader_alarm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 776
    const/high16 v5, 0x8000000

    .line 775
    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 777
    .local v1, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 778
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 779
    return-void

    .line 781
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 782
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mAlarmTimeRunning:Z

    .line 774
    return-void
.end method

.method private checkOfflineMobile(Lorg/json/JSONObject;)Z
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 808
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 809
    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 810
    .local v2, "tempSum":J
    const-string/jumbo v1, "UsageStatsUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOfflineDayFlowSum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " offline this data.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-wide/32 v4, 0x7d000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 812
    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    .line 813
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "offline_flow_sum"

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 814
    const/4 v0, 0x1

    .line 817
    .end local v2    # "tempSum":J
    :cond_0
    return v0
.end method

.method private checkOnlineMobile(Lorg/json/JSONObject;)Z
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 830
    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 831
    .local v2, "tempSum":J
    const-string/jumbo v1, "UsageStatsUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOnlineDayFlowSum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " online this data.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-wide/32 v4, 0x200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 833
    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 834
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "online_flow_sum"

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 835
    const/4 v0, 0x1

    .line 838
    .end local v2    # "tempSum":J
    :cond_0
    return v0
.end method

.method private checkResetConditions()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 900
    .local v0, "cur":J
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "last_reset_time"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 901
    .local v2, "last":J
    cmp-long v4, v8, v2

    if-nez v4, :cond_1

    .line 902
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "last_reset_time"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 904
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "last_reset_time"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 906
    iput-wide v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    .line 907
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "online_flow_sum"

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineDayFlowSum:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 909
    iput-wide v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    .line 910
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "offline_flow_sum"

    iget-wide v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mOfflineDayFlowSum:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private clearUploadedEvents()V
    .locals 7

    .prologue
    .line 593
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "packageSessionEntry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 594
    .local v0, "packageSessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sessionMapEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 595
    .local v2, "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->deleteEvent(Ljava/util/Collection;)I

    goto :goto_0

    .line 598
    .end local v0    # "packageSessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;>;"
    .end local v2    # "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .end local v3    # "sessionMapEntry$iterator":Ljava/util/Iterator;
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v4, :cond_2

    .line 599
    const-string/jumbo v4, "UsageStatsUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upload successful! remain Events="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_2
    return-void
.end method

.method private generateMultipartEntity([B)Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    .locals 13
    .param p1, "pushData"    # [B

    .prologue
    .line 507
    invoke-static {p1}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "md5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v12, v0

    .line 509
    .local v12, "tsValue":I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/2addr v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 510
    .local v8, "nonce":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 511
    .local v11, "ts":Ljava/lang/String;
    const-string/jumbo v0, "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "sign":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v9, v0, [Lcom/meizu/experiencedatasync/net/multipart/Part;

    .line 521
    .local v9, "partArray":[Lcom/meizu/experiencedatasync/net/multipart/Part;
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string/jumbo v1, "nonce"

    invoke-direct {v0, v1, v8}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, v9, v1

    .line 522
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string/jumbo v1, "ts"

    invoke-direct {v0, v1, v11}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, v9, v1

    .line 523
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string/jumbo v1, "md5"

    invoke-direct {v0, v1, v6}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v0, v9, v1

    .line 524
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string/jumbo v1, "sign"

    invoke-direct {v0, v1, v10}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v0, v9, v1

    .line 525
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;

    const-string/jumbo v1, "collect"

    const-string/jumbo v2, "collect"

    const-string/jumbo v5, "UTF-8"

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/experiencedatasync/net/multipart/DataPart;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v9, v1

    .line 526
    new-instance v7, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;

    invoke-direct {v7, v9}, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;-><init>([Lcom/meizu/experiencedatasync/net/multipart/Part;)V

    .line 527
    .local v7, "multipartEntity":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    return-object v7
.end method

.method private generateUploadData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "flymeVersion"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 329
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 330
    return-object v6

    .line 332
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .local v2, "uploadData":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "ver"

    const-string/jumbo v4, "2.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    invoke-direct {p0, v2, p1}, Lcom/meizu/stats/UsageStatsUploader;->parcelDeviceInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelPackages()Lorg/json/JSONArray;

    move-result-object v0

    .line 337
    .local v0, "apps":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 338
    return-object v6

    .line 340
    :cond_1
    const-string/jumbo v3, "apps"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-object v2

    .line 342
    .end local v0    # "apps":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "UsageStatsUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-object v6
.end method

.method private getEventType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 481
    packed-switch p1, :pswitch_data_0

    .line 492
    const-string/jumbo v0, ""

    return-object v0

    .line 483
    :pswitch_0
    const-string/jumbo v0, "action_x"

    return-object v0

    .line 486
    :pswitch_1
    const-string/jumbo v0, "page"

    return-object v0

    .line 489
    :pswitch_2
    const-string/jumbo v0, "log"

    return-object v0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 173
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_1

    .line 174
    sget-object v1, Lcom/meizu/stats/UsageStatsUploader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 180
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    .line 186
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V

    .line 183
    :cond_0
    return-void
.end method

.method private insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 620
    const-string/jumbo v1, "UsageStatsUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSource(Ljava/lang/String;)V

    .line 625
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v1, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 626
    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->eventComein()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UsageStatsUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkWorking()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isNetworkWorking(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUploadSuccess(Ljava/lang/String;)Z
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    return v5

    .line 582
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_1

    .line 584
    const/4 v2, 0x1

    return v2

    .line 586
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "UsageStatsUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return v5
.end method

.method private parcelDeviceInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "flymeVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 375
    const-string/jumbo v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string/jumbo v0, "os_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string/jumbo v0, "imei"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string/jumbo v0, "country"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string/jumbo v0, "operator"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getOperater(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string/jumbo v0, "root"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isRoot(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 381
    const-string/jumbo v0, "sn"

    invoke-static {}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string/jumbo v0, "flyme_uid"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getFlymeUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string/jumbo v0, "flyme_ver"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .end local p2    # "flymeVersion":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string/jumbo v0, "mac_address"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string/jumbo v0, "product_model"

    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v0, "build_mask"

    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_MASK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string/jumbo v0, "sre"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getSre(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string/jumbo v0, "lla"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getLocationLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string/jumbo v0, "umid"

    sget-object v1, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    const-string/jumbo v0, "ter_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    :goto_0
    const-string/jumbo v0, "os_type"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getOSType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string/jumbo v0, "brand"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    return-void

    .line 394
    :cond_1
    const-string/jumbo v0, "ter_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private parcelEvents()Lorg/json/JSONObject;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "flymeVersion":Ljava/lang/String;
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    iget v12, p0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    invoke-virtual {v11, v12}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEvents(I)Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 195
    return-object v13

    .line 197
    :cond_0
    const-string/jumbo v11, "UsageStatsUploader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parcelEvents, count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 199
    const/4 v9, 0x0

    .line 200
    .local v9, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    const/4 v3, 0x0

    .line 201
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    const/4 v2, 0x0

    .line 202
    .local v2, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const/4 v6, 0x0

    .line 203
    .local v6, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 204
    .local v7, "packageVersion":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "sessionid":Ljava/lang/String;
    move-object v4, v3

    .local v4, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v10, v9

    .line 206
    .end local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v5    # "flymeVersion":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageVersion":Ljava/lang/String;
    .end local v8    # "sessionid":Ljava/lang/String;
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v10, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 207
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEvent(Landroid/database/Cursor;)Lcom/meizu/stats/UsageStatsProxy$Event;

    move-result-object v2

    .line 208
    .local v2, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    if-eqz v2, :cond_1

    .line 211
    if-nez v5, :cond_2

    .line 212
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v5

    .line 214
    :cond_2
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "packageVersion":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "sessionid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 218
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 219
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v9, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 221
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v10, v9

    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_0

    .line 215
    .end local v7    # "packageVersion":Ljava/lang/String;
    .end local v8    # "sessionid":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "packageVersion":Ljava/lang/String;
    goto :goto_1

    .line 225
    .restart local v8    # "sessionid":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_4
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 228
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .end local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageVersion":Ljava/lang/String;
    .end local v8    # "sessionid":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string/jumbo v11, "UsageStatsUploader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " - Cause: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsUploader;->generateUploadData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    return-object v11

    .line 231
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "packageVersion":Ljava/lang/String;
    .restart local v8    # "sessionid":Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 232
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_8
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 238
    .end local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageVersion":Ljava/lang/String;
    .end local v8    # "sessionid":Ljava/lang/String;
    :catchall_0
    move-exception v11

    .line 239
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    throw v11

    .line 239
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v9, v10

    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_4

    .line 238
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v9, v10

    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_5

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "packageVersion":Ljava/lang/String;
    .restart local v8    # "sessionid":Ljava/lang/String;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_5

    .line 236
    .end local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageVersion":Ljava/lang/String;
    .end local v8    # "sessionid":Ljava/lang/String;
    .end local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v9, v10

    .end local v10    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v9    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v2    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "packageVersion":Ljava/lang/String;
    .restart local v8    # "sessionid":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_3
.end method

.method private parcelPackages()Lorg/json/JSONArray;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 401
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 402
    .local v1, "apps":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 403
    .local v7, "version":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v7    # "version":Ljava/lang/String;
    .local v4, "packageName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v0, "app":Lorg/json/JSONObject;
    const-string/jumbo v9, "*"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 406
    .local v6, "splitIndex":I
    if-ne v11, v6, :cond_1

    move-object v2, v3

    .line 407
    .local v2, "name":Ljava/lang/String;
    :goto_1
    const-string/jumbo v9, "package"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string/jumbo v9, "com.meizu.uxip.log"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 409
    const-string/jumbo v7, "1.0"

    .line 413
    .local v7, "version":Ljava/lang/String;
    :goto_2
    const-string/jumbo v9, "sdk_ver"

    const-string/jumbo v10, "2.5.5"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string/jumbo v9, "version"

    invoke-virtual {v0, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-direct {p0, v3}, Lcom/meizu/stats/UsageStatsUploader;->parcelSessions(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 416
    .local v5, "sessions":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 419
    const-string/jumbo v9, "sessions"

    invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 406
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "sessions":Lorg/json/JSONArray;
    .end local v7    # "version":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 411
    :cond_2
    if-ne v11, v6, :cond_3

    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "version":Ljava/lang/String;
    goto :goto_2

    .end local v7    # "version":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "version":Ljava/lang/String;
    goto :goto_2

    .line 422
    .end local v0    # "app":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "splitIndex":I
    .end local v7    # "version":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_5

    .end local v1    # "apps":Lorg/json/JSONArray;
    :goto_3
    return-object v1

    .restart local v1    # "apps":Lorg/json/JSONArray;
    :cond_5
    move-object v1, v8

    goto :goto_3
.end method

.method private parcelSessions(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 426
    const-wide/16 v4, 0x0

    .line 427
    .local v4, "channel":J
    const/16 v17, 0x0

    .line 428
    .local v17, "source":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 429
    .local v13, "sessionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 430
    :cond_0
    const/16 v18, 0x0

    return-object v18

    .line 432
    :cond_1
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 433
    .local v16, "sessions":Lorg/json/JSONArray;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v17    # "source":Ljava/lang/String;
    .local v15, "sessionMapEntry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 434
    .local v14, "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 435
    .local v10, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 438
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .local v12, "session":Lorg/json/JSONObject;
    const-string/jumbo v18, "sid"

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 441
    .local v11, "events":Lorg/json/JSONArray;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "event$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 442
    .local v7, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const-wide/16 v18, 0x0

    cmp-long v18, v18, v4

    if-nez v18, :cond_3

    .line 443
    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getChannelNum()J

    move-result-wide v4

    .line 446
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 447
    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSource()Ljava/lang/String;

    move-result-object v17

    .line 450
    :cond_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 451
    .local v9, "eventJson":Lorg/json/JSONObject;
    const-string/jumbo v18, "network"

    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getNetwork()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string/jumbo v18, "type"

    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->getEventType(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string/jumbo v18, "name"

    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 455
    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 457
    :try_start_0
    const-string/jumbo v19, "launch"

    .line 458
    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/json/JSONObject;

    const-string/jumbo v20, "start_time"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 457
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string/jumbo v19, "terminate"

    .line 460
    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/json/JSONObject;

    const-string/jumbo v20, "stop_time"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 459
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_5
    :goto_2
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 461
    :catch_0
    move-exception v6

    .line 462
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "UsageStatsUploader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " - Cause: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 466
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v18, "time"

    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 467
    const-string/jumbo v18, "page"

    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string/jumbo v18, "value"

    invoke-virtual {v7}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 472
    .end local v7    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v9    # "eventJson":Lorg/json/JSONObject;
    :cond_7
    const-string/jumbo v18, "channel_id"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 473
    const-string/jumbo v19, "source"

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    sget-object v18, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v18, "events"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v18, v17

    .line 473
    goto :goto_3

    .line 477
    .end local v8    # "event$iterator":Ljava/util/Iterator;
    .end local v10    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v11    # "events":Lorg/json/JSONArray;
    .end local v12    # "session":Lorg/json/JSONObject;
    .end local v14    # "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_a

    .end local v16    # "sessions":Lorg/json/JSONArray;
    :goto_4
    return-object v16

    .restart local v16    # "sessions":Lorg/json/JSONArray;
    :cond_a
    const/16 v16, 0x0

    goto :goto_4
.end method

.method private parcelUmidInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "nonce":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getSN()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "sn":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 353
    const-string/jumbo v2, "sn"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    if-eqz p2, :cond_1

    .line 357
    const-string/jumbo v2, ":"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 358
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 359
    const-string/jumbo v2, "mac"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    const-string/jumbo v2, "U@M##I$$$D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v2, "ver"

    const-string/jumbo v3, "1.0"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string/jumbo v2, "nonce"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    .end local v0    # "nonce":Ljava/lang/StringBuilder;
    .end local v1    # "sn":Ljava/lang/String;
    :goto_0
    return-void

    .line 366
    :cond_2
    const-string/jumbo v2, "imei"

    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string/jumbo v2, "mac"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string/jumbo v2, "sn"

    invoke-static {}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getSN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string/jumbo v2, "version"

    const-string/jumbo v3, "2.0"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string/jumbo v2, "nonce"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "U@M##I$$$D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private requestUmid()V
    .locals 13

    .prologue
    .line 843
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 844
    .local v8, "uploadData":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, "mac":Ljava/lang/String;
    invoke-direct {p0, v8, v4}, Lcom/meizu/stats/UsageStatsUploader;->parcelUmidInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 847
    const/4 v5, 0x0

    .line 848
    .local v5, "response":Ljava/lang/String;
    const/4 v7, 0x0

    .line 850
    .local v7, "umid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 851
    .local v0, "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    const/4 v3, 0x0

    .line 852
    .local v3, "jsonByte":[B
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 853
    .local v3, "jsonByte":[B
    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;

    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    invoke-direct {v0, v3}, Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;-><init>([B)V

    .line 854
    .local v0, "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    iget-object v10, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 855
    const-string/jumbo v10, "UsageStatsUploader"

    const-string/jumbo v11, "request pad Umid : https://umid.meizu.com/pad/generator"

    invoke-static {v10, v11}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string/jumbo v10, "https://umid.meizu.com/pad/generator"

    invoke-static {v10, v0}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 861
    .local v5, "response":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "UsageStatsUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "request Umid response : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    if-nez v5, :cond_1

    .line 863
    return-void

    .line 858
    .local v5, "response":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "UsageStatsUploader"

    const-string/jumbo v11, "request phone Umid : https://umid.orion.meizu.com/umid/generator"

    invoke-static {v10, v11}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v10, "https://umid.orion.meizu.com/umid/generator"

    invoke-static {v10, v0}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .local v5, "response":Ljava/lang/String;
    goto :goto_0

    .line 865
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 866
    .local v6, "result":Lorg/json/JSONObject;
    const-string/jumbo v10, "code"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0xc8

    if-ne v11, v10, :cond_3

    .line 867
    const-string/jumbo v10, "value"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 868
    .local v9, "value":Lorg/json/JSONObject;
    if-eqz v9, :cond_3

    .line 869
    const-string/jumbo v10, "umid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 870
    .local v7, "umid":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 871
    sput-object v7, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    .line 872
    iget-object v10, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v11, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    sget-object v12, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 874
    :cond_2
    if-eqz v4, :cond_3

    .line 875
    iget-object v10, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v11, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v0    # "arrayEntity":Lcom/meizu/experiencedatasync/net/multipart/ByteArrayEntity;
    .end local v3    # "jsonByte":[B
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "result":Lorg/json/JSONObject;
    .end local v7    # "umid":Ljava/lang/String;
    .end local v8    # "uploadData":Lorg/json/JSONObject;
    .end local v9    # "value":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    return-void

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "UsageStatsUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - Cause: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 879
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 880
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "UsageStatsUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - Cause: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendUploadAlarm(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    .line 758
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.meizu.usagestats.uploader_alarm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 758
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    const/high16 v4, 0x8000000

    .line 758
    invoke-static {v2, v6, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 760
    .local v1, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 761
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 762
    return-void

    .line 764
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 765
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v2, :cond_1

    .line 766
    const-wide/32 v2, 0x1b7740

    add-long/2addr v2, p1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 770
    :goto_0
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J

    .line 771
    iput-boolean v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mAlarmTimeRunning:Z

    .line 757
    return-void

    .line 768
    :cond_1
    const-wide/32 v2, 0x1b77400

    add-long/2addr v2, p1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private uploadEventInternal(Lcom/meizu/stats/UsageStatsProxy$Event;Z)Z
    .locals 18
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .param p2, "isWifi"    # Z

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v14, :cond_0

    if-nez p1, :cond_1

    .line 636
    :cond_0
    const/4 v14, 0x0

    return v14

    .line 638
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 640
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v14, "ver"

    const-string/jumbo v15, "2.0"

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getFlymeVersion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/meizu/stats/UsageStatsUploader;->parcelDeviceInfo(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v14, "package"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    const-string/jumbo v15, "version"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    invoke-virtual {v2, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string/jumbo v14, "sdk_ver"

    const-string/jumbo v15, "2.5.5"

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string/jumbo v14, "channel_id"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getChannelNum()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 646
    const-string/jumbo v15, "source"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSource()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    const-string/jumbo v14, "network"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getNetwork()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string/jumbo v14, "sid"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 650
    .local v5, "eventJson":Lorg/json/JSONObject;
    const-string/jumbo v14, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/meizu/stats/UsageStatsUploader;->getEventType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string/jumbo v14, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    const-string/jumbo v14, "time"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 653
    const-string/jumbo v14, "page"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, "propertiesJson":Ljava/lang/String;
    invoke-static {v9}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 656
    const-string/jumbo v14, "value"

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    :goto_2
    const-string/jumbo v14, "event"

    invoke-virtual {v2, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v5    # "eventJson":Lorg/json/JSONObject;
    .end local v9    # "propertiesJson":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_5

    .line 665
    const/4 v14, 0x0

    return v14

    .line 643
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageVersion()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 646
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSource()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 658
    .restart local v5    # "eventJson":Lorg/json/JSONObject;
    .restart local v9    # "propertiesJson":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "value"

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 661
    .end local v5    # "eventJson":Lorg/json/JSONObject;
    .end local v9    # "propertiesJson":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 662
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v14, "UsageStatsUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " - Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 667
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 668
    .local v10, "pushData":[B
    if-nez v10, :cond_6

    .line 669
    const/4 v14, 0x0

    return v14

    .line 672
    :cond_6
    if-nez p2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/stats/UsageStatsUploader;->checkOnlineMobile(Lorg/json/JSONObject;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 676
    :cond_7
    sget-object v14, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string/jumbo v14, "00000000000000000000000000000000000"

    sget-object v15, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 677
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/meizu/stats/UsageStatsUploader;->requestUmid()V

    .line 679
    :try_start_2
    const-string/jumbo v14, "umid"

    sget-object v15, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 685
    :cond_9
    :goto_4
    invoke-static {v10}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v14

    invoke-static {v14}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, "md5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v13, v14

    .line 687
    .local v13, "tsValue":I
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 688
    .local v7, "nonce":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 689
    .local v12, "ts":Ljava/lang/String;
    const-string/jumbo v14, "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v16, 0x2

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v14

    invoke-static {v14}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 692
    .local v11, "sign":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v15, "nonce"

    invoke-direct {v14, v15, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v15, "ts"

    invoke-direct {v14, v15, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v15, "md5"

    invoke-direct {v14, v15, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v15, "sign"

    invoke-direct {v14, v15, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v15, "uxip_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :try_start_3
    const-string/jumbo v14, "https://uxip.meizu.com/api/report/realtime"

    new-instance v15, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v15, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-static {v14, v15}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/stats/UsageStatsUploader;->isUploadSuccess(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    return v14

    .line 673
    .end local v6    # "md5":Ljava/lang/String;
    .end local v7    # "nonce":Ljava/lang/String;
    .end local v8    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v11    # "sign":Ljava/lang/String;
    .end local v12    # "ts":Ljava/lang/String;
    .end local v13    # "tsValue":I
    :cond_a
    const/4 v14, 0x0

    return v14

    .line 680
    :catch_1
    move-exception v4

    .line 681
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string/jumbo v14, "UsageStatsUploader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " - Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 700
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v6    # "md5":Ljava/lang/String;
    .restart local v7    # "nonce":Ljava/lang/String;
    .restart local v8    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v11    # "sign":Ljava/lang/String;
    .restart local v12    # "ts":Ljava/lang/String;
    .restart local v13    # "tsValue":I
    :catch_2
    move-exception v3

    .line 701
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 704
    const/4 v14, 0x0

    return v14
.end method

.method private uploadEvents(Lorg/json/JSONObject;Z)Z
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "isWifi"    # Z

    .prologue
    const/4 v7, 0x0

    .line 531
    if-nez p1, :cond_0

    .line 532
    return v7

    .line 535
    :cond_0
    if-nez p2, :cond_2

    .line 536
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->checkOnlineMobile(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 538
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader;->checkOfflineMobile(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 543
    :cond_2
    sget-object v4, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "00000000000000000000000000000000000"

    sget-object v5, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 544
    :cond_3
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->requestUmid()V

    .line 546
    :try_start_0
    const-string/jumbo v4, "umid"

    sget-object v5, Lcom/meizu/stats/UsageStatsUploader;->sUMID:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "dataStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 554
    return v7

    .line 537
    .end local v0    # "dataStr":Ljava/lang/String;
    :cond_5
    return v7

    .line 539
    :cond_6
    return v7

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "UsageStatsUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - Cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "dataStr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "UsageStatsUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uploadEvents data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/stats/UsageStatsUploader;->generateMultipartEntity([B)Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;

    move-result-object v3

    .line 561
    .local v3, "uploadData":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    if-eqz v3, :cond_a

    .line 562
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_a

    .line 563
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v4

    if-nez v4, :cond_8

    .line 564
    return v7

    .line 566
    :cond_8
    const-string/jumbo v4, "https://uxip.meizu.com/api/upload"

    invoke-static {v4, v3}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/meizu/stats/UsageStatsUploader;->isUploadSuccess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 567
    const-string/jumbo v4, "UsageStatsUploader"

    const-string/jumbo v5, "uploadEvents, upload successfully."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->clearUploadedEvents()V

    .line 569
    const/4 v4, 0x1

    return v4

    .line 562
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 574
    .end local v2    # "i":I
    :cond_a
    return v7
.end method


# virtual methods
.method checkUpload()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 749
    const-string/jumbo v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUpload, mUpload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v0, :cond_1

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v0, v3}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 754
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v0, v3}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    .line 748
    return-void

    .line 751
    :cond_1
    return-void
.end method

.method eventComein()V
    .locals 6

    .prologue
    .line 498
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v0

    .line 499
    .local v0, "count":I
    const-string/jumbo v1, "UsageStatsUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eventComein, current count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mOnlineBulkLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineBulkLimit:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineBulkLimit:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 497
    :cond_0
    return-void
.end method

.method setBulkLimit(I)V
    .locals 4
    .param p1, "bulkLimit"    # I

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineBulkLimit:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 731
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineBulkLimit:J

    .line 732
    const-string/jumbo v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBulkLimit, mOnlineBulkLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnlineBulkLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->eventComein()V

    .line 729
    :cond_0
    return-void
.end method

.method setUploaded(Z)V
    .locals 3
    .param p1, "upload"    # Z

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 740
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    .line 741
    const-string/jumbo v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUploaded, mUpload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 738
    :cond_1
    return-void
.end method

.method uploadEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 2
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    new-instance v1, Lcom/meizu/stats/UsageStatsUploader$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/stats/UsageStatsUploader$2;-><init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsProxy$Event;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method
