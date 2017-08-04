.class public Lcom/meizu/common/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static final OP_GROUP_BOOTCOMPLETED:I = 0x9

.field public static final OP_GROUP_CAMERA:I = 0x7

.field public static final OP_GROUP_GPS:I = 0x16

.field public static final OP_GROUP_INTERNET:I = 0x19

.field public static final OP_GROUP_LOCATION:I = 0x5

.field public static final OP_GROUP_NFC:I = 0xd

.field public static final OP_GROUP_NONE:I = -0x1

.field public static final OP_GROUP_OPEN_BLUETOOTH:I = 0x8

.field public static final OP_GROUP_OPEN_MOBILE_DATA:I = 0x3

.field public static final OP_GROUP_OPEN_WLAN:I = 0x4

.field public static final OP_GROUP_PHONE_CALL:I = 0x0

.field public static final OP_GROUP_PHONE_OUT_GOING_CALL:I = 0x17

.field public static final OP_GROUP_PHONE_READ_CALLLOG:I = 0xa

.field public static final OP_GROUP_PHONE_WRITE_CALLLOG:I = 0x15

.field public static final OP_GROUP_READ_CONTACTS:I = 0x1

.field public static final OP_GROUP_READ_MMS:I = 0xb

.field public static final OP_GROUP_READ_SMS:I = 0x2

.field public static final OP_GROUP_RECEIVE_MMS:I = 0x14

.field public static final OP_GROUP_RECEIVE_SMS:I = 0x11

.field public static final OP_GROUP_RECORDAUDIO:I = 0x6

.field public static final OP_GROUP_RECORDAUDIO_PHONE:I = 0xc

.field public static final OP_GROUP_SEND_MMS:I = 0x13

.field public static final OP_GROUP_SEND_SMS:I = 0x10

.field public static final OP_GROUP_SYSTEM_ALERT:I = 0x18

.field public static final OP_GROUP_WRITE_CONTACTS:I = 0xe

.field public static final OP_GROUP_WRITE_MMS:I = 0x12

.field public static final OP_GROUP_WRITE_SMS:I = 0xf

.field public static mBootCompletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mCameraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mInternetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mLocationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOPenBluetoothList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOPenGpsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOPenWalnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOpenMobileDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOpenNfcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPhoneCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPhoneOutGoingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadCallLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadContactsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReadSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReceiveMMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mReceiveSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecordAudioList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecordAudioPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSystemAlertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteCallLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteContactsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWriteSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneCallList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadContactsList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadSmsList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenMobileDataList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenWalnList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mCameraList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mBootCompletedList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadCallLogList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadMmsList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioPhoneList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenNfcList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteContactsList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteSmsList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendSmsList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveSmsList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteMmsList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendMmsList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveMMsList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteCallLogList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenGpsList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneOutGoingList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mSystemAlertList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/common/util/PermissionUtils;->mInternetList:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneCallList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadContactsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadSmsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenMobileDataList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenWalnList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mCameraList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mBootCompletedList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadCallLogList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadMmsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenNfcList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.NFC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteContactsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteSmsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendSmsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveSmsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveMMsList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteCallLogList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneOutGoingList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSystemAlertList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mInternetList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method


