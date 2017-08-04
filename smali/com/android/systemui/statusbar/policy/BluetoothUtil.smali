.class public Lcom/android/systemui/statusbar/policy/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 77
    if-nez p0, :cond_0

    const-string/jumbo v0, "STATE_DISCONNECTED"

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "STATE_CONNECTED"

    return-object v0

    .line 79
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "STATE_DISCONNECTING"

    return-object v0

    .line 80
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "STATE_CONNECTING"

    return-object v0

    .line 81
    :cond_3
    const-string/jumbo v0, "ERROR"

    return-object v0
.end method

.method public static deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProfile(Landroid/bluetooth/BluetoothProfile;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "p"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 121
    instance-of v0, p0, Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/bluetooth/BluetoothA2dp;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 122
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    instance-of v0, p0, Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/bluetooth/BluetoothHeadset;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothHeadset;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 123
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_1
    instance-of v0, p0, Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/bluetooth/BluetoothA2dpSink;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothA2dpSink;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 124
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_2
    instance-of v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/bluetooth/BluetoothHeadsetClient;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothHeadsetClient;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 125
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_3
    instance-of v0, p0, Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/bluetooth/BluetoothInputDevice;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothInputDevice;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 126
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_4
    instance-of v0, p0, Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/bluetooth/BluetoothMap;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothMap;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 127
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_5
    instance-of v0, p0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    .end local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;

    move-result-object v0

    return-object v0

    .line 128
    .restart local p0    # "p":Landroid/bluetooth/BluetoothProfile;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "a2dp"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothA2dpSink;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "sink"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 160
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$3;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothHeadset;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "headset"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$2;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothHeadsetClient;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "client"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$4;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothInputDevice;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "input"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    .line 188
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$5;-><init>(Landroid/bluetooth/BluetoothInputDevice;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothMap;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "map"    # Landroid/bluetooth/BluetoothMap;

    .prologue
    .line 202
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$6;-><init>(Landroid/bluetooth/BluetoothMap;)V

    return-object v0
.end method

.method private static newProfile(Landroid/bluetooth/BluetoothPan;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
    .locals 1
    .param p0, "pan"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil$7;-><init>(Landroid/bluetooth/BluetoothPan;)V

    return-object v0
.end method

.method public static profileToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "profile"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "HEADSET"

    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "A2DP"

    return-object v0

    .line 38
    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "AVRCP_CONTROLLER"

    return-object v0

    .line 39
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "PAN"

    return-object v0

    .line 40
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "INPUT_DEVICE"

    return-object v0

    .line 41
    :cond_4
    const/16 v0, 0x9

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "MAP"

    return-object v0

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uuidToProfile(Landroid/os/ParcelUuid;)I
    .locals 5
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v1, 0x9

    .line 100
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 101
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 103
    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 104
    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 106
    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 107
    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 108
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 110
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    return v0

    .line 112
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    .line 113
    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    .line 115
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    return v0

    .line 117
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v0, 0x0

    .line 54
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "AudioSink"

    return-object v0

    .line 55
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "AudioSource"

    return-object v0

    .line 56
    :cond_1
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "AdvAudioDist"

    return-object v0

    .line 57
    :cond_2
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "HSP"

    return-object v0

    .line 58
    :cond_3
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "HSP_AG"

    return-object v0

    .line 59
    :cond_4
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "Handsfree"

    return-object v0

    .line 60
    :cond_5
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "Handsfree_AG"

    return-object v0

    .line 61
    :cond_6
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "AvrcpController"

    return-object v0

    .line 62
    :cond_7
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "AvrcpTarget"

    return-object v0

    .line 63
    :cond_8
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v0, "ObexObjectPush"

    return-object v0

    .line 64
    :cond_9
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v0, "Hid"

    return-object v0

    .line 65
    :cond_a
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v0, "Hogp"

    return-object v0

    .line 66
    :cond_b
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v0, "PANU"

    return-object v0

    .line 67
    :cond_c
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v0, "NAP"

    return-object v0

    .line 68
    :cond_d
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v0, "BNEP"

    return-object v0

    .line 69
    :cond_e
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v0, "PBAP_PSE"

    return-object v0

    .line 70
    :cond_f
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v0, "MAP"

    return-object v0

    .line 71
    :cond_10
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v0, "MNS"

    return-object v0

    .line 72
    :cond_11
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v0, "MAS"

    return-object v0

    .line 73
    :cond_12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public static uuidsToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p0, :cond_0

    return-object v3

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 91
    .local v1, "ids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    return-object v3

    .line 92
    :cond_1
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 93
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 94
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
