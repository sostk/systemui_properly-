.class public Lcom/meizu/common/widget/MzRatingBar;
.super Landroid/widget/RatingBar;
.source "MzRatingBar.java"


# instance fields
.field private mStarColors:[I

.field private mStarDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/MzRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_MzRatingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/MzRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v2, Lcom/meizu/common/R$styleable;->MzRatingBar:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/common/R$styleable;->MzRatingBar_mcStarColors:I

    sget v3, Lcom/meizu/common/R$array;->mc_rating_bar_default_colors:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 46
    .local v1, "colorArrayId":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    .line 47
    sget v2, Lcom/meizu/common/R$styleable;->MzRatingBar_mcStarDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$drawable;->mz_btn_big_star_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getProgressPos()I
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 96
    .local v0, "available":I
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->getScale()F

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingLeft()I

    move-result v3

    add-int v1, v2, v3

    .line 97
    .local v1, "progressPos":I
    return v1
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getMax()I

    move-result v0

    .line 102
    .local v0, "max":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RatingBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 78
    return-void

    .line 57
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    invoke-direct {p0}, Lcom/meizu/common/widget/MzRatingBar;->getProgressPos()I

    move-result v3

    .local v3, "pogressPos":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getHeight()I

    move-result v7

    invoke-virtual {p1, v5, v6, v3, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 62
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingLeft()I

    move-result v0

    .line 63
    .local v0, "drawableLeft":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getPaddingTop()I

    move-result v1

    .local v1, "drawableTop":I
    const/4 v2, 0x0

    .line 64
    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "drawableLeft":I
    .end local v1    # "drawableTop":I
    .end local v2    # "i":I
    .end local v3    # "pogressPos":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 66
    .restart local v0    # "drawableLeft":I
    .restart local v1    # "drawableTop":I
    .restart local v2    # "i":I
    .restart local v3    # "pogressPos":I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 69
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    aget v4, v5, v2

    .line 71
    .local v4, "starColor":I
    :goto_2
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v0, v5

    .line 74
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v4    # "starColor":I
    :cond_3
    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    iget-object v6, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v4, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "starColor":I
    goto :goto_2
.end method

.method public setStarColors([I)V
    .locals 0
    .param p1, "starColors"    # [I

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/MzRatingBar;->mStarColors:[I

    goto :goto_0
.end method