# virtual methods
.method public getPermissionLabelByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/PermissionUtils;->getPermissionTypeByName(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    .line 184
    return-object v1

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_call:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_contacts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 128
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_r_sms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_set_gprs_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :pswitch_4
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_set_wifi_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :pswitch_5
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 136
    :pswitch_6
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_recordaudio_local:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    :pswitch_7
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :pswitch_8
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_set_bluetooth_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_9
    const-string/jumbo v1, ""

    .line 143
    return-object v1

    .line 145
    :pswitch_a
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_call_log:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :pswitch_b
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_r_mms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :pswitch_c
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_recordaudio_phone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :pswitch_d
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_nfc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_e
    const-string/jumbo v1, ""

    .line 156
    return-object v1

    :pswitch_f
    const-string/jumbo v1, ""

    .line 160
    return-object v1

    .line 162
    :pswitch_10
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_s_sms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_11
    const-string/jumbo v1, ""

    .line 164
    return-object v1

    :pswitch_12
    const-string/jumbo v1, ""

    .line 166
    return-object v1

    .line 168
    :pswitch_13
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_s_mms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_14
    const-string/jumbo v1, ""

    .line 170
    return-object v1

    :pswitch_15
    const-string/jumbo v1, ""

    .line 172
    return-object v1

    :pswitch_16
    const-string/jumbo v1, ""

    .line 174
    return-object v1

    :pswitch_17
    const-string/jumbo v1, ""

    .line 176
    return-object v1

    :pswitch_18
    const-string/jumbo v1, ""

    .line 178
    return-object v1

    .line 180
    :pswitch_19
    iget-object v1, p0, Lcom/meizu/common/util/PermissionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_pm_online_intenert:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public getPermissionTypeByName(Ljava/lang/String;)I
    .locals 2
    .param p1, "permssion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 188
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneCallList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenMobileDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenWalnList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mLocationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 202
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 204
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenBluetoothList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 206
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mBootCompletedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 208
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadCallLogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 210
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReadMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 212
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mRecordAudioPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 214
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOpenNfcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 216
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteContactsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 218
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 220
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 222
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 224
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 226
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSendMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 228
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mReceiveMMsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 230
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mWriteCallLogList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 232
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mOPenGpsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 234
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mPhoneOutGoingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 236
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mSystemAlertList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 238
    sget-object v0, Lcom/meizu/common/util/PermissionUtils;->mInternetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, -0x1

    .line 241
    return v0

    .line 189
    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    .line 191
    return v0

    :cond_2
    const/4 v0, 0x2

    .line 193
    return v0

    :cond_3
    const/4 v0, 0x3

    .line 195
    return v0

    :cond_4
    const/4 v0, 0x4

    .line 197
    return v0

    :cond_5
    const/4 v0, 0x5

    .line 199
    return v0

    :cond_6
    const/4 v0, 0x6

    .line 201
    return v0

    :cond_7
    const/4 v0, 0x7

    .line 203
    return v0

    :cond_8
    const/16 v0, 0x8

    .line 205
    return v0

    :cond_9
    const/16 v0, 0x9

    .line 207
    return v0

    :cond_a
    const/16 v0, 0xa

    .line 209
    return v0

    :cond_b
    const/16 v0, 0xb

    .line 211
    return v0

    :cond_c
    const/16 v0, 0xc

    .line 213
    return v0

    :cond_d
    const/16 v0, 0xd

    .line 215
    return v0

    :cond_e
    const/16 v0, 0xe

    .line 217
    return v0

    :cond_f
    const/16 v0, 0xf

    .line 219
    return v0

    :cond_10
    const/16 v0, 0x10

    .line 221
    return v0

    :cond_11
    const/16 v0, 0x11

    .line 223
    return v0

    :cond_12
    const/16 v0, 0x12

    .line 225
    return v0

    :cond_13
    const/16 v0, 0x13

    .line 227
    return v0

    :cond_14
    const/16 v0, 0x14

    .line 229
    return v0

    :cond_15
    const/16 v0, 0x15

    .line 231
    return v0

    :cond_16
    const/16 v0, 0x16

    .line 233
    return v0

    :cond_17
    const/16 v0, 0x17

    .line 235
    return v0

    :cond_18
    const/16 v0, 0x18

    .line 237
    return v0

    :cond_19
    const/16 v0, 0x19

    .line 239
    return v0
.end method

.method public loadPemissionLables([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 109
    :cond_0
    return-object v7

    .line 108
    :cond_1
    array-length v6, p1

    if-eqz v6, :cond_0

    .line 111
    array-length v6, p1

    new-array v5, v6, [Ljava/lang/String;

    .line 112
    .local v5, "resultArray":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v4, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 116
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    return-object v5

    .line 113
    :cond_2
    aget-object v2, v0, v1

    .line 114
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/meizu/common/util/PermissionUtils;->getPermissionLabelByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
