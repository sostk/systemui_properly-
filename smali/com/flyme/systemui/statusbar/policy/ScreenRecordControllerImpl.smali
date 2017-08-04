.class public Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;
.super Ljava/lang/Object;
.source "ScreenRecordControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;,
        Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ScreenRecordCallback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mReadying:Z

.field private mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

.field private mScreenRecording:Z

.field private mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    .line 26
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.flyme.systemuitools"

    const-string/jumbo v2, "com.flyme.systemuitools.screenrecord.ScreenRecordService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 173
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .line 174
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    goto :goto_0

    .line 172
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;->onScreenRecordChanged(Z)V

    .line 178
    return-void
.end method

.method private sendStateBroadcast(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.FORCE_STATIC_BLUR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method


# virtual methods
.method public addScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    .line 162
    return-void
.end method

.method public isReadying()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    return v0
.end method

.method public isScreenRecordSupported()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isScreenRecording()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    return v0
.end method

.method public removeScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public running(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 72
    iput-boolean v6, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    .line 73
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->sendStateBroadcast(Z)V

    .line 74
    const-string/jumbo v3, "ScreenRecordController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "running  enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mScreenRecording:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mScreenRecordService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p1, :cond_3

    .line 76
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.flyme.systemuitools.screenrecord.ScreenRecordService"

    invoke-static {v3, v4}, Lcom/flyme/systemui/statusbar/utils/ServiceStatusUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    invoke-virtual {v3, v4, v5, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    if-nez v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    invoke-virtual {v3, v4, v5, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 82
    :cond_2
    iput-boolean v8, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    .line 84
    :try_start_0
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    invoke-interface {v3}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    invoke-interface {v3}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v6, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    .line 89
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    if-eqz v3, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 96
    .local v2, "shouldUnbind":Z
    :try_start_1
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    invoke-interface {v3}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 97
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    invoke-interface {v3}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;->stopRecord()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    const/4 v2, 0x1

    .line 99
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    if-eqz v2, :cond_0

    .line 114
    :try_start_2
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 118
    :goto_2
    iput-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    goto :goto_0

    .line 101
    :cond_4
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z

    .line 110
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    if-eqz v2, :cond_0

    .line 114
    :try_start_5
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 115
    :catch_2
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, 0x1

    .line 106
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecording:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v3

    .line 112
    if-eqz v2, :cond_6

    .line 114
    :try_start_7
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mServiceConn:Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$ServiceConn;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 118
    :goto_3
    iput-object v7, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mScreenRecordService:Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    .line 111
    :cond_6
    throw v3

    .line 115
    :catch_3
    move-exception v1

    .line 116
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 116
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public takeScreenRecord(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 56
    const-string/jumbo v0, "ScreenRecordController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeScreenRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method
