.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 133
    .local v1, "totalSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 134
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 133
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    iget-object v2, v2, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;

    iget-object v2, v2, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 128
    :cond_4
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 1
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->-wrap1(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V

    .line 123
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->-get2(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v2, 0x53505256

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 117
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1}, Lcom/android/systemui/usb/StorageNotification;->-get3(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 111
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1, v0}, Lcom/android/systemui/usb/StorageNotification;->-wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/usb/StorageNotification;->-wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V

    .line 101
    return-void
.end method
