.class Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;
.super Ljava/lang/Object;
.source "MzKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView$2;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardSimPukView$2;
    .param p2, "val$result"    # I
    .param p3, "val$attemptsRemaining"    # I

    .prologue
    .line 329
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iput p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$result:I

    iput p3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 331
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v1, v4}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->resetPasswordText(Z)V

    .line 332
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$result:I

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPukView;)I

    move-result v2

    .line 333
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 335
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1, v6}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-set0(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;)Lcom/meizu/keyguard/MzKeyguardSimPukView$CheckSimPuk;

    .line 330
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get1(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get1(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/UnLockLoadingDialog;->hide()V

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->enter_puk_times:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$result:I

    if-ne v1, v4, :cond_5

    .line 342
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    if-nez v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->sim_permanently_locked:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-wrap2(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/CharSequence;Z)V

    .line 344
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 357
    :goto_1
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->showErrorPasswordAnim(Landroid/view/View;)V

    .line 360
    :cond_2
    const-string/jumbo v1, "MzKeyguardSimPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get2(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->resetPukState()V

    goto/16 :goto_0

    .line 345
    :cond_3
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_4

    .line 347
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-static {v1, v2}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-wrap3(Lcom/meizu/keyguard/MzKeyguardSimPukView;I)V

    .line 348
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 351
    :cond_4
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 354
    :cond_5
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$2$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPukView$2;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v2}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 355
    sget v3, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    .line 354
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
