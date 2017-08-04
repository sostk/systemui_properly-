.class final Lcom/meizu/stats/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsManager$RecordHandler;,
        Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

.field private mOnline:Z

.field private mUpload:Z

.field private volatile mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

.field private mUsageStatsManagerThread:Landroid/os/HandlerThread;

.field private mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;


# direct methods
.method static synthetic -get0(Lcom/meizu/stats/UsageStatsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/stats/UsageStatsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/stats/UsageStatsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/stats/UsageStatsManager;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    .locals 1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/stats/UsageStatsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/stats/UsageStatsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/stats/UsageStatsManager;Lcom/meizu/stats/IUsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;
    .locals 0

    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/stats/UsageStatsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManager;->init()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "UsageStatsManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    .line 56
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    .line 57
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;-><init>(Lcom/meizu/stats/UsageStatsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    .line 59
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    new-instance v1, Lcom/meizu/stats/UsageStatsManager$1;

    invoke-direct {v1, p0}, Lcom/meizu/stats/UsageStatsManager$1;-><init>(Lcom/meizu/stats/UsageStatsManager;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 69
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/stats/UsageStatsManager;->isMultiProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    monitor-enter v3

    .line 71
    :try_start_0
    new-instance v2, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;-><init>(Lcom/meizu/stats/UsageStatsManager;Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;)V

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    .line 72
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/meizu/stats/UsageStatsManagerService;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "online"

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string/jumbo v2, "upload"

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string/jumbo v2, "UsageStatsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindService, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 67
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 79
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "UsageStatsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    invoke-static {v2, v3, v4}, Lcom/meizu/stats/UsageStatsManagerServer;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsManagerServer;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

    goto :goto_1
.end method

.method private static isMultiProcess(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 93
    const-class v5, Lcom/meizu/stats/UsageStatsManagerService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    .line 95
    const/4 v3, 0x1

    return v3

    .line 97
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "UsageStatsManager"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v6
.end method


# virtual methods
.method public onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method public onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method
