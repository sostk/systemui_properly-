.class Lcom/meizu/keyguard/MzKeyguardSimPinView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MzKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 73
    const-string/jumbo v0, "MzKeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChanged(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") slotid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, p3, :cond_0

    .line 75
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->resetState()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/UnLockLoadingDialog;->hide()V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get2(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get1(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, p3, :cond_2

    .line 84
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p3, :cond_4

    .line 86
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_3

    .line 87
    const-string/jumbo v0, "MzKeyguardSimPinView"

    const-string/jumbo v1, "dimiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 72
    :cond_3
    return-void

    .line 85
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p3, :cond_3

    goto :goto_0
.end method
