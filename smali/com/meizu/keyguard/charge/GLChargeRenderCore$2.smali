.class Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;
.super Ljava/lang/Object;
.source "GLChargeRenderCore.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/charge/GLChargeRenderCore;->doRender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v2, v1

    .line 135
    .local v0, "angleInDegrees":F
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    invoke-virtual {v1, v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->setTime(F)V

    .line 136
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    iget-object v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v2}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get2(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->setParameter1(F)V

    .line 137
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    iget-object v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v2}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get4(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->setParameter2(F)V

    .line 138
    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;->this$0:Lcom/meizu/keyguard/charge/GLChargeRenderCore;

    invoke-static {v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->-get0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 133
    return-void
.end method
