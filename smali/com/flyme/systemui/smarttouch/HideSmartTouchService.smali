.class public Lcom/flyme/systemui/smarttouch/HideSmartTouchService;
.super Landroid/app/IntentService;
.source "HideSmartTouchService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "HideSmartTouch"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v0, :cond_0

    .line 19
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "hide when screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->hide()V

    .line 17
    :cond_0
    return-void
.end method
