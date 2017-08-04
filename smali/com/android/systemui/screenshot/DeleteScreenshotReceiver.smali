.class public Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteScreenshotReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method cancelNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mContext:Landroid/content/Context;

    .line 64
    const-string/jumbo v2, "notification"

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 65
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 62
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string/jumbo v4, "DeleteScreenshotReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v4, "file_path"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mFilePath:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.android.systemui.action.DELETE_SCREENSHOT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$1;-><init>(Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 49
    const/16 v4, 0x315

    invoke-virtual {p0, v4}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->cancelNotification(I)V

    .line 51
    :cond_0
    const-string/jumbo v4, "mob_event"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    .local v2, "mobEvent":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string/jumbo v4, "delete"

    invoke-static {p1, v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetScreenshotClick(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "mobEvent":Ljava/lang/Boolean;
    .end local v3    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
