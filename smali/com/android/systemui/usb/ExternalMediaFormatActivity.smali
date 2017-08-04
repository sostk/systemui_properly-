.class public Lcom/android/systemui/usb/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/ExternalMediaFormatActivity$1;
    }
.end annotation


# instance fields
.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/android/systemui/usb/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/ExternalMediaFormatActivity$1;-><init>(Lcom/android/systemui/usb/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "_ID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v5, "ExternalMediaFormatActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get format id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v1, :cond_1

    .line 111
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 112
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 113
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 114
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    const-string/jumbo v5, "storage_volume"

    aget-object v6, v4, v0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    .end local v0    # "i":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v4    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->finish()V

    .line 101
    return-void

    .line 113
    .restart local v0    # "i":I
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v4    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v1, "ExternalMediaFormatActivity"

    const-string/jumbo v2, "onCreate!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0900fb

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    const v1, 0x7f0900fc

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 72
    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 73
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 75
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->setupAlert()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method
