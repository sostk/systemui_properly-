.class public final Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;
.super Ljava/lang/Object;
.source "VpnControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/VpnController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnecting:Z

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mInitializing:Z

.field private mIsInitialized:Z

.field private mNetworkConnected:Z

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mService:Landroid/net/IConnectivityManager;

.field mVpnFilter:Landroid/content/IntentFilter;

.field private final mVpnReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitForReconnect:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;I)V
    .locals 0
    .param p1, "adapterState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setAdapterState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 35
    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mService:Landroid/net/IConnectivityManager;

    .line 52
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 66
    .local v2, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_0

    .line 67
    iget v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-direct {p0, v3}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setAdapterState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnFilter:Landroid/content/IntentFilter;

    .line 74
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->setListening(Z)V

    .line 62
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .line 156
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    goto :goto_0

    .line 154
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;->onVpnStateChanged(ZZZZ)V

    .line 160
    return-void
.end method

.method private setAdapterState(I)V
    .locals 6
    .param p1, "adapterState"    # I

    .prologue
    const/4 v5, 0x2

    .line 165
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    const/4 v1, 0x1

    .line 166
    .local v1, "enabled":Z
    :goto_0
    if-ne p1, v5, :cond_1

    const/4 v0, 0x1

    .line 167
    .local v0, "connecting":Z
    :goto_1
    if-ne p1, v5, :cond_2

    const/4 v2, 0x1

    .line 168
    .local v2, "initializing":Z
    :goto_2
    const/4 v4, 0x6

    if-ne p1, v4, :cond_3

    const/4 v3, 0x1

    .line 169
    .local v3, "waitForReconnect":Z
    :goto_3
    iget-boolean v4, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    if-ne v4, v1, :cond_4

    .line 170
    iget-boolean v4, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    if-ne v4, v0, :cond_4

    .line 171
    iget-boolean v4, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    if-ne v4, v2, :cond_4

    .line 172
    iget-boolean v4, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    if-ne v4, v3, :cond_4

    return-void

    .line 165
    .end local v0    # "connecting":Z
    .end local v1    # "enabled":Z
    .end local v2    # "initializing":Z
    .end local v3    # "waitForReconnect":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "connecting":Z
    goto :goto_1

    .line 167
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "initializing":Z
    goto :goto_2

    .line 168
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "waitForReconnect":Z
    goto :goto_3

    .line 173
    :cond_4
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    .line 174
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    .line 175
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    .line 176
    iput-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    .line 177
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged()V

    .line 164
    return-void
.end method


# virtual methods
.method public addVpnControllerCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V

    .line 79
    return-void
.end method

.method public isVpnConnecting()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mConnecting:Z

    return v0
.end method

.method public isVpnEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mEnabled:Z

    return v0
.end method

.method public isVpnInitializing()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mInitializing:Z

    return v0
.end method

.method public isVpnSupported()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/phone/FlymeNetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mIsInitialized:Z

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkConnected:Z

    return v0
.end method

.method public isVpnWaitForReconnect()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mWaitForReconnect:Z

    return v0
.end method

.method public removeVpnControllerCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 2
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V

    .line 119
    return-void
.end method

.method public setVpnEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
