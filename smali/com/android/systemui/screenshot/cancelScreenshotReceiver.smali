.class public Lcom/android/systemui/screenshot/cancelScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "cancelScreenshotReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    const-string/jumbo v1, "com.android.systemui.action.CANCEL_SCREENSHOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    const-string/jumbo v1, "mob_event"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    .local v0, "mobEvent":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-string/jumbo v1, "cancel"

    invoke-static {p1, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetScreenshotClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .end local v0    # "mobEvent":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method
