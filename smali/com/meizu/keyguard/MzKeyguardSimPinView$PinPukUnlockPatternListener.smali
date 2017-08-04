.class Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;
.super Ljava/lang/Object;
.source "MzKeyguardSimPinView.java"

# interfaces
.implements Lcom/meizu/widget/LockDigitView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinPukUnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;


# direct methods
.method private constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPinView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPinView;)V

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

    .line 362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 363
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 364
    .local v0, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-virtual {v3, v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "newNum":Ljava/lang/String;
    const-string/jumbo v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 361
    return-void

    .line 366
    :cond_1
    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 368
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputNum:Ljava/lang/String;

    .line 369
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputText:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputDelete:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    iget-object v3, v3, Lcom/meizu/keyguard/MzKeyguardSimPinView;->mInputBox:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 357
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
    .line 380
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/widget/LockDigitView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 381
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView$Cell;

    .line 382
    .local v0, "newCell":Lcom/meizu/widget/LockDigitView$Cell;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-virtual {v3, v0}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "newNum":Ljava/lang/String;
    const-string/jumbo v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    :cond_0
    const-string/jumbo v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPinView$PinPukUnlockPatternListener;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPinView;

    invoke-virtual {v3}, Lcom/meizu/keyguard/MzKeyguardSimPinView;->verifyPasswordAndUnlock()V

    .line 379
    :cond_1
    return-void
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method
