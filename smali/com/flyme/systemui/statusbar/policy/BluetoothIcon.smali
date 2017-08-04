.class public Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;
.super Ljava/lang/Object;
.source "BluetoothIcon.java"


# static fields
.field static final A2DPPROFILE_SINK_UUIDS:[Landroid/os/ParcelUuid;

.field static final HEADSETPROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static TAG:Ljava/lang/String;

.field private static final mProfileSupport:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    const-string/jumbo v0, "BluetoothIcon"

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    .line 21
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 22
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 23
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 24
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 121
    new-array v0, v4, [Landroid/os/ParcelUuid;

    .line 122
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 123
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 121
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->A2DPPROFILE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 126
    new-array v0, v4, [Landroid/os/ParcelUuid;

    .line 127
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 128
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 126
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->HEADSETPROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceIcon(Landroid/bluetooth/BluetoothDevice;)I
    .locals 8
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const v7, 0x7f0200d1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0200ca

    .line 66
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 67
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 88
    :goto_0
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    return v4

    .line 70
    :sswitch_0
    const v2, 0x7f0200cd

    return v2

    .line 73
    :sswitch_1
    return v7

    .line 76
    :sswitch_2
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    return v2

    .line 79
    :sswitch_3
    const v2, 0x7f0200d2

    return v2

    .line 85
    :cond_0
    sget-object v2, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mBtClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    return v4

    .line 97
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 98
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v1, :cond_4

    .line 99
    sget-object v2, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->A2DPPROFILE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    return v4

    .line 102
    :cond_3
    sget-object v2, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->HEADSETPROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    return v4

    .line 107
    :cond_4
    invoke-static {v6}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    return v4

    .line 109
    :cond_5
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    return v4

    .line 111
    :cond_6
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    const v2, 0x7f0200d3

    return v2

    .line 113
    :cond_7
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->isProfileSupport(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    return v7

    .line 118
    :cond_8
    return v5

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 35
    const v0, 0x7f0200d3

    return v0

    .line 31
    :sswitch_0
    const v0, 0x7f0200cc

    return v0

    .line 33
    :sswitch_1
    const v0, 0x7f0200ce

    return v0

    .line 28
    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isProfileSupport(I)Z
    .locals 4
    .param p0, "Profile"    # I

    .prologue
    const/4 v3, 0x0

    .line 40
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mProfileSupport is null, do not connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v3

    .line 45
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 55
    :pswitch_0
    return v3

    .line 47
    :pswitch_1
    :try_start_0
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1

    .line 49
    :pswitch_2
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1

    .line 51
    :pswitch_3
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1

    .line 53
    :pswitch_4
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->mProfileSupport:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "fatal NullPointerException, isProfileSupport get null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 61
    return v3

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
