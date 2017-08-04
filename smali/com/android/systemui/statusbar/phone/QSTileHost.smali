.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAccelerator:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

.field private final mAutoBrightness:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mContext:Landroid/content/Context;

.field private final mDataSave:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

.field private mDefaultTileList:Ljava/lang/String;

.field private final mDriveMode:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

.field private final mEyeProtective:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mNfc:Lcom/flyme/systemui/statusbar/policy/NfcController;

.field private final mPowerSave:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

.field private final mRingerMode:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mScreenRecord:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

.field private final mScreenshot:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mSmartTouch:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTileConfigPreference:Landroid/content/SharedPreferences;

.field private final mTileListChangeListener:Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;

.field private mTileSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVpn:Lcom/flyme/systemui/statusbar/policy/VpnController;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDefaultTileList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileListChangeListener:Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;Lcom/flyme/systemui/statusbar/policy/SmartTouchController;Lcom/flyme/systemui/statusbar/policy/NfcController;Lcom/flyme/systemui/statusbar/policy/PowerSaveController;Lcom/flyme/systemui/statusbar/policy/RingerModeController;Lcom/flyme/systemui/statusbar/policy/VpnController;Lcom/flyme/systemui/statusbar/policy/ScreenshotController;Lcom/flyme/systemui/statusbar/policy/DriveModeController;Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;Lcom/flyme/systemui/statusbar/policy/AcceleratorController;Lcom/flyme/systemui/statusbar/policy/DataSaveController;Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "bluetooth"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p4, "location"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotation"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p6, "network"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p7, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p8, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;
    .param p9, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p10, "flashlight"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p11, "userSwitcher"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p12, "keyguard"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p13, "security"    # Lcom/android/systemui/statusbar/policy/SecurityController;
    .param p14, "autobrightness"    # Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;
    .param p15, "smarttouch"    # Lcom/flyme/systemui/statusbar/policy/SmartTouchController;
    .param p16, "nfc"    # Lcom/flyme/systemui/statusbar/policy/NfcController;
    .param p17, "powersave"    # Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
    .param p18, "ringermode"    # Lcom/flyme/systemui/statusbar/policy/RingerModeController;
    .param p19, "vpn"    # Lcom/flyme/systemui/statusbar/policy/VpnController;
    .param p20, "screenshot"    # Lcom/flyme/systemui/statusbar/policy/ScreenshotController;
    .param p21, "drivemode"    # Lcom/flyme/systemui/statusbar/policy/DriveModeController;
    .param p22, "eyeprotective"    # Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;
    .param p23, "accelerator"    # Lcom/flyme/systemui/statusbar/policy/AcceleratorController;
    .param p24, "datasave"    # Lcom/flyme/systemui/statusbar/policy/DataSaveController;
    .param p25, "screenrecord"    # Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 482
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileListChangeListener:Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 145
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 146
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 147
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 148
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 149
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 150
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 151
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 152
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 153
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 154
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 155
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 158
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAutoBrightness:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    .line 159
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSmartTouch:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    .line 160
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNfc:Lcom/flyme/systemui/statusbar/policy/NfcController;

    .line 161
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mPowerSave:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    .line 162
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRingerMode:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    .line 163
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVpn:Lcom/flyme/systemui/statusbar/policy/VpnController;

    .line 164
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenshot:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 165
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDriveMode:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    .line 166
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mEyeProtective:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    .line 167
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAccelerator:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    .line 168
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDataSave:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    .line 169
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenRecord:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 172
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 173
    const/16 v3, 0xa

    .line 172
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 174
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 175
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    .line 177
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 197
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "shortcut_order"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileListChangeListener:Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 142
    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "shortcut_order_guest"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method private createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 3
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 331
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 332
    :cond_0
    const-string/jumbo v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 333
    :cond_1
    const-string/jumbo v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 334
    :cond_2
    const-string/jumbo v0, "mobiledata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 335
    :cond_3
    const-string/jumbo v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 336
    :cond_4
    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 337
    :cond_5
    const-string/jumbo v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 338
    :cond_6
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 339
    :cond_7
    const-string/jumbo v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 340
    :cond_8
    const-string/jumbo v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 342
    :cond_9
    const-string/jumbo v0, "autobrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 343
    :cond_a
    const-string/jumbo v0, "smarttouch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 344
    :cond_b
    const-string/jumbo v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/flyme/systemui/qs/tiles/MuteTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/MuteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 345
    :cond_c
    const-string/jumbo v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/flyme/systemui/qs/tiles/NfcTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 346
    :cond_d
    const-string/jumbo v0, "powersave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 347
    :cond_e
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/flyme/systemui/qs/tiles/VibrateTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/VibrateTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 348
    :cond_f
    const-string/jumbo v0, "vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/flyme/systemui/qs/tiles/VpnTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/VpnTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 349
    :cond_10
    const-string/jumbo v0, "zenmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/flyme/systemui/qs/tiles/ZenModeTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/ZenModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 350
    :cond_11
    const-string/jumbo v0, "screenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 351
    :cond_12
    const-string/jumbo v0, "drivemode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/DriveModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 352
    :cond_13
    const-string/jumbo v0, "eyeprotective"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 353
    :cond_14
    const-string/jumbo v0, "accelerator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 354
    :cond_15
    const-string/jumbo v0, "datasave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/flyme/systemui/qs/tiles/DataSaveTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/DataSaveTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 355
    :cond_16
    const-string/jumbo v0, "screenrecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 357
    :cond_17
    const-string/jumbo v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    return-object v0

    .line 358
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private customizeQuickSettingsTileOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "shortcut_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDefaultTileList:Ljava/lang/String;

    .line 487
    return-object p1
