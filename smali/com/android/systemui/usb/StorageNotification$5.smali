.class Lcom/android/systemui/usb/StorageNotification$5;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->showConfirmDialog(Landroid/os/storage/VolumeInfo;Ljava/lang/String;)Landroid/app/AlertDialog;
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
    .line 990
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1}, Lcom/android/systemui/usb/StorageNotification;->-wrap0(Lcom/android/systemui/usb/StorageNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 996
    return-void

    .line 1011
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.flyme.filemanager.action.VIEW_DIRECTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1015
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 994
    return-void
.end method
