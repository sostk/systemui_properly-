.class Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$2;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)V
    .locals 0

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$2;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1475
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$2;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$2100(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$2;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$2100(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;->onAnimationEnd()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1480
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1463
    return-void
.end method
