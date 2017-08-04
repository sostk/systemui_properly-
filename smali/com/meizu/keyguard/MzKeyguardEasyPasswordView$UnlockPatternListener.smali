.class Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "MzKeyguardEasyPasswordView.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;


# direct methods
.method private constructor <init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;-><init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    const/4 v10, 0x0

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 311
    .local v6, "size":I
    add-int/lit8 v7, v6, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/LockDigitView$Cell;

    .line 312
    .local v4, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v7, v4}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "newNum":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mResetPasswordText:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 314
    const-string/jumbo v7, "left"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 350
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mResetPasswordText:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    return-void

    .line 315
    :cond_1
    const-string/jumbo v7, "right"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "enterGuestMode":Z
    const/4 v1, 0x0

    .line 318
    .local v1, "enterPrivacyMode":Z
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-static {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v3

    .line 320
    .local v3, "isSaveMode":Z
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getPasswordLimit()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_2

    return-void

    .line 322
    :cond_2
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    .line 323
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 324
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputBox:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 327
    if-nez v3, :cond_3

    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-boolean v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mGuestMode:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getGuestPwdLength()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 328
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->checkGuestModePassword(Ljava/lang/String;)Z

    move-result v2

    .line 329
    .local v2, "guestPwdResult":Z
    if-eqz v2, :cond_3

    .line 330
    const/4 v0, 0x1

    .line 331
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->onGuestMode()V

    .line 335
    .end local v2    # "guestPwdResult":Z
    :cond_3
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-static {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->-get0(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPrivateModeEnable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 336
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v8, v7, :cond_4

    .line 337
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->verifyPrivacyPasswordAndUnlock()Z

    move-result v1

    .line 340
    .end local v1    # "enterPrivacyMode":Z
    :cond_4
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v7, v7, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v7}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->getPasswordLimit()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    iget-object v8, v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 341
    iget-object v7, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    new-instance v8, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener$1;

    invoke-direct {v8, p0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener$1;-><init>(Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;)V

    invoke-virtual {v7, v8}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 357
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 358
    .local v0, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v3, v0}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "newNum":Ljava/lang/String;
    const-string/jumbo v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    :cond_0
    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView$UnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;

    invoke-virtual {v3}, Lcom/meizu/keyguard/MzKeyguardEasyPasswordView;->verifyPasswordAndUnlock()V

    .line 355
    :cond_1
    return-void
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
