.class public Lcom/meizu/common/widget/GlowDelegate;
.super Ljava/lang/Object;
.source "GlowDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlowDelegate"


# instance fields
.field final BUTTON_QUIESCENT_ALPHA:F

.field final GLOW_MAX_SCALE_FACTOR:F

.field final GLOW_MIN_SCALE_FACTOR:F

.field mDrawingAlpha:F

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field mGlowHeight:I

.field mGlowScale:F

.field mGlowWidth:I

.field private mPressed:Z

.field mPressedAnim:Landroid/animation/AnimatorSet;

.field mRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegateView"    # Landroid/view/View;

    .prologue
    const v3, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressed:Z

    .line 24
    iput v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowAlpha:F

    iput v2, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    iput v2, p0, Lcom/meizu/common/widget/GlowDelegate;->mDrawingAlpha:F

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    .line 27
    iput v2, p0, Lcom/meizu/common/widget/GlowDelegate;->GLOW_MAX_SCALE_FACTOR:F

    .line 28
    iput v3, p0, Lcom/meizu/common/widget/GlowDelegate;->BUTTON_QUIESCENT_ALPHA:F

    const v0, 0x3f3851ec    # 0.72f

    .line 29
    iput v0, p0, Lcom/meizu/common/widget/GlowDelegate;->GLOW_MIN_SCALE_FACTOR:F

    .line 32
    iput-object p2, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_ic_actionbar_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 38
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowWidth:I

    .line 39
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowHeight:I

    goto :goto_0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 109
    return-void
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mDrawingAlpha:F

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 83
    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowAlpha:F

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 97
    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 112
    return v0
.end method

.method public invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 200
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "view":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 202
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 203
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressed:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GlowDelegate;->setGlowAlpha(F)V

    const v0, 0x3f3851ec    # 0.72f

    .line 218
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GlowDelegate;->setGlowScale(F)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 52
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 80
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 55
    .local v5, "w":I
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 60
    .local v2, "h":I
    iget v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowWidth:I

    .line 61
    .local v1, "drawW":I
    iget v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowHeight:I

    .line 62
    .local v0, "drawH":I
    sub-int v6, v1, v5

    div-int/lit8 v4, v6, 0x2

    .line 63
    .local v4, "marginWidth":I
    sub-int v6, v0, v2

    div-int/lit8 v3, v6, 0x2

    .line 69
    .local v3, "marginHeight":I
    iget v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    iget v7, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    int-to-float v8, v5

    mul-float/2addr v8, v10

    int-to-float v9, v2

    mul-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 73
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    neg-int v7, v4

    neg-int v8, v3

    sub-int v9, v1, v4

    sub-int v10, v0, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/common/widget/GlowDelegate;->mDrawingAlpha:F

    iget v8, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowAlpha:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 75
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v5

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 78
    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    iput p1, p0, Lcom/meizu/common/widget/GlowDelegate;->mDrawingAlpha:F

    .line 94
    return-void

    .line 88
    :cond_0
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iput p1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowAlpha:F

    .line 104
    invoke-direct {p0}, Lcom/meizu/common/widget/GlowDelegate;->invalidate()V

    .line 105
    return-void

    .line 102
    :cond_0
    return-void
.end method

.method public setGlowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 44
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    :cond_0
    const v0, 0x3f333333    # 0.7f

    .line 45
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 46
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowWidth:I

    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowHeight:I

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 10
    .param p1, "x"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 117
    iget-object v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 118
    iput p1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    .line 119
    iget-object v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 120
    .local v3, "w":F
    iget-object v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 141
    .local v0, "h":F
    iget v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v3

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 142
    .local v1, "rx":F
    iget v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 143
    .local v2, "ry":F
    iget-object v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    iget-object v9, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/GlowDelegate;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 152
    iget-object v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 155
    :goto_0
    return-void

    .line 117
    .end local v0    # "h":F
    .end local v1    # "rx":F
    .end local v2    # "ry":F
    .end local v3    # "w":F
    :cond_0
    return-void

    .line 153
    .restart local v0    # "h":F
    .restart local v1    # "rx":F
    .restart local v2    # "ry":F
    .restart local v3    # "w":F
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 7
    .param p1, "pressed"    # Z

    .prologue
    const v3, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 158
    iget-object v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressed:Z

    .line 196
    invoke-direct {p0}, Lcom/meizu/common/widget/GlowDelegate;->invalidate()V

    .line 197
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GlowDelegate;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_3

    .line 163
    :cond_2
    :goto_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    .line 164
    .local v0, "as":Landroid/animation/AnimatorSet;
    if-nez p1, :cond_4

    .line 183
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GlowDelegate;->setDrawingAlpha(F)V

    const/4 v1, 0x2

    .line 184
    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "glowScale"

    new-array v3, v6, [F

    const v4, 0x3f3851ec    # 0.72f

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x1a0

    .line 189
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 191
    :goto_2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 160
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_1

    .line 165
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 166
    iput v2, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowScale:F

    .line 167
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowAlpha:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6

    .line 168
    iput v3, p0, Lcom/meizu/common/widget/GlowDelegate;->mGlowAlpha:F

    .line 170
    :cond_6
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GlowDelegate;->setGlowScale(F)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/GlowDelegate;->setGlowAlpha(F)V

    goto :goto_2
.end method
