.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;
.super Ljava/lang/Object;
.source "MzKeyguardAbsKeyInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 502
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->switchSystemMode(I)V

    .line 506
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-wrap1(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)V

    .line 508
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 509
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 504
    return-void
.end method
