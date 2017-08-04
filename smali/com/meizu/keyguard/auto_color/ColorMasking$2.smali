.class Lcom/meizu/keyguard/auto_color/ColorMasking$2;
.super Ljava/lang/Object;
.source "ColorMasking.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/auto_color/ColorMasking;->createAlphaAnimator(FLjava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/auto_color/ColorMasking;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/auto_color/ColorMasking;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$2;->this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$2;->this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->-get1(Lcom/meizu/keyguard/auto_color/ColorMasking;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 122
    return-void
.end method
