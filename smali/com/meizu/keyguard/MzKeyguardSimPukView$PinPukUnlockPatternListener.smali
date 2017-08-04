.class Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;
.super Ljava/lang/Object;
.source "MzKeyguardSimPukView.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinPukUnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 7
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
    const/4 v6, 0x0

    .line 402
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 403
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 404
    .local v0, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v3, v0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "newNum":Ljava/lang/String;
    const-string/jumbo v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 401
    return-void

    .line 406
    :cond_1
    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 408
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputNum:Ljava/lang/String;

    .line 409
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mInputBox:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 397
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
    .line 420
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 421
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 422
    .local v0, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v3, v0}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "newNum":Ljava/lang/String;
    const-string/jumbo v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    :cond_0
    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v3}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->verifyPasswordAndUnlock()V

    .line 419
    :cond_1
    return-void
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method
