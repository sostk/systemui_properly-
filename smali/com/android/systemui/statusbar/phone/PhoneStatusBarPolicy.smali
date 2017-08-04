.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mBluetoothBatteryLevelArray:[I

.field public static mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;


# instance fields
.field private mBattertEventType:I

.field private mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBatteryLevel:I

.field private mBluetoothDownUpIcon:I

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetConnected:Z

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetMic:I

.field private mHeadsetState:I

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneCall:Z

.field private mReceiverMsgHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mVolumeVisible:Z

.field private mWbAmrState:Z

.field private mZen:I

.field private mZenVisible:Z

.field private mic_no_flag:I

.field private mic_with_flag:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSetMz(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    .line 59
    return-void

    .line 114
    nop

    :array_0
    .array-data 4
        0x7f020594
        0x7f020595
        0x7f020596
        0x7f020597
        0x7f020598
        0x7f020599
        0x7f02059a
        0x7f02059b
        0x7f02059c
        0x7f02059d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p3, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 77
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    .line 81
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 87
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 94
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 96
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    .line 97
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    .line 98
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    .line 111
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mWbAmrState:Z

    .line 112
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneCall:Z

    .line 128
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    .line 130
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    .line 136
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mReceiverMsgHandler:Landroid/os/Handler;

    .line 152
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 625
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 190
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 191
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 194
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, "android.btopp.intent.action.BT_OPP_DATA_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "android.bluetooth.headset.intent.category.companyid.76"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 213
    sget-object v2, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v2, "android.intent.action.ACTION_WB_AMR_STATE_NOTIFY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "amr_wb"

    const v4, 0x7f020366

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "amr_wb"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 221
    :cond_0
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v2, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "headset"

    const v4, 0x1080083

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "headset"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "tty"

    const v4, 0x7f0205ff

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "tty"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "cdma_eri"

    const v4, 0x7f0205df

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "cdma_eri"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "alarm_clock"

    const v4, 0x7f02057a

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "alarm_clock"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "sync_active"

    const v4, 0x7f0205fc

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "sync_active"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "zen"

    const v4, 0x7f020623

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "zen"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "volume"

    const v4, 0x7f0205de

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "volume"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "cast"

    const v4, 0x7f020592

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "cast"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "hotspot"

    const v4, 0x7f0205c0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "hotspot"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 269
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mReceiverMsgHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 273
    .local v1, "msg1":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 274
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mReceiverMsgHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    return-void
.end method

.method private final isBluetoothConnected()Z
    .locals 3

    .prologue
    .line 432
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 433
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 435
    const/4 v1, 0x1

    return v1

    .line 438
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateAlarm()V
    .locals 4

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 319
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 320
    .local v1, "alarmSet":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "alarm_clock"

    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 317
    return-void

    .line 319
    .end local v1    # "alarmSet":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "alarmSet":Z
    goto :goto_0
.end method

.method private final updateBluetooth()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 413
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 414
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const v2, 0x7f020593

    .line 416
    .local v2, "iconId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f090195

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 419
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 420
    const v2, 0x7f02059e

    .line 421
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f090194

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v5, "bluetooth"

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 412
    return-void

    :cond_1
    move v3, v4

    .line 418
    goto :goto_0

    .line 424
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    const v4, 0x7f020593

    .line 443
    .local v4, "iconId":I
    const/4 v2, 0x0

    .line 444
    .local v2, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 446
    const-string/jumbo v10, "android.bluetooth.adapter.extra.STATE"

    const/high16 v11, -0x80000000

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 447
    .local v8, "state":I
    const/16 v10, 0xc

    if-ne v8, v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 449
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSetMz(II)V

    .line 571
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v8    # "state":I
    :cond_0
    :goto_1
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 572
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    .line 575
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v11, "bluetooth"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v4, v12, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 576
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v11, "bluetooth"

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v10, v11, v12}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 441
    return-void

    .line 447
    .restart local v2    # "contentDescription":Ljava/lang/String;
    .restart local v8    # "state":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 452
    .end local v8    # "state":I
    :cond_3
    const-string/jumbo v10, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 453
    const-string/jumbo v10, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 454
    const/4 v11, 0x0

    .line 453
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 455
    .restart local v8    # "state":I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 456
    const v4, 0x7f02059e

    .line 457
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f090194

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "contentDescription":Ljava/lang/String;
    goto :goto_1

    .line 459
    .local v2, "contentDescription":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 460
    const v11, 0x7f090195

    .line 459
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "contentDescription":Ljava/lang/String;
    goto :goto_1

    .line 466
    .end local v8    # "state":I
    .local v2, "contentDescription":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "android.btopp.intent.action.BT_OPP_DATA_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 467
    const-string/jumbo v10, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    .line 468
    const/4 v11, 0x2

    .line 467
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 470
    .local v3, "direction":I
    if-nez v3, :cond_6

    .line 474
    const v4, 0x7f020014

    const v10, 0x7f020014

    .line 475
    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    goto :goto_1

    .line 476
    :cond_6
    const/4 v10, 0x1

    if-ne v3, v10, :cond_7

    .line 480
    const v4, 0x7f020015

    const v10, 0x7f020015

    .line 481
    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    goto :goto_1

    .line 488
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBluetoothConnected()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 489
    const v4, 0x7f02059e

    .line 491
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_8

    .line 492
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 493
    sget-object v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    aget v4, v10, v11

    .line 498
    :cond_8
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothDownUpIcon:I

    goto/16 :goto_1

    .line 502
    .end local v3    # "direction":I
    :cond_9
    const-string/jumbo v10, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 504
    const-string/jumbo v10, "android.bluetooth.device.extra.DEVICE"

    .line 503
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 505
    .local v9, "tempDevice":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v10, "android.bluetooth.profile.extra.STATE"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 507
    .restart local v8    # "state":I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_c

    const/4 v10, 0x1

    :goto_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    if-eq v10, v11, :cond_a

    .line 508
    const/4 v10, 0x2

    if-ne v8, v10, :cond_d

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    .line 509
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSetMz(II)V

    .line 513
    :cond_a
    if-nez v8, :cond_e

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBluetoothConnected()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 515
    const v4, 0x7f02059e

    .line 518
    :cond_b
    if-eqz v9, :cond_0

    .line 519
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 518
    if-eqz v10, :cond_0

    .line 520
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 521
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    .line 522
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    goto/16 :goto_1

    .line 507
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 508
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 524
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBluetoothConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 525
    const v4, 0x7f02059e

    .line 529
    if-eqz v9, :cond_0

    .line 530
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 529
    if-eqz v10, :cond_0

    .line 531
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 532
    sget-object v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    aget v4, v10, v11

    goto/16 :goto_1

    .line 538
    .end local v8    # "state":I
    .end local v9    # "tempDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_f
    const-string/jumbo v10, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 539
    const-string/jumbo v10, "PhoneStatusBarPolicy"

    const-string/jumbo v11, "ACTION_VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string/jumbo v10, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    .line 540
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    .line 543
    .local v7, "serializable":Ljava/io/Serializable;
    const-string/jumbo v10, "android.bluetooth.device.extra.DEVICE"

    .line 542
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 545
    if-eqz v7, :cond_0

    move-object v6, v7

    .line 546
    check-cast v6, [Ljava/lang/Object;

    .line 547
    .local v6, "obj2":[Ljava/lang/Object;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    aget-object v10, v6, v10

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_0

    .line 548
    const/4 v10, 0x0

    aget-object v5, v6, v10

    check-cast v5, Ljava/lang/Integer;

    .line 551
    .local v5, "levelInteger":Ljava/lang/Integer;
    const/4 v10, 0x1

    aget-object v1, v6, v10

    check-cast v1, Ljava/lang/Integer;

    .line 552
    .local v1, "batteryEventType":Ljava/lang/Integer;
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_10

    .line 553
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    if-nez v10, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 556
    return-void

    .line 559
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBattertEventType:I

    .line 560
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x9

    if-le v10, v11, :cond_12

    .line 561
    :cond_11
    return-void

    .line 563
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    .line 564
    sget-object v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothBatteryLevelArray:[I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryLevel:I

    aget v4, v10, v11

    goto/16 :goto_1

    .line 568
    .end local v1    # "batteryEventType":Ljava/lang/Integer;
    .end local v5    # "levelInteger":Ljava/lang/Integer;
    .end local v6    # "obj2":[Ljava/lang/Object;
    .end local v7    # "serializable":Ljava/io/Serializable;
    :cond_13
    return-void
.end method

.method private final updateHeadSetMz(II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "mic"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 635
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetState:I

    .line 636
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHeadsetMic:I

    .line 637
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHeadSet, state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    if-eq p1, v5, :cond_1

    if-ne p2, v5, :cond_2

    .line 639
    :cond_1
    return-void

    .line 641
    :cond_2
    if-ne p1, v1, :cond_6

    .line 642
    if-ne p2, v1, :cond_4

    .line 643
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 644
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "headset"

    const v4, 0x7f0205be

    invoke-virtual {v2, v3, v4, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "headset"

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v4, :cond_3

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 634
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 645
    goto :goto_0

    .line 647
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    .line 648
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "headset"

    const v4, 0x7f0205bf

    invoke-virtual {v2, v3, v4, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "headset"

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothHeadsetConnected:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 653
    :cond_6
    if-nez p2, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    if-ne v1, v2, :cond_7

    .line 654
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 655
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    goto :goto_1

    .line 657
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v2, "headset"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 658
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_with_flag:I

    .line 659
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mic_no_flag:I

    goto :goto_1
.end method

.method private final updateHeadSetMz(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 664
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 665
    .local v1, "state":I
    const-string/jumbo v2, "microphone"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 666
    .local v0, "mic":I
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSetMz(II)V

    .line 663
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 330
    const-string/jumbo v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "stateExtra":Ljava/lang/String;
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 329
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string/jumbo v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 337
    :cond_1
    const-string/jumbo v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 340
    :cond_2
    const-string/jumbo v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "lockedReason":Ljava/lang/String;
    const-string/jumbo v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 346
    :cond_3
    const-string/jumbo v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 350
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 353
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 580
    const-string/jumbo v2, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 582
    .local v0, "currentTtyMode":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 584
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTTY: enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    if-eqz v1, :cond_3

    .line 588
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTY: set TTY on"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "tty"

    .line 590
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0901d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 589
    const v5, 0x7f0205ff

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "tty"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 579
    :goto_1
    return-void

    .line 582
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 594
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTY: set TTY off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v3, "tty"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateVolumeZen()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 358
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 360
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v6, 0x0

    .line 361
    .local v6, "zenVisible":Z
    const/4 v5, 0x0

    .line 362
    .local v5, "zenIconId":I
    const/4 v4, 0x0

    .line 364
    .local v4, "zenDescription":Ljava/lang/String;
    const/4 v3, 0x0

    .line 365
    .local v3, "volumeVisible":Z
    const/4 v2, 0x0

    .line 366
    .local v2, "volumeIconId":I
    const/4 v1, 0x0

    .line 368
    .local v1, "volumeDescription":Ljava/lang/String;
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-ne v7, v11, :cond_6

    .line 369
    const/4 v6, 0x1

    .line 370
    const v5, 0x7f020624

    .line 371
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 378
    .end local v4    # "zenDescription":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-eq v7, v11, :cond_7

    .line 379
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 380
    const/4 v3, 0x1

    .line 381
    const v2, 0x7f0205de

    .line 382
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0901d2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v1    # "volumeDescription":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 396
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v6, v7, :cond_3

    .line 400
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 403
    :cond_3
    if-eqz v3, :cond_4

    .line 404
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v8, "volume"

    invoke-virtual {v7, v8, v2, v9, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 406
    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v7, :cond_5

    .line 407
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v8, "volume"

    invoke-virtual {v7, v8, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 408
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 357
    :cond_5
    return-void

    .line 372
    .restart local v1    # "volumeDescription":Ljava/lang/String;
    .restart local v4    # "zenDescription":Ljava/lang/String;
    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    if-ne v7, v10, :cond_0

    .line 373
    const/4 v6, 0x1

    .line 374
    const v5, 0x7f020623

    .line 375
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f09025a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "zenDescription":Ljava/lang/String;
    goto :goto_0

    .line 384
    .end local v4    # "zenDescription":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    if-nez v7, :cond_1

    .line 385
    const/4 v3, 0x1

    .line 386
    const v2, 0x7f020416

    .line 387
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0901d3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "volumeDescription":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public setZenMode(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 308
    return-void
.end method
