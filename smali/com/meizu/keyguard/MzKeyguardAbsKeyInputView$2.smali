.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MzKeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAuthenticated(IIZ)V
    .locals 3
    .param p1, "systemMode"    # I
    .param p2, "userId"    # I
    .param p3, "wakeAndUnlocking"    # Z

    .prologue
    .line 659
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 658
    :cond_1
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string/jumbo v0, "MzKeyguardAbsKeyInputView"

    const-string/jumbo v1, "onAuthenticationError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string/jumbo v0, "MzKeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onFingerprintFail()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 631
    :cond_1
    return-void
.end method

.method public onPowerSaveModeChanged(Z)V
    .locals 2
    .param p1, "save"    # Z

    .prologue
    .line 612
    if-eqz p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCancelKey:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    .line 599
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 600
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "subestClassName":Ljava/lang/String;
    const-class v1, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const-class v1, Lcom/meizu/keyguard/MzKeyguardPasswordView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 601
    if-eqz v1, :cond_1

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get3(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->enter_password:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->initThemeValues()V

    .line 654
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->setThemeValues()V

    .line 652
    return-void
.end method
