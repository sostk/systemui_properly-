.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$MoveInfo;,
        Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;,
        Lcom/android/systemui/usb/StorageNotification$1;,
        Lcom/android/systemui/usb/StorageNotification$2;,
        Lcom/android/systemui/usb/StorageNotification$3;,
        Lcom/android/systemui/usb/StorageNotification$4;
    }
.end annotation


# instance fields
.field private mDisks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private final mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private final mMoves:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/usb/StorageNotification$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mShowingAlertDialog:Landroid/app/AlertDialog;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/usb/StorageNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->fileManagerExists()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V
    .locals 0
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .locals 0
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .locals 1
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/usb/StorageNotification;->onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    .line 99
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Landroid/os/storage/StorageEventListener;

    .line 146
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$4;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    .line 57
    return-void
.end method

.method private buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 930
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 931
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    .line 932
    const-string/jumbo v3, "com.android.settings.Settings$PrivateVolumeForgetActivity"

    .line 931
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 936
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 937
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 936
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 921
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 925
    .local v1, "requestKey":I
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 926
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v4, 0x10000000

    .line 925
    invoke-static {v2, v1, v0, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v4, 0x0

    .line 900
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 901
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 911
    return-object v4

    .line 903
    :pswitch_0
    const-string/jumbo v0, "com.android.settings"

    .line 904
    const-string/jumbo v3, "com.android.settings.Settings$PrivateVolumeSettingsActivity"

    .line 903
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    :goto_0
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 916
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 917
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    .line 916
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 907
    .end local v1    # "requestKey":I
    :pswitch_1
    const-string/jumbo v0, "com.android.settings"

    .line 908
    const-string/jumbo v3, "com.android.settings.Settings$PublicVolumeSettingsActivity"

    .line 907
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .prologue
    const/4 v4, 0x0

    .line 941
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 942
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    .line 943
    const-string/jumbo v1, "com.android.settings.deviceinfo.StorageWizardMigrateProgress"

    .line 942
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string/jumbo v0, "android.content.pm.extra.MOVE_ID"

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 947
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    if-nez v6, :cond_0

    .line 948
    const-string/jumbo v0, "StorageNotification"

    const-string/jumbo v1, "build migration intent failed because volume is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-object v4

    .line 952
    :cond_0
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 955
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    .line 954
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .prologue
    .line 959
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 960
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    .line 961
    const-string/jumbo v1, "com.android.settings.deviceinfo.StorageWizardMoveProgress"

    .line 960
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string/jumbo v0, "android.content.pm.extra.MOVE_ID"

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 965
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 964
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 969
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 970
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    .line 971
    const-string/jumbo v3, "com.android.settings.deviceinfo.StorageWizardReady"

    .line 970
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string/jumbo v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 975
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 976
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 975
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private fileManagerExists()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1027
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1028
    const-string/jumbo v3, "com.meizu.filemanager"

    .line 1029
    const/16 v4, 0x2000

    .line 1027
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1030
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 1031
    const/4 v2, 0x1

    return v2

    .line 1032
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1034
    return v5

    .line 1036
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return v5
.end method

.method private onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V
    .locals 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    .line 258
    if-nez p2, :cond_0

    iget-wide v0, p1, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 280
    const-string/jumbo v0, "StorageNotification"

    const-string/jumbo v1, "No supported volumes found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    if-eqz v0, :cond_1

    if-gtz p2, :cond_2

    .line 285
    :cond_1
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;-><init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string/jumbo v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDiskScannedInternal--->volumeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|mDisks.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x5344534b

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .locals 11
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I

    .prologue
    const v10, 0x534d4f56

    const/4 v9, 0x1

    .line 783
    iget-object v6, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 786
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v10, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 787
    return-void

    .line 790
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 791
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "descrip":Ljava/lang/String;
    const/16 v6, -0x64

    if-ne p2, v6, :cond_1

    .line 796
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x1040488

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const v8, 0x1040489

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 806
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/usb/StorageNotification;->buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 813
    :goto_1
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 814
    const v7, 0x1080424

    .line 813
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 815
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v8, 0x1060070

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 813
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 819
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 813
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 822
    const-string/jumbo v7, "sys"

    .line 813
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 823
    const/4 v7, -0x1

    .line 813
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 827
    .local v2, "notif":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v10, v2, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 782
    return-void

    .line 799
    .end local v2    # "notif":Landroid/app/Notification;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x104048a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 800
    .restart local v5    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x104048b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 807
    :cond_2
    if-eqz v3, :cond_3

    .line 808
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/StorageNotification;->buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, "intent":Landroid/app/PendingIntent;
    goto :goto_1

    .line 810
    .end local v1    # "intent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v1, 0x0

    .local v1, "intent":Landroid/app/PendingIntent;
    goto :goto_1
.end method

.method private onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .locals 9
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 741
    iget-object v4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    aput-object v6, v5, v8

    const v6, 0x1040486

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "title":Ljava/lang/CharSequence;
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_1

    .line 749
    const/4 v2, 0x0

    .line 755
    :goto_1
    iget-object v4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 756
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 760
    .local v0, "intent":Landroid/app/PendingIntent;
    :goto_2
    if-nez v0, :cond_3

    .line 761
    return-void

    .line 744
    .end local v0    # "intent":Landroid/app/PendingIntent;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v5, 0x1040487

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 751
    :cond_1
    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 758
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 764
    :cond_3
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    const v5, 0x1080424

    .line 764
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 766
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v6, 0x1060070

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 764
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 770
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 764
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 773
    const-string/jumbo v5, "progress"

    .line 764
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 774
    const/4 v5, -0x1

    .line 764
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 775
    const/16 v5, 0x64

    .line 764
    invoke-virtual {v4, v5, p2, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 779
    .local v1, "notif":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x534d4f56

    invoke-virtual {v4, v5, v7, v1, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 739
    return-void
.end method

.method private onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 308
    const-string/jumbo v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notifying about private volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    .line 307
    return-void
.end method

.method private onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x0

    const v4, 0x53505542

    .line 314
    const-string/jumbo v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifying about public volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 344
    const/4 v0, 0x0

    .line 348
    :goto_0
    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 313
    :cond_0
    :goto_1
    return-void

    .line 319
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .local v0, "notif":Landroid/app/Notification;
    goto :goto_0

    .line 322
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 326
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 329
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 332
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 335
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 338
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 341
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 351
    .end local v0    # "notif":Landroid/app/Notification;
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v4, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    .line 357
    :cond_3
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v4, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const v10, 0x7f0900f8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 719
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 721
    const v6, 0x104047b

    .line 720
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 721
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 720
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 722
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 723
    const v6, 0x104047c

    .line 722
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 723
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 722
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "message":Ljava/lang/CharSequence;
    const v0, 0x7f02035a

    .line 725
    .local v0, "iconId":I
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x10000000

    invoke-static {v5, v8, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 726
    .local v1, "intent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 731
    .local v3, "notification":Landroid/app/Notification;
    iget-object v5, v3, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    .line 730
    const v6, 0x7f020400

    .line 731
    iput v6, v5, Landroid/app/NotificationExt;->notificationIcon:I

    .line 732
    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 733
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 734
    return-object v3

    .line 736
    .end local v0    # "iconId":I
    .end local v1    # "intent":Landroid/app/PendingIntent;
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

.method private onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    return-object v5

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 420
    const v5, 0x1040473

    .line 419
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 420
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f0900f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 419
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 422
    const v5, 0x1040474

    .line 421
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 423
    .local v1, "message":Ljava/lang/CharSequence;
    const v0, 0x7f020359

    .line 424
    .local v0, "iconId":I
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 428
    .local v2, "notification":Landroid/app/Notification;
    iget-object v4, v2, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    .line 427
    const v5, 0x7f0203ff

    .line 428
    iput v5, v4, Landroid/app/NotificationExt;->notificationIcon:I

    .line 429
    return-object v2

    .line 431
    .end local v0    # "iconId":I
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-object v5
.end method

.method private onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 588
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 589
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f0900e1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 590
    .local v3, "ticker":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f0900e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 591
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->external_storage_device_name:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 592
    iget-object v8, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 591
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "message":Ljava/lang/CharSequence;
    sget v0, Lcom/flyme/internal/R$drawable;->mz_stat_sys_external_storage:I

    .line 594
    .local v0, "iconId":I
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 599
    .local v2, "notification":Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 600
    return-object v2

    .line 602
    .end local v0    # "iconId":I
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "ticker":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

.method private onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method private onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 17
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v15

    .line 437
    .local v15, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    .line 470
    .local v8, "disk":Landroid/os/storage/DiskInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    .line 472
    .local v9, "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    if-eqz v9, :cond_0

    iget-object v2, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_1

    .line 470
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 473
    :cond_1
    iget-object v2, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget v2, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2, v10, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget v2, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    iget v3, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    add-int/2addr v2, v3

    .line 483
    iget v3, v9, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->totalVolumeCount:I

    .line 482
    if-ne v2, v3, :cond_0

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/usb/StorageNotification;->showDialogAndNotification(Landroid/os/storage/VolumeInfo;I)Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 486
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    new-instance v2, Landroid/content/ComponentName;

    .line 489
    const-string/jumbo v3, "com.android.settings"

    .line 490
    const-string/jumbo v5, "com.android.settings.Settings$StorageSettingsActivity"

    .line 488
    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 491
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 492
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 491
    const/4 v3, 0x0

    .line 492
    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    .line 491
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 493
    .local v14, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 494
    const v3, 0x7f0900f6

    .line 493
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 495
    .local v16, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 496
    const v3, 0x7f0900f7

    .line 495
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 497
    .local v12, "message":Ljava/lang/CharSequence;
    const v11, 0x7f020359

    .line 498
    .local v11, "iconId":I
    new-instance v2, Landroid/app/Notification$Builder;

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 498
    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 503
    .local v13, "notification":Landroid/app/Notification;
    iget-object v2, v13, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    .line 502
    const v3, 0x7f0203ff

    .line 503
    iput v3, v2, Landroid/app/NotificationExt;->notificationIcon:I

    .line 504
    iget v2, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v13, Landroid/app/Notification;->flags:I

    .line 505
    return-object v13

    .line 531
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    .end local v11    # "iconId":I
    .end local v12    # "message":Ljava/lang/CharSequence;
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x0

    .line 678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 679
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    .line 680
    .local v0, "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_1

    .line 678
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 684
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    iget v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    if-lez v2, :cond_2

    .line 689
    iget v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    .line 691
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    iget v3, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    add-int/2addr v2, v3

    if-gtz v2, :cond_3

    .line 694
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->removeDialog(Landroid/os/storage/VolumeInfo;)V

    .line 696
    :cond_3
    const-string/jumbo v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVolumeRemoved i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|flymeDisk.unmountableVolumeCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 697
    iget v4, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 697
    const-string/jumbo v4, "|flymeDisk.totalVolumeCount:"

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 698
    iget v4, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 698
    const-string/jumbo v4, "|flymeDisk.totalVolumeCount:"

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 698
    iget v4, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->totalVolumeCount:I

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 703
    .end local v0    # "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    :cond_4
    return-object v5
.end method

.method private onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 296
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_0

    .line 299
    :pswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    return-void

    .line 302
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 13
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 620
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/usb/ExternalMediaFormatActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    const-string/jumbo v0, "_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 624
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 623
    const/4 v1, 0x0

    .line 624
    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 623
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 625
    .local v11, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 626
    const v1, 0x7f0900f9

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 626
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 625
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 627
    .local v12, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 628
    const v1, 0x7f0900fa

    .line 627
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 628
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 627
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 629
    .local v9, "message":Ljava/lang/CharSequence;
    const v8, 0x7f02035a

    .line 630
    .local v8, "iconId":I
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 634
    const/4 v1, 0x1

    .line 630
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 637
    .local v10, "notification":Landroid/app/Notification;
    iget-object v0, v10, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    .line 636
    const v1, 0x7f020400

    .line 637
    iput v1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 638
    return-object v10

    .line 639
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "iconId":I
    .end local v9    # "message":Ljava/lang/CharSequence;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    .line 642
    .local v6, "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_2

    .line 640
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 643
    :cond_2
    iget-object v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    .line 651
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v0, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    if-lez v0, :cond_1

    iget v0, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    .line 653
    iget v1, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    .line 652
    add-int/2addr v0, v1

    .line 653
    iget v1, v6, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->totalVolumeCount:I

    .line 652
    if-ne v0, v1, :cond_1

    .line 657
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/usb/StorageNotification;->showDialogAndNotification(Landroid/os/storage/VolumeInfo;I)Landroid/app/Notification;

    goto :goto_1

    .line 662
    .end local v6    # "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    .end local v7    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x0

    .line 364
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    .line 366
    .local v0, "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_1

    .line 364
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    iget v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    if-lez v2, :cond_2

    .line 375
    iget v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mDisks:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    iget v3, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    add-int/2addr v2, v3

    if-gtz v2, :cond_3

    .line 380
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->removeDialog(Landroid/os/storage/VolumeInfo;)V

    .line 382
    :cond_3
    const-string/jumbo v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVolumeUnmounted i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|flymeDisk.unmountableVolumeCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    iget v4, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->unmountableVolumeCount:I

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v4, "|flymeDisk.totalVolumeCount:"

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    iget v4, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->mountedVolumeCount:I

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    const-string/jumbo v4, "|flymeDisk.totalVolumeCount:"

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    iget v4, v0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->totalVolumeCount:I

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 389
    .end local v0    # "flymeDisk":Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
    :cond_4
    return-object v5
.end method

.method private removeDialog(Landroid/os/storage/VolumeInfo;)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v1, 0x0

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1041
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1046
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    .line 1039
    return-void
.end method

.method private showConfirmDialog(Landroid/os/storage/VolumeInfo;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 982
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 983
    const/4 v3, 0x5

    .line 982
    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 984
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f0900e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 982
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 986
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 987
    const/4 v3, 0x0

    .line 982
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 989
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f0900e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 990
    new-instance v3, Lcom/android/systemui/usb/StorageNotification$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/usb/StorageNotification$5;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    .line 982
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1019
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1020
    const/16 v2, 0x7d3

    .line 1019
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1021
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1022
    return-object v0
.end method

.method private showDialogAndNotification(Landroid/os/storage/VolumeInfo;I)Landroid/app/Notification;
    .locals 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "i"    # I

    .prologue
    .line 540
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 542
    sget v8, Lcom/flyme/internal/R$string;->external_storage_device_name:I

    .line 540
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "diskName":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 545
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 546
    const-class v8, Lcom/android/systemui/usb/ExternalStorageActivity;

    .line 544
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 547
    const-string/jumbo v7, "diskId"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string/jumbo v7, "diskName"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 549
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 550
    const/high16 v8, 0x10000000

    .line 549
    invoke-static {v7, p2, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 551
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 554
    const/4 v9, 0x0

    aput-object v0, v8, v9

    .line 553
    const v9, 0x7f0900dd

    .line 551
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "ticker":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 556
    const v8, 0x7f0900dc

    .line 555
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 557
    .local v6, "title":Ljava/lang/CharSequence;
    sget v1, Lcom/flyme/internal/R$drawable;->mz_stat_sys_external_storage:I

    .line 558
    .local v1, "iconId":I
    new-instance v7, Landroid/app/Notification$Builder;

    .line 559
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 558
    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 563
    .local v3, "notification":Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v3, Landroid/app/Notification;->defaults:I

    .line 564
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_0

    .line 566
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/usb/StorageNotification;->showConfirmDialog(Landroid/os/storage/VolumeInfo;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    .line 568
    :cond_0
    return-object v3
.end method

.method private updateMissingPrivateVolumes()V
    .locals 14

    .prologue
    const v13, 0x53505256

    const/4 v12, 0x1

    .line 223
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v5

    .line 224
    .local v5, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 225
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v8

    if-ne v8, v12, :cond_0

    .line 227
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 229
    .local v1, "info":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 231
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v13, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v9, v12, [Ljava/lang/Object;

    .line 236
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 235
    const v10, 0x1040484

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v9, 0x1040485

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "text":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    const v9, 0x1080424

    .line 239
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 241
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v10, 0x1060070

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 239
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 244
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/StorageNotification;->buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 239
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 245
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    .line 239
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 248
    const-string/jumbo v9, "sys"

    .line 239
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 249
    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 239
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 252
    .local v2, "notif":Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v13, v2, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v1    # "info":Landroid/os/storage/VolumeInfo;
    .end local v2    # "notif":Landroid/app/Notification;
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "text":Ljava/lang/CharSequence;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_4
    return-void
.end method


# virtual methods
.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 196
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 198
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 199
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 201
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 201
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 203
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    .line 208
    .local v2, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "disk$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 209
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget v6, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    invoke-direct {p0, v0, v6}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    goto :goto_0

    .line 212
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 213
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vol$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 214
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_1

    .line 217
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    .line 195
    return-void
.end method
