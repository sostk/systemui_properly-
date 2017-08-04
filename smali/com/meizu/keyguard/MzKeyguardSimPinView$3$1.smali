.class Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;
.super Ljava/lang/Object;
.source "MzKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView$3;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardSimPinView$3;
    .param p2, "val$result"    # I
    .param p3, "val$attemptsRemaining"    # I

    .prologue
    .line 293
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iput p2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$result:I

    iput p3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$attemptsRemaining:I

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

    .line 295
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-virtual {v1, v4}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->resetPasswordText(Z)V

    .line 296
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$result:I

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 330
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v1, v6}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-set0(Lcom/meizu/keyguard/MzKeyguardSimPinView;Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;)Lcom/meizu/keyguard/MzKeyguardSimPinView$CheckSimPin;

    .line 294
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Lcom/meizu/keyguard/UnLockLoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/UnLockLoadingDialog;->hide()V

    .line 304
    :cond_2
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$result:I

    if-ne v1, v4, :cond_3

    .line 305
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-get0(Lcom/meizu/keyguard/MzKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->enter_pin_times:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 306
    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 305
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$attemptsRemaining:I

    if-nez v1, :cond_4

    .line 322
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v1, "MzKeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$result:I

    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string/jumbo v3, " attemptsRemaining="

    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$attemptsRemaining:I

    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->showErrorPasswordAnim(Landroid/view/View;)V

    goto/16 :goto_0

    .line 309
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$attemptsRemaining:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_5

    .line 310
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 314
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->this$1:Lcom/meizu/keyguard/MzKeyguardSimPinView$3;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardSimPinView$3;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v2, v3}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardSimPinView;I)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
