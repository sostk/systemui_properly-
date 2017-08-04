.class public Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;
.super Lmeizu/statusbar/IFlymeStatusBar$Stub;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;,
        Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallbacks:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;)Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mCallbacks:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    return-object v0
.end method

.method public constructor <init>(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    .prologue
    .line 42
    invoke-direct {p0}, Lmeizu/statusbar/IFlymeStatusBar$Stub;-><init>()V

    .line 10
    const-string/jumbo v0, "FlymeCommandQueue"

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;-><init>(Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$H;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mCallbacks:Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue$Callbacks;

    .line 42
    return-void
.end method


# virtual methods
.method public hideAlwaysTextAndIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x70000

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    return-void
.end method

.method public releaseAndCloseHeadsUp()V
    .locals 2

    .prologue
    const/high16 v1, 0x30000

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    return-void
.end method

.method public setNotificationReplyingInfo(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/high16 v1, 0x40000

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method

.method public setStatusBarColorTheme(IZ)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "animate"    # Z

    .prologue
    const/high16 v3, 0x20000

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .locals 5
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v4, 0x10000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    .line 53
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void

    :cond_0
    move v2, v1

    .line 53
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/high16 v1, 0x60000

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 74
    return-void
.end method
