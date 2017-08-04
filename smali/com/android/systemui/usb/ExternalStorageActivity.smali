.class public Lcom/android/systemui/usb/ExternalStorageActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/ExternalStorageActivity$1;
    }
.end annotation


# instance fields
.field private diskId:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/android/systemui/usb/ExternalStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/ExternalStorageActivity$1;-><init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void
.end method

.method private fileManagerExists()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    const-string/jumbo v3, "com.meizu.filemanager"

    .line 113
    const/16 v4, 0x2000

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 115
    const/4 v2, 0x1

    return v2

    .line 116
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 118
    return v5

    .line 120
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return v5
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->finish()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->finish()V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->fileManagerExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.meizu.filemanager"

    .line 92
    const-string/jumbo v3, "com.meizu.filemanager.managefile.FileManagerActivity"

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v2, 0x14200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    const-string/jumbo v2, "init_directory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otg://root/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->diskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/ExternalStorageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->finish()V

    goto :goto_0

    .line 99
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "ExternalStorageActivity"

    const-string/jumbo v3, "Cannot find FileManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "diskId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->diskId:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 42
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0900e3

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    const-string/jumbo v4, "diskName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 41
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 44
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    const v2, 0x7f0900e4

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 48
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 49
    const v2, 0x7f0900e5

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->setupAlert()V

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/ExternalStorageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action.external.volume.removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "action.external.volume.idle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "action.external.volume.unmounting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/ExternalStorageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method
