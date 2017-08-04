.class Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlymeDiskInfo"
.end annotation


# instance fields
.field public disk:Landroid/os/storage/DiskInfo;

.field public mountedVolumeCount:I

.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;

.field public totalVolumeCount:I

.field public unmountableVolumeCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p2, "disk"    # Landroid/os/storage/DiskInfo;
    .param p3, "totalVolumeCount"    # I

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 90
    iput p3, p0, Lcom/android/systemui/usb/StorageNotification$FlymeDiskInfo;->totalVolumeCount:I

    .line 88
    return-void
.end method
