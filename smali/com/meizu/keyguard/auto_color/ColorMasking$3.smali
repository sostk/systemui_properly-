.class Lcom/meizu/keyguard/auto_color/ColorMasking$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorMasking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/auto_color/ColorMasking;->createAlphaAnimator(FLjava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/auto_color/ColorMasking;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/auto_color/ColorMasking;
    .param p2, "val$endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$3;->this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

    iput-object p2, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$3;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$3;->mCanceled:Z

    .line 137
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$3;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$3;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$3;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    :cond_0
    return-void
.end method
