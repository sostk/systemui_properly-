.class Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;
.super Ljava/lang/Object;
.source "MzKeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->showRecongnizeFailAnim(Landroid/view/View;)V
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
    .line 779
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 803
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-set2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;I)I

    .line 797
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get4(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-get4(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 794
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 788
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView$8;->this$0:Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;->-set2(Lcom/meizu/keyguard/MzKeyguardAbsKeyInputView;I)I

    .line 782
    return-void
.end method
