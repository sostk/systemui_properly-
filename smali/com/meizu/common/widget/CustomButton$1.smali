.class Lcom/meizu/common/widget/CustomButton$1;
.super Ljava/lang/Object;
.source "CustomButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomButton;->startAnimator(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomButton;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/meizu/common/widget/CustomButton$1;->this$0:Lcom/meizu/common/widget/CustomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 199
    .local v0, "setAlphaSignTemp":F
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton$1;->this$0:Lcom/meizu/common/widget/CustomButton;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/CustomButton;->access$000(Lcom/meizu/common/widget/CustomButton;F)V

    .line 200
    iget-object v1, p0, Lcom/meizu/common/widget/CustomButton$1;->this$0:Lcom/meizu/common/widget/CustomButton;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomButton;->invalidate()V

    .line 201
    return-void
.end method
