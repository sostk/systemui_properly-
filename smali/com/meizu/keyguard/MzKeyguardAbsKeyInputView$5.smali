.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;
.super Ljava/lang/Object;
.source "MzKeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V
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
    .line 315
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v2, 0x1

    .line 318
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchSystemMode(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$5;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0, p1, p2, v2}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;ZIZ)V

    .line 317
    return-void
.end method