.end method

.method private loadTileSpecs()Ljava/util/List;
    .locals 9
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
    .line 362
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 363
    .local v3, "res":Landroid/content/res/Resources;
    const v8, 0x7f09014c

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "defaultTileList":Ljava/lang/String;
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->sortTile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v7, "tilesAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->customizeQuickSettingsTileOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v6, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v1, "extraTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 381
    .local v4, "tile":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 382
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v4    # "tile":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 386
    .restart local v4    # "tile":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 387
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v4    # "tile":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v2

    .line 391
    .local v2, "isGuestUser":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .restart local v4    # "tile":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 393
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v2}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->filteredTile(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 396
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 400
    .end local v4    # "tile":Ljava/lang/String;
    :cond_6
    return-object v6
.end method

.method private recreateTiles()V
    .locals 10

    .prologue
    .line 298
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "QSTileHost"

    const-string/jumbo v8, "Recreating tiles"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v6

    .line 301
    .local v6, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    .line 303
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tile$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    .local v2, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 305
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v8, "QSTileHost"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Destroying tile: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_0

    .line 309
    .end local v2    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 310
    .local v0, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tileSpec$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    .local v4, "tileSpec":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 312
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v0, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 314
    :cond_4
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Creating tile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_5
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error creating tile for spec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 322
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "tileSpec":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    return-void

    .line 323
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 324
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 325
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    if-eqz v7, :cond_8

    .line 326
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    .line 297
    :cond_8
    return-void
.end method

.method private saveQuickSettingsTileOrder(Ljava/lang/String;)V
    .locals 2
    .param p1, "tileOrder"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDefaultTileList:Ljava/lang/String;

    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileConfigPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 494
    const-string/jumbo v1, "shortcut_order"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    return-void
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    .line 230
    return-void
.end method

.method public getAcceleratorController()Lcom/flyme/systemui/statusbar/policy/AcceleratorController;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAccelerator:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    return-object v0
.end method

.method public getAutoBrightnessController()Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAutoBrightness:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    return-object v0
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataSaveController()Lcom/flyme/systemui/statusbar/policy/DataSaveController;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDataSave:Lcom/flyme/systemui/statusbar/policy/DataSaveController;

    return-object v0
.end method

.method public getDriveModeController()Lcom/flyme/systemui/statusbar/policy/DriveModeController;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDriveMode:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    return-object v0
.end method

.method public getEyeProtectiveController()Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mEyeProtective:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getNfcController()Lcom/flyme/systemui/statusbar/policy/NfcController;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNfc:Lcom/flyme/systemui/statusbar/policy/NfcController;

    return-object v0
.end method

.method public getPowerSaveController()Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mPowerSave:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    return-object v0
.end method

.method public getRingerModeController()Lcom/flyme/systemui/statusbar/policy/RingerModeController;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRingerMode:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getScreenRecordController()Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenRecord:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    return-object v0
.end method

.method public getScreenshotController()Lcom/flyme/systemui/statusbar/policy/ScreenshotController;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenshot:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    return-object v0
.end method

.method public getSmartTouchController()Lcom/flyme/systemui/statusbar/policy/SmartTouchController;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSmartTouch:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getVpnController()Lcom/flyme/systemui/statusbar/policy/VpnController;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVpn:Lcom/flyme/systemui/statusbar/policy/VpnController;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Host$Callback;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    .line 210
    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method

.method public swapTile(II)V
    .locals 6
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 499
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 500
    .local v3, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v2, "specs":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 505
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 506
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 508
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->saveQuickSettingsTileOrder(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    return-void
.end method
