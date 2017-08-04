.class public Lcom/flyme/systemui/statusbar/utils/QSTileUtils;
.super Ljava/lang/Object;
.source "QSTileUtils.java"


# static fields
.field private static final IS_SHOPDEMO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->IS_SHOPDEMO:Z

    .line 19
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deviceSupportsMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static deviceSupportsNfc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 150
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static filteredTile(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "tile"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isGuestUser"    # Z

    .prologue
    const/4 v2, 0x1

    .line 35
    const-string/jumbo v0, "drivemode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string/jumbo v0, "com.meizu.voiceassistant"

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 37
    :cond_0
    return v2

    .line 40
    :cond_1
    const-string/jumbo v0, "eyeprotective"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.screen.bluelightreduction"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    .line 42
    :cond_2
    return v2

    .line 45
    :cond_3
    const-string/jumbo v0, "datasave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/ext/FlymeDataSaveSupport;->isShowSavingFunc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    .line 47
    :cond_4
    return v2

    .line 50
    :cond_5
    const-string/jumbo v0, "accelerator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    if-eqz p2, :cond_6

    .line 52
    return v2

    .line 55
    :cond_6
    const-string/jumbo v0, "hotspot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    if-eqz p2, :cond_7

    .line 57
    return v2

    .line 60
    :cond_7
    const-string/jumbo v0, "vpn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    if-eqz p2, :cond_8

    .line 62
    return v2

    .line 65
    :cond_8
    const-string/jumbo v0, "zenmode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    if-eqz p2, :cond_9

    .line 67
    return v2

    .line 70
    :cond_9
    const-string/jumbo v0, "screenrecord"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    if-eqz p2, :cond_a

    .line 72
    return v2

    .line 75
    :cond_a
    const-string/jumbo v0, "mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    if-eqz p2, :cond_b

    .line 77
    return v2

    .line 80
    :cond_b
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81
    if-eqz p2, :cond_c

    .line 82
    return v2

    .line 85
    :cond_c
    const-string/jumbo v0, "mobiledata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 87
    return v2

    .line 90
    :cond_d
    const-string/jumbo v0, "bt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->deviceSupportsBluetooth()Z

    move-result v0

    if-nez v0, :cond_e

    .line 92
    return v2

    .line 95
    :cond_e
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 97
    return v2

    .line 100
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return v3

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static isShopDemo()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->IS_SHOPDEMO:Z

    return v0
.end method

.method public static sortTile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defaultTileList"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v0, "datasave"

    const-string/jumbo v1, "smarttouch"

    invoke-static {p0, v0, v1}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->swapTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method

.method private static swapTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "tileList"    # Ljava/lang/String;
    .param p1, "front"    # Ljava/lang/String;
    .param p2, "behind"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v5, "tilesAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 118
    .local v2, "indexFront":I
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 119
    .local v1, "indexBehind":I
    if-eq v2, v7, :cond_0

    if-eq v1, v7, :cond_0

    .line 120
    invoke-virtual {v5, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v5, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v4, "specs":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 126
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 127
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_1

    .line 129
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
