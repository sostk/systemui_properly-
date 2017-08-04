.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/TakeScreenshotService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 48
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 52
    .local v0, "callback":Landroid/os/Messenger;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v6

    if-nez v6, :cond_0

    .line 53
    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v9, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v6, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v6}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 56
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v6}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v6}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get2(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    :cond_1
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 66
    .local v4, "isLongPress":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v9, "long_press"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 69
    .end local v4    # "isLongPress":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 71
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.flyme.systemuitools.screenshot.TEST.ACTION_START_SCREENSHOT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.flyme.systemuitools"

    const-string/jumbo v7, "com.flyme.systemuitools.screenshot.ScreenshotService"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {v6, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 75
    .local v5, "reply":Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "reply":Landroid/os/Message;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetScreenshotKeydown(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v10, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 89
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_5

    move v6, v7

    :goto_3
    iget v11, p1, Landroid/os/Message;->arg2:I

    if-lez v11, :cond_6

    .line 80
    :goto_4
    invoke-virtual {v9, v10, v6, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_2

    :cond_5
    move v6, v8

    .line 89
    goto :goto_3

    :cond_6
    move v7, v8

    goto :goto_4

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
