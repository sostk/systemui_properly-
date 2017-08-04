.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final QS_WIFI_SIGNAL_STRENGTH_EXCLAMATION:[I

.field static final QS_WIFI_SIGNAL_STRENGTH_FULL:[I

.field static final WIFI_LEVEL_COUNT:I

.field static WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_EXCLAMATION:[I

.field static final WIFI_SIGNAL_STRENGTH_FULL:[I

.field static final WIFI_SIGNAL_STRENGTH_INOUT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x7f02060b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f020609

    const/4 v5, 0x2

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [[I

    .line 50
    filled-new-array {v6, v6, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 56
    const v1, 0x7f02060c

    .line 57
    const v2, 0x7f02060f

    .line 58
    const v3, 0x7f02060d

    .line 55
    filled-new-array {v9, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 60
    const v1, 0x7f020611

    .line 61
    const v2, 0x7f020612

    .line 62
    const v3, 0x7f020615

    .line 63
    const v4, 0x7f020613

    .line 60
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 65
    const v1, 0x7f020617

    .line 66
    const v2, 0x7f020618

    .line 67
    const v3, 0x7f02061b

    .line 68
    const v4, 0x7f020619

    .line 65
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 70
    const v1, 0x7f02061d

    .line 71
    const v2, 0x7f02061e

    .line 72
    const v3, 0x7f020621

    .line 73
    const v4, 0x7f02061f

    .line 70
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_INOUT:[[I

    .line 79
    const v0, 0x7f020608

    .line 80
    const v1, 0x7f02060a

    .line 81
    const v2, 0x7f020610

    .line 82
    const v3, 0x7f020616

    .line 83
    const v4, 0x7f02061c

    .line 78
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_EXCLAMATION:[I

    .line 89
    const v0, 0x7f020611

    .line 90
    const v1, 0x7f020617

    .line 91
    const v2, 0x7f02061d

    .line 86
    filled-new-array {v6, v9, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_FULL:[I

    .line 95
    const v0, 0x7f020112

    .line 96
    const v1, 0x7f020113

    .line 97
    const v2, 0x7f020114

    .line 98
    const v3, 0x7f020115

    .line 99
    const v4, 0x7f020116

    .line 94
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_EXCLAMATION:[I

    .line 103
    const v0, 0x7f020119

    .line 104
    const v1, 0x7f02011a

    .line 105
    const v2, 0x7f02011b

    .line 106
    const v3, 0x7f02011c

    .line 107
    const v4, 0x7f02011d

    .line 102
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_FULL:[I

    .line 110
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_FULL:[I

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 111
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v1, v5, [I

    aput v5, v1, v7

    sget v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    aput v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 112
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v1, v5, [I

    aput v5, v1, v7

    sget v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    aput v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initWifiIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v2

    .line 117
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v3

    .line 118
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v2

    .line 119
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v3

    .line 114
    return-void
.end method
