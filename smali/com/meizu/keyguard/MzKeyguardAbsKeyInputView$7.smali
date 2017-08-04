.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;
.super Landroid/os/CountDownTimer;
.source "MzKeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->handleFPAttemptLockout(J)V
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
    .line 750
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-set0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;Z)Z

    .line 769
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->enter_password:I

    .line 771
    const/4 v2, 0x1

    .line 770
    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 767
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 754
    const-string/jumbo v0, "MzKeyguardAbsKeyInputView"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFPAttemptLockout onTick millisUntilFinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 756
    const-string/jumbo v2, ", mFPTimeOutFlag = "

    .line 755
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v2

    .line 755
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get5(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$7;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 761
    sget v1, Lcom/android/keyguard/R$string;->kg_fp_too_many_failed_attempts_countdown:I

    .line 760
    new-array v2, v6, [Ljava/lang/Object;

    .line 762
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 760
    invoke-interface {v0, v1, v6, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 753
    :cond_1
    return-void
.end method
