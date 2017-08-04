.class public Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;
    }
.end annotation


# static fields
.field private static final CONNECTION_STATES:[I

.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnecting:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoveredDeviceInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFireDeviceDiscoveredRunnable:Ljava/lang/Runnable;

.field private final mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

.field private mLastDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

.field private mRequestRescanAfterEnabled:Z

.field private mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

.field private mTurningOff:Z

.field private mTurningOnManually:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRequestRescanAfterEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getProfileFromAction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;S)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # S

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;S)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateBondedDevices()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->rescanForBluetoothDevices()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;I)V
    .locals 0
    .param p1, "adapterState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V
    .locals 0
    .param p1, "connecting"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setConnecting(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedDevices()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;S)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # S

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->deviceDiscovered(Landroid/bluetooth/BluetoothDevice;S)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->discoveryFinished()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->discoveryStarted()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V
    .locals 0
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireDeviceDiscovered(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireDiscoveryFinished()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireDiscoveryStarted()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleConnectionChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 70
    const-string/jumbo v0, "BluetoothController"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 77
    const/4 v0, 0x0

    .line 79
    const/4 v1, 0x1

    .line 80
    const/4 v2, 0x2

    .line 76
    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    .line 97
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    .line 600
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 892
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mFireDeviceDiscoveredRunnable:Ljava/lang/Runnable;

    .line 990
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 112
    const-string/jumbo v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 113
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 115
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v2, "Default BT adapter not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->register()V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedDevices()V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->bindAllProfiles()V

    .line 107
    return-void
.end method

.method private bindAllProfiles()V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 521
    return-void
.end method

.method private connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V
    .locals 23
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .param p2, "connect"    # Z

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 297
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 300
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 301
    .local v7, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-nez v7, :cond_2

    return-void

    .line 303
    :cond_2
    if-eqz p2, :cond_4

    const-string/jumbo v2, "connect"

    .line 304
    .local v2, "action":Ljava/lang/String;
    :goto_0
    sget-boolean v18, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v18, :cond_3

    const-string/jumbo v18, "BluetoothController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v17

    .line 306
    .local v17, "uuids":[Landroid/os/ParcelUuid;
    if-nez v17, :cond_5

    .line 307
    const-string/jumbo v18, "BluetoothController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "No uuids returned, aborting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 303
    .end local v2    # "action":Ljava/lang/String;
    .end local v17    # "uuids":[Landroid/os/ParcelUuid;
    :cond_4
    const-string/jumbo v2, "disconnect"

    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    .line 310
    .restart local v17    # "uuids":[Landroid/os/ParcelUuid;
    :cond_5
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 311
    .local v11, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_8

    .line 313
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v19, v18

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v16, v17, v19

    .line 314
    .local v16, "uuid":Landroid/os/ParcelUuid;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToProfile(Landroid/os/ParcelUuid;)I

    move-result v10

    .line 315
    .local v10, "profile":I
    if-nez v10, :cond_7

    .line 316
    const-string/jumbo v18, "BluetoothController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Device "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " has an unsupported uuid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 317
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v22

    .line 316
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_6
    :goto_2
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto :goto_1

    .line 320
    :cond_7
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 321
    .local v4, "connected":Z
    if-nez v4, :cond_6

    .line 322
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 327
    .end local v4    # "connected":Z
    .end local v10    # "profile":I
    .end local v16    # "uuid":Landroid/os/ParcelUuid;
    :cond_8
    iget-object v11, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    .line 329
    :cond_9
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_f

    .line 330
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 331
    .restart local v10    # "profile":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v18

    if-ltz v18, :cond_e

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothProfile;

    .line 335
    .local v3, "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->getProfile(Landroid/bluetooth/BluetoothProfile;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v9

    .line 337
    .local v9, "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    instance-of v0, v3, Landroid/bluetooth/BluetoothPan;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object v12, v3

    .line 338
    check-cast v12, Landroid/bluetooth/BluetoothPan;

    .line 339
    .local v12, "service":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 340
    .local v15, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v15, :cond_a

    .line 341
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "sink$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 342
    .local v13, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v12, v13}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_4

    .line 347
    .end local v12    # "service":Landroid/bluetooth/BluetoothPan;
    .end local v13    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "sink$iterator":Ljava/util/Iterator;
    .end local v15    # "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_a
    if-eqz p2, :cond_c

    invoke-interface {v9, v5}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 348
    .local v8, "ok":Z
    :goto_5
    sget-boolean v18, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v18, :cond_b

    const-string/jumbo v19, "BluetoothController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 349
    if-eqz v8, :cond_d

    const-string/jumbo v18, "succeeded"

    .line 348
    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v3    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    .end local v8    # "ok":Z
    .end local v9    # "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 347
    .restart local v3    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    .restart local v9    # "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    :cond_c
    invoke-interface {v9, v5}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .restart local v8    # "ok":Z
    goto :goto_5

    .line 349
    :cond_d
    const-string/jumbo v18, "failed"

    goto :goto_6

    .line 351
    .end local v3    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    .end local v8    # "ok":Z
    .end local v9    # "p":Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    :cond_e
    const-string/jumbo v18, "BluetoothController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable get get Profile for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 295
    .end local v10    # "profile":I
    :cond_f
    return-void
.end method

.method private static connectionStateToPairedDeviceState(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 275
    sget-object v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    aget v0, v1, p0

    .line 277
    .local v0, "state":I
    const-string/jumbo v1, "BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectionStateToPairedDeviceState ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    return v1

    .line 280
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    return v1

    .line 281
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    return v1

    .line 282
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    return v1
.end method

.method private deviceDiscovered(Landroid/bluetooth/BluetoothDevice;S)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # S

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 953
    return-void
.end method

.method private discoveryFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 948
    return-void
.end method

.method private discoveryStarted()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 944
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 943
    return-void
.end method

.method private fireDeviceDiscovered(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V
    .locals 4
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .prologue
    .line 915
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 916
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 917
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDeviceDiscovered(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 915
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 913
    return-void
.end method

.method private fireDiscoveryFinished()V
    .locals 4

    .prologue
    .line 935
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 937
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDiscoveryFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 935
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 933
    return-void
.end method

.method private fireDiscoveryStarted()V
    .locals 4

    .prologue
    .line 925
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 926
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 927
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDiscoveryStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 925
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 923
    return-void
.end method

.method private firePairedDevicesChanged()V
    .locals 4

    .prologue
    .line 541
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 542
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 543
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothPairedDevicesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 541
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 539
    return-void
.end method

.method private fireStateChange()V
    .locals 4

    .prologue
    .line 568
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 570
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 568
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 566
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(ZZ)V

    .line 576
    return-void
.end method

.method private getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;",
            ">;)[",
            "Landroid/bluetooth/BluetoothDevice;"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "deviceInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;>;"
    monitor-enter p1

    .line 447
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 448
    .local v0, "devices":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 450
    return-object v0

    .line 446
    .end local v0    # "devices":[Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method private static getProfileFromAction(Ljava/lang/String;)I
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 581
    const-string/jumbo v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x2

    return v0

    .line 583
    :cond_0
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_1
    const-string/jumbo v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    const/16 v0, 0xb

    return v0

    .line 587
    :cond_2
    const-string/jumbo v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    const/16 v0, 0x10

    return v0

    .line 589
    :cond_3
    const-string/jumbo v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 590
    const/4 v0, 0x4

    return v0

    .line 591
    :cond_4
    const-string/jumbo v0, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 592
    const/16 v0, 0x9

    return v0

    .line 593
    :cond_5
    const-string/jumbo v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    const/4 v0, 0x5

    return v0

    .line 596
    :cond_6
    const-string/jumbo v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, -0x1

    return v0
.end method

.method private handleConnectionChange()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 500
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 501
    .local v1, "devices":[Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    .line 502
    sget-object v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    aget v3, v4, v3

    if-eq v3, v7, :cond_0

    .line 505
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 507
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 508
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 509
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v2, :cond_1

    .line 510
    sget-object v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    iget v6, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    aget v5, v5, v6

    if-ne v5, v7, :cond_1

    .line 512
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 496
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_0
    return-void

    .line 507
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private handleDeviceDiscovered(Landroid/bluetooth/BluetoothDevice;S)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # S

    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    return-void

    .line 878
    :cond_0
    if-eqz p1, :cond_1

    .line 879
    const-string/jumbo v1, "BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDeviceDiscovered addr :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/4 v0, 0x1

    .line 882
    .local v0, "bonded":Z
    :goto_0
    if-nez v0, :cond_2

    .line 883
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateDiscoveredInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v1

    iput-short p2, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->rssi:S

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mFireDeviceDiscoveredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mFireDeviceDiscoveredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mFireDeviceDiscoveredRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 876
    return-void

    .line 881
    .end local v0    # "bonded":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "bonded":Z
    goto :goto_0
.end method

.method private handleUpdateBondedDevices()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 383
    const-string/jumbo v9, "BluetoothController"

    const-string/jumbo v11, "handleUpdateBondedDevices"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v9, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 388
    .local v4, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 389
    .local v6, "devices":[Landroid/bluetooth/BluetoothDevice;
    array-length v11, v6

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v6, v9

    .line 390
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 391
    .local v7, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v7, :cond_1

    .line 392
    iput-boolean v10, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    .line 389
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 396
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_2
    const/4 v1, 0x0

    .line 397
    .local v1, "bondedCount":I
    const/4 v8, 0x0

    .line 398
    .local v8, "lastBonded":Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_5

    .line 399
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v8    # "lastBonded":Landroid/bluetooth/BluetoothDevice;
    .local v3, "bondedDevice$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 400
    .local v2, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_4

    const/4 v0, 0x1

    .line 401
    .local v0, "bonded":Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v9

    iput-boolean v0, v9, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    .line 402
    if-eqz v0, :cond_3

    .line 403
    add-int/lit8 v1, v1, 0x1

    .line 404
    move-object v8, v2

    .line 406
    .local v8, "lastBonded":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v9, "BluetoothController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleUpdateBondedDevices lastBonded="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 400
    .end local v0    # "bonded":Z
    .end local v8    # "lastBonded":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "bonded":Z
    goto :goto_2

    .line 410
    .end local v0    # "bonded":Z
    .end local v2    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "bondedDevice$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v9, :cond_6

    const/4 v9, 0x1

    if-ne v1, v9, :cond_6

    .line 411
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 413
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnectionStates()V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    .line 381
    return-void
.end method

.method private handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v6, 0x0

    .line 455
    const-string/jumbo v5, "BluetoothController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateConnectionState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 456
    const-string/jumbo v8, " "

    .line 455
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 456
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v8

    .line 455
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 457
    const-string/jumbo v8, " "

    .line 455
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 457
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v8

    .line 455
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v3

    .line 459
    .local v3, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v4, 0x0

    .line 460
    .local v4, "stateIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 461
    sget-object v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    aget v5, v5, v2

    if-ne v5, p3, :cond_2

    .line 462
    move v4, v2

    .line 466
    :cond_0
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 469
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 470
    .local v0, "N":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 471
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    if-le v5, v7, :cond_1

    .line 472
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 470
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 460
    .end local v0    # "N":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .restart local v0    # "N":I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v5, p1, :cond_6

    move-object v5, v6

    :goto_2
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

    .line 478
    const/4 v5, 0x2

    if-ne p3, v5, :cond_7

    .line 479
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    .line 482
    .local v1, "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    instance-of v5, v1, Landroid/bluetooth/BluetoothPan;

    if-eqz v5, :cond_4

    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

    .line 487
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_5

    .line 488
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 454
    .end local v1    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    :cond_5
    :goto_3
    return-void

    .line 476
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    .line 492
    :cond_7
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3
.end method

.method private handleUpdateConnectionStates()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 419
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 421
    .local v1, "devices":[Landroid/bluetooth/BluetoothDevice;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

    .line 423
    array-length v9, v1

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v0, v1, v7

    .line 424
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v3

    .line 425
    .local v3, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    iput v8, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 426
    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 427
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 430
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v6, v0}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 431
    .local v5, "state":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-direct {p0, v0, v6, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v5    # "state":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 434
    const-string/jumbo v6, "BluetoothController"

    const-string/jumbo v10, "getConnectionState is error!"

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 423
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 439
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .end local v4    # "j":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleConnectionChange()V

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    .line 417
    return-void
.end method

.method private static infoToString(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->CONNECTION_STATES:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string/jumbo v1, ",bonded="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string/jumbo v1, ",profiles="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->profilesToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static profilesToString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 163
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 166
    if-eqz v2, :cond_0

    .line 167
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private rescanForBluetoothDevices()V
    .locals 3

    .prologue
    .line 958
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 965
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRequestRescanAfterEnabled:Z

    .line 957
    return-void

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    .line 960
    .local v0, "good":Z
    if-nez v0, :cond_0

    .line 961
    const-string/jumbo v1, "BluetoothController"

    const-string/jumbo v2, "start discovery failed again, internal error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAdapterState(I)V
    .locals 6
    .param p1, "adapterState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 550
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 551
    .local v0, "enabled":Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 553
    const-string/jumbo v1, "BluetoothController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "adapterState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTurningOff:Z

    .line 555
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTurningOnManually:Z

    .line 557
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    .line 549
    return-void

    .line 550
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 554
    goto :goto_1

    :cond_2
    move v2, v3

    .line 555
    goto :goto_2
.end method

.method private setConnecting(Z)V
    .locals 1
    .param p1, "connecting"    # Z

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 562
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    .line 560
    return-void
.end method

.method private updateBondedDevices()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 361
    return-void
.end method

.method private updateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 372
    return-void
.end method

.method private updateConnectionStates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 366
    return-void
.end method

.method private updateDiscoveredInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 901
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 903
    .local v0, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v0, :cond_1

    .line 904
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    if-eqz p1, :cond_0

    .line 906
    const-string/jumbo v1, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDiscoveredInfo getAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " getAliasName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 908
    return-object v0

    .line 903
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    goto :goto_0

    .line 901
    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 712
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 714
    .local v0, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v0, :cond_0

    .line 715
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 716
    return-object v0

    .line 714
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    goto :goto_0

    .line 712
    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 175
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelScanForBluetoothDevices()V
    .locals 2

    .prologue
    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRequestRescanAfterEnabled:Z

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "scanning is cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "can not cancel scanning, internal error."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
    .locals 1
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V

    .line 286
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v3, "BluetoothController state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v3, "  mTurningOnManually="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTurningOnManually:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 130
    const-string/jumbo v3, "  mAdapter="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v3, "  mEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 132
    const-string/jumbo v3, "  mConnecting="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 133
    const-string/jumbo v3, "  mLastDevice="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v3, "  mCallbacks.size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 135
    const-string/jumbo v3, "  mProfiles="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->profilesToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v3, "  mDeviceInfo.size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 139
    .local v1, "devices":[Landroid/bluetooth/BluetoothDevice;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 140
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 141
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const-string/jumbo v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    const/16 v5, 0x28

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 144
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidsToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    const/16 v5, 0x29

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 146
    if-eqz v2, :cond_0

    .line 147
    const-string/jumbo v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->infoToString(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_1
    return-void
.end method

.method public getDiscoveredDevices()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Device;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 845
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v6

    .line 848
    :cond_0
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 857
    .local v4, "rt":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/systemui/statusbar/policy/BluetoothController$Device;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 858
    .local v1, "devices":[Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    .line 859
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 860
    .local v3, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v3, :cond_1

    .line 861
    new-instance v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;-><init>()V

    .line 862
    .local v2, "discovered":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->id:Ljava/lang/String;

    .line 863
    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->tag:Ljava/lang/Object;

    .line 864
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->name:Ljava/lang/String;

    .line 865
    iget-short v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->rssi:S

    iput-short v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->rssi:S

    .line 866
    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 867
    const-string/jumbo v5, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDiscoveredDevices paired.id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 868
    const-string/jumbo v9, " paired.tag="

    .line 867
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 868
    iget-object v9, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->tag:Ljava/lang/Object;

    .line 867
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 869
    const-string/jumbo v9, " paired.name="

    .line 867
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 869
    iget-object v9, v2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->name:Ljava/lang/String;

    .line 867
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v2    # "discovered":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 864
    .restart local v2    # "discovered":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 873
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "discovered":Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    .end local v3    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_3
    return-object v4
.end method

.method public getLastDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPairedDevices()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 255
    .local v4, "rt":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothDevices(Landroid/util/ArrayMap;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 256
    .local v1, "devices":[Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 257
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 258
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v2, :cond_0

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    if-eqz v7, :cond_0

    .line 259
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;-><init>()V

    .line 260
    .local v3, "paired":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->id:Ljava/lang/String;

    .line 261
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    .line 262
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    .line 263
    iget v7, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToPairedDeviceState(I)I

    move-result v7

    iput v7, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    .line 264
    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo v7, "BluetoothController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPairedDevices paired.id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 266
    const-string/jumbo v9, " paired.tag="

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 266
    iget-object v9, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 267
    const-string/jumbo v9, " paired.name="

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 267
    iget-object v9, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 268
    const-string/jumbo v9, " paired.state="

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 268
    iget v9, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v3    # "paired":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_1
    return-object v4
.end method

.method public isBluetoothConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 200
    :cond_0
    return v0
.end method

.method public isBluetoothConnecting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 206
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 207
    goto :goto_0

    :cond_1
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothTetheringOn()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTetheringDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothTurningOff()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 982
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBluetoothTurningOn()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTurningOnManually:Z

    return v0
.end method

.method public pair(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V
    .locals 6
    .param p1, "d"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .prologue
    const/4 v5, 0x1

    .line 825
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 829
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->tag:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 830
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->tag:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 831
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 832
    .local v1, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pair "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v2

    if-nez v2, :cond_4

    .line 835
    const-string/jumbo v2, "BluetoothController"

    const-string/jumbo v3, "bond error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 838
    const-string/jumbo v3, "bluetooth_connect_after_pair"

    .line 837
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 839
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 840
    const-string/jumbo v3, "bluetooth_host_start_pair"

    .line 839
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 823
    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 185
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public scanForBluetoothDevices()V
    .locals 6

    .prologue
    .line 790
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    .line 791
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-nez v3, :cond_1

    .line 794
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 795
    :try_start_0
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v5, "DiscoveredDeviceInfo.clear !"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 799
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v2

    .line 801
    .local v2, "good":Z
    if-nez v2, :cond_0

    .line 802
    const-string/jumbo v3, "BluetoothController"

    const-string/jumbo v4, "start discovery failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRequestRescanAfterEnabled:Z

    .line 789
    .end local v2    # "good":Z
    :cond_0
    return-void

    .line 794
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 809
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 810
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 811
    if-eqz v0, :cond_3

    .line 812
    const-string/jumbo v3, "BluetoothController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DiscoveredDeviceInfo.remove getAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " getAliasName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDiscoveredDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 213
    if-eqz p1, :cond_2

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTurningOff:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mTurningOnManually:Z

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method
