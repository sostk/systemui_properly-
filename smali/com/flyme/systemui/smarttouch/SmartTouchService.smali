.class public Lcom/flyme/systemui/smarttouch/SmartTouchService;
.super Landroid/app/Service;
.source "SmartTouchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouchService$1;
    }
.end annotation


# instance fields
.field final mBinder:Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/smarttouch/SmartTouchService$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchService;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService;->mBinder:Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;

    .line 10
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "bind SmartTouchService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchService;->mBinder:Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onForceHide(Z)V

    .line 23
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "unbind SmartTouchService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x1

    return v0
.end method
