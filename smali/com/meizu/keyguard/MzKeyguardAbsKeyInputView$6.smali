.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;
.super Landroid/os/CountDownTimer;
.source "MzKeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 400
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-set1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;Z)Z

    .line 416
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->enter_password:I

    .line 418
    const/4 v2, 0x1

    .line 417
    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->resetState()V

    .line 414
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 404
    const-string/jumbo v1, "MzKeyguardAbsKeyInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAttemptLockout onTick millisUntilFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mFPTimeOutFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v3}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 407
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$6;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 408
    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    .line 407
    new-array v3, v6, [Ljava/lang/Object;

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 407
    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 403
    .end local v0    # "secondsRemaining":I
    :cond_0
    return-void
.end method
