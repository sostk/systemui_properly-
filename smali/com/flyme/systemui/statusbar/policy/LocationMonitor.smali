.class public Lcom/flyme/systemui/statusbar/policy/LocationMonitor;
.super Ljava/lang/Object;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;,
        Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;
    }
.end annotation


# static fields
.field private static final mHighPowerRequestAppOpArray:[I

.field private static final mWhiteList:[Ljava/lang/String;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mGpsNotificationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->denyGpsRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->updateNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [I

    const/16 v1, 0x2a

    aput v1, v0, v2

    .line 37
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mHighPowerRequestAppOpArray:[I

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "com.meizu.flyme.service.find"

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "com.android.phone"

    aput-object v1, v0, v3

    .line 47
    const-string/jumbo v1, "com.meizu.net.map"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "com.android.location.fused"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 44
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mWhiteList:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 55
    iput-object v4, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    .line 58
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v3, "gpsInUsingFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    .line 67
    .local v1, "highPowerReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 69
    new-instance v7, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;

    invoke-direct {v7, p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    .line 86
    .local v7, "onClickReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v6, "killFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "action_gps_in_using_kill_clicked"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "action_gps_in_using_deny_gps_request"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method private compareList(Ljava/util/List;Ljava/util/List;)Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 320
    new-instance v2, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;

    invoke-direct {v2, p0, v4}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;)V

    .line 322
    .local v2, "result":Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;, "Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v3, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    iput-object v3, v2, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    .line 326
    iget-object v4, v2, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 327
    if-eqz p2, :cond_1

    .line 328
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    .local v0, "r":Ljava/lang/String;
    iget-object v4, v2, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    iget-object v4, v2, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    .end local v0    # "r":Ljava/lang/String;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method private denyGpsRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_op_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "opsName":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    return-void
.end method

.method private getForgroundPackage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 135
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    check-cast v0, Landroid/app/ActivityManager;

    .line 136
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    return-object v6

    .line 140
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 141
    .local v1, "currentTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getUidFromPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 274
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 276
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3

    .line 277
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationMonitor"

    const-string/jumbo v4, "getApplicationInfo error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v3, -0x1

    return v3
.end method

.method private getUsingGpsApp()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v10, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v9, v10}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 96
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v8, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_0

    .line 102
    return-object v8

    .line 104
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    .local v1, "numPackages":I
    const/4 v5, 0x0

    .local v5, "packageInd":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 106
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 107
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    .line 105
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 113
    .local v0, "numOps":I
    const/4 v4, 0x0

    .local v4, "opInd":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 114
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 117
    .local v3, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_4

    .line 113
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 126
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 130
    .end local v0    # "numOps":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_5
    return-object v8
.end method

.method private killPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 286
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 34

    .prologue
    monitor-enter p0

    .line 146
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "notification"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 145
    check-cast v20, Landroid/app/NotificationManager;

    .line 148
    .local v20, "notificationManager":Landroid/app/NotificationManager;
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->getUsingGpsApp()Ljava/util/List;

    move-result-object v25

    .line 149
    .local v25, "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v30, "LocationMonitor"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "APPS :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-nez v25, :cond_0

    monitor-exit p0

    .line 151
    return-void

    .line 155
    :cond_0
    :try_start_1
    sget-object v31, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mWhiteList:[Ljava/lang/String;

    const/16 v30, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_0
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    aget-object v27, v31, v30

    .line 156
    .local v27, "temp":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 157
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 161
    .end local v27    # "temp":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    .line 162
    .local v26, "runningPackagesLength":I
    if-nez v26, :cond_4

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->cancel()V

    .line 166
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    .line 176
    :cond_3
    :goto_1
    const-string/jumbo v30, "LocationMonitor"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mGpsNotificationsList "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->compareList(Ljava/util/List;Ljava/util/List;)Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;

    move-result-object v24

    .line 178
    .local v24, "result":Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;, "Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult<Ljava/lang/String;>;"
    const-string/jumbo v30, "LocationMonitor"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "result :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v23

    .line 181
    .local v23, "removedLen":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v23

    if-ge v15, v0, :cond_5

    .line 182
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 183
    .local v21, "packageName":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "LocationMonitor_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->getUidFromPackage(Ljava/lang/String;)I

    move-result v31

    sget-object v32, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 170
    .end local v15    # "i":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "removedLen":I
    .end local v24    # "result":Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;, "Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    move-object/from16 v30, v0

    if-nez v30, :cond_3

    .line 171
    new-instance v30, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v20    # "notificationManager":Landroid/app/NotificationManager;
    .end local v25    # "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "runningPackagesLength":I
    :catchall_0
    move-exception v30

    monitor-exit p0

    throw v30

    .line 188
    .restart local v15    # "i":I
    .restart local v20    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v23    # "removedLen":I
    .restart local v24    # "result":Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;, "Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult<Ljava/lang/String;>;"
    .restart local v25    # "runningPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "runningPackagesLength":I
    :cond_5
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->getForgroundPackage()Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "forgroundPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 191
    .local v22, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 192
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    .line 195
    .local v6, "addedLen":I
    const/4 v15, 0x0

    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    if-ge v15, v6, :cond_7

    .line 197
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 199
    .restart local v21    # "packageName":Ljava/lang/String;
    const-string/jumbo v30, "LocationMonitor"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " is using GPS"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 201
    const-string/jumbo v30, "LocationMonitor"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " is ForgroundPackage"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 206
    :cond_6
    const/16 v30, 0x80

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 212
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_4
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 213
    .local v28, "titleString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0900ee

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "contentString":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v9, "clickIntent":Landroid/content/Intent;
    const-string/jumbo v30, "android.settings.APPLICATION_DETAILS_SETTINGS"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v30, "package"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 220
    .local v29, "uri":Landroid/net/Uri;
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    new-instance v30, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const-wide/16 v32, 0x0

    .line 222
    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v30

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    .line 227
    const/16 v33, 0x0

    .line 226
    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 222
    invoke-virtual/range {v30 .. v31}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v30

    .line 228
    const/16 v31, -0x2

    .line 222
    invoke-virtual/range {v30 .. v31}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v30

    .line 229
    const v31, 0x7f020301

    .line 222
    invoke-virtual/range {v30 .. v31}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 231
    .local v8, "builder":Landroid/app/Notification$Builder;
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v30, "action_gps_in_using_deny_gps_request"

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v12, "denyIntent":Landroid/content/Intent;
    const-string/jumbo v30, "package"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 234
    .local v11, "denyButtonIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0900f0

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1, v11}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 237
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v30, "action_gps_in_using_kill_clicked"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v18, "killIntent":Landroid/content/Intent;
    const-string/jumbo v30, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v18

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 240
    .local v17, "killButtonIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0900ef

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 243
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 245
    .local v19, "notification":Landroid/app/Notification;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    move-object/from16 v30, v0

    const v31, 0x7f020302

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/app/NotificationExt;->notificationIcon:I

    .line 248
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "LocationMonitor_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v31, v0

    .line 249
    sget-object v32, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 248
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v19

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 207
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "builder":Landroid/app/Notification$Builder;
    .end local v9    # "clickIntent":Landroid/content/Intent;
    .end local v10    # "contentString":Ljava/lang/String;
    .end local v11    # "denyButtonIntent":Landroid/app/PendingIntent;
    .end local v12    # "denyIntent":Landroid/content/Intent;
    .end local v17    # "killButtonIntent":Landroid/app/PendingIntent;
    .end local v18    # "killIntent":Landroid/content/Intent;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v28    # "titleString":Ljava/lang/String;
    .end local v29    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 208
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v30, "LocationMonitor"

    const-string/jumbo v31, "getApplicationInfo error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 255
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "packageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 256
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 257
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 258
    .restart local v21    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 259
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "LocationMonitor_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->getUidFromPackage(Ljava/lang/String;)I

    move-result v31

    sget-object v32, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 259
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 261
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 266
    .end local v21    # "packageName":Ljava/lang/String;
    :cond_9
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v30

    if-nez v30, :cond_a

    .line 267
    const-string/jumbo v30, "LocationMonitor"

    const-string/jumbo v31, "clear mGpsNotificationsList"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    monitor-exit p0

    .line 144
    return-void
.end method
