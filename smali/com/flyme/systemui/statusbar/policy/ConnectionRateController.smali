.class public Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
.super Ljava/lang/Object;
.source "ConnectionRateController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;,
        Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;,
        Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isShowConnectionRate:Z

.field private mBluetoothConnection:Z

.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionRateSampler:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

.field private mContext:Landroid/content/Context;

.field private mDataConnection:Z

.field private mGentleCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHideAnyWay:Z

.field private mLastConnectionRate:D

.field private mMainHandler:Landroid/os/Handler;

.field private mScreenOn:Z

.field private mShowConnectionRate:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mConnectionRateSampler:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D
    .locals 2

    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    return-wide v0
.end method

.method static synthetic -get5(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mConnectionRateSampler:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Z)V
    .locals 0
    .param p1, "screenOnChange"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V
    .locals 1
    .param p1, "rate"    # D

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate(D)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "ConnectionRateManage"

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    .line 46
    iput v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    .line 118
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;-><init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    .line 170
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mContext:Landroid/content/Context;

    .line 171
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHandler:Landroid/os/Handler;

    .line 172
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 173
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "mz_current_network_speed"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    .local v2, "toggleConnectionRateUri":Landroid/net/Uri;
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;-><init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Landroid/os/Handler;)V

    .line 180
    .local v0, "mToggleConnectionRateObserver":Landroid/database/ContentObserver;
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate()V

    .line 181
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 169
    return-void
.end method

.method private applyConnectionRateChange()V
    .locals 6

    .prologue
    .line 212
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    monitor-enter v3

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callBack$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;

    .line 214
    .local v0, "callBack":Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    iget-wide v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    invoke-interface {v0, v2, v4, v5}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;->onConnectionRateChange(ZD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 212
    .end local v0    # "callBack":Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;
    .end local v1    # "callBack$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callBack$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 211
    return-void
.end method

.method private toggleConnectionRate(Z)V
    .locals 2
    .param p1, "screenOnChange"    # Z

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate()Z

    move-result v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    .line 198
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 193
    return-void

    .line 198
    :cond_2
    const/16 v0, 0x3ea

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateConnectionRate(D)V
    .locals 5
    .param p1, "rate"    # D

    .prologue
    .line 155
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 156
    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->applyConnectionRateChange()V

    .line 154
    return-void

    .line 159
    :cond_0
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    .line 160
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 161
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    goto :goto_0

    .line 163
    :cond_1
    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    goto :goto_0
.end method


# virtual methods
.method public addCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V
    .locals 4
    .param p1, "callBack"    # Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 223
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    iget-wide v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    invoke-interface {p1, v0, v2, v3}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;->onConnectionRateChange(ZD)V

    .line 219
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isShowConnectionRate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHideAnyWay:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBluetoothDeviceDiscovered(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V
    .locals 0
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .prologue
    .line 250
    return-void
.end method

.method public onBluetoothDiscoveryFinished()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onBluetoothDiscoveryStarted()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onBluetoothPairedDevicesChanged()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onBluetoothStateChange(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "connecting"    # Z

    .prologue
    .line 238
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v0

    .line 239
    .local v0, "connected":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    .line 240
    .end local v0    # "connected":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothTetheringOn()Z

    move-result v0

    .line 241
    :goto_1
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setBluetoothConnection(Z)V

    .line 237
    return-void

    .line 239
    .restart local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "connected":Z
    goto :goto_0

    .line 240
    .end local v0    # "connected":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_1
.end method

.method public onDataConnection(Z)V
    .locals 0
    .param p1, "connection"    # Z

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setDataConnection(Z)V

    .line 265
    return-void
.end method

.method protected setBluetoothConnection(Z)V
    .locals 3
    .param p1, "bluetoothConnection"    # Z

    .prologue
    .line 69
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothConnection: new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    if-eq v0, p1, :cond_0

    .line 71
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    .line 72
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    .line 68
    :cond_0
    return-void
.end method

.method public setBluetoothController(Lcom/android/systemui/statusbar/policy/BluetoothController;)V
    .locals 0
    .param p1, "bluetoothController"    # Lcom/android/systemui/statusbar/policy/BluetoothController;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 48
    return-void
.end method

.method protected setDataConnection(Z)V
    .locals 3
    .param p1, "dataConnection"    # Z

    .prologue
    .line 61
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DataConnection: new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    if-eq v0, p1, :cond_0

    .line 63
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    .line 64
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    .line 60
    :cond_0
    return-void
.end method

.method public setHideAnyWay(Z)V
    .locals 3
    .param p1, "hideAnyWay"    # Z

    .prologue
    .line 53
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HideAnyWay: new ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHideAnyWay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHideAnyWay:Z

    if-eq v0, p1, :cond_0

    .line 55
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHideAnyWay:Z

    .line 56
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    .line 52
    :cond_0
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 5
    .param p1, "screenOn"    # Z

    .prologue
    const/16 v4, 0x3eb

    .line 77
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ScreenOn: new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 79
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    :cond_0
    return-void

    .line 81
    :cond_1
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public toggleConnectionRate()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate(Z)V

    .line 203
    return-void
.end method

.method public updateConnectionRate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "mz_current_network_speed"

    const/4 v3, -0x2

    .line 185
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 187
    .local v0, "showConnectionRate":Z
    :goto_0
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    if-eq v0, v1, :cond_0

    .line 188
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    .line 189
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    .line 184
    :cond_0
    return-void

    .line 185
    .end local v0    # "showConnectionRate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showConnectionRate":Z
    goto :goto_0
.end method
