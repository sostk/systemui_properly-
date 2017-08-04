.class Lcom/meizu/common/widget/AnimSeekBar$3;
.super Ljava/lang/Object;
.source "AnimSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AnimSeekBar;->pressPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AnimSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AnimSeekBar;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/meizu/common/widget/AnimSeekBar$3;->this$0:Lcom/meizu/common/widget/AnimSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 486
    .local v0, "mMoveUpValue":I
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar$3;->this$0:Lcom/meizu/common/widget/AnimSeekBar;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/AnimSeekBar;->access$200(Lcom/meizu/common/widget/AnimSeekBar;I)V

    .line 487
    iget-object v1, p0, Lcom/meizu/common/widget/AnimSeekBar$3;->this$0:Lcom/meizu/common/widget/AnimSeekBar;

    invoke-virtual {v1}, Lcom/meizu/common/widget/AnimSeekBar;->invalidate()V

    .line 488
    return-void
.end method
