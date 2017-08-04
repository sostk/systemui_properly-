.class public Lcom/meizu/common/widget/InstallProgressBar;
.super Landroid/view/View;
.source "InstallProgressBar.java"


# static fields
.field private static final FLOAT_ESPINON:F = 1.0E-6f


# instance fields
.field private mMaxProgress:I

.field private mMinProgress:I

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:F

.field private mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 29
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 40
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBar;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 29
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 45
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBar;->init()V

    .line 46
    return-void
.end method

.method private static FloatEquals(FF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 137
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawHorizontalProgress(Landroid/graphics/Canvas;Z)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fromUser"    # Z

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getProgress()F

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMaxProgress()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 66
    .local v1, "scale":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v2, v1

    .line 68
    .end local v1    # "scale":F
    .local v0, "indicatorWidth":F
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    return-void

    .line 63
    .end local v0    # "indicatorWidth":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v2

    int-to-float v0, v2

    .restart local v0    # "indicatorWidth":F
    goto :goto_0
.end method

.method private drawHorizontalProgressBackground(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 110
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    return-object v0

    .line 107
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getProgressAnimator(F)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "progress"    # F

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const-string/jumbo v1, "Progress"

    .line 120
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    aput p1, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string/jumbo v1, "Progress"

    .line 123
    new-array v2, v2, [F

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    aput v3, v2, v4

    aput p1, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    const/16 v0, 0x64

    .line 50
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    .line 51
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/meizu/common/R$drawable;->mc_round_button_normal:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 53
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 54
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    sget v2, Lcom/meizu/common/R$drawable;->mc_install_progress_bg_normal:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/InstallProgressBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    return-void
.end method


# virtual methods
.method public cancelProgressAnimator()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgressBackground(Landroid/graphics/Canvas;)V

    .line 95
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgress(Landroid/graphics/Canvas;Z)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->drawHorizontalProgress(Landroid/graphics/Canvas;Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mWidth:I

    if-ne v0, v1, :cond_0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 91
    :goto_2
    return-void

    .line 81
    :cond_0
    iput-object v2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 82
    iput-object v2, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mWidth:I

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public resetWidth()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 213
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V

    .line 227
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 217
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBgDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 218
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 221
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2
.end method

.method public declared-synchronized setAnimProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->getProgressAnimator(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 182
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    .line 205
    return-void
.end method

.method public setMinProgress(I)V
    .locals 0
    .param p1, "minProgress"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMinProgress:I

    .line 209
    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 164
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 168
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 169
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mMaxProgress:I

    int-to-float p1, v0

    .line 172
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    invoke-static {p1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->FloatEquals(FF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    monitor-exit p0

    .line 176
    return-void

    .line 173
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgress:F

    .line 174
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRoundBtnColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v1, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 157
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->invalidate()V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 155
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressSolidDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBar;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBar;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2
.end method
