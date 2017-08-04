.class Lcom/meizu/common/util/ResourceUtils$2;
.super Ljava/lang/Object;
.source "ResourceUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ResourceUtils;->startBrightnessAnim(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$colorMatrix:Landroid/graphics/ColorMatrix;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/ColorMatrix;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/meizu/common/util/ResourceUtils$2;->val$colorMatrix:Landroid/graphics/ColorMatrix;

    iput-object p2, p0, Lcom/meizu/common/util/ResourceUtils$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 289
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 290
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/meizu/common/util/ResourceUtils$2;->val$colorMatrix:Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v4, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v0, v2, v3

    const/16 v3, 0xf

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v4, v2, v3

    const/16 v3, 0x12

    aput v5, v2, v3

    const/16 v3, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 293
    iget-object v1, p0, Lcom/meizu/common/util/ResourceUtils$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/meizu/common/util/ResourceUtils$2;->val$colorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 294
    return-void
.end method
