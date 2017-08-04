.class public abstract Lcom/meizu/common/widget/AbsSeekBar;
.super Lcom/meizu/common/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field public static final SEEK_BAR_SCROLL_MODE_COMMON:I = 0x0

.field public static final SEEK_BAR_SCROLL_MODE_SLOW:I = 0x1


# instance fields
.field private mDisabledAlpha:F

.field private mDragTouchDownX:F

.field private mDragTouchDownY:F

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInDragoning:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field mIsVertical:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field protected mTouchScrollMode:I

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 52
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 724
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/16 v0, 0x100

    .line 725
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 727
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    const/4 v0, 0x0

    .line 729
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 730
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 731
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 732
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 52
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 724
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/16 v0, 0x100

    .line 725
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 727
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    const/4 v0, 0x0

    .line 729
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 730
    iput-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 731
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 732
    iput v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 52
    iput-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    .line 57
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 724
    iput v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/16 v3, 0x100

    .line 725
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 727
    iput v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    const/4 v3, 0x0

    .line 729
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 730
    iput-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 731
    iput v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 732
    iput v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    .line 78
    sget-object v3, Lcom/meizu/common/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/meizu/common/R$styleable;->SeekBar_mcThumb:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget v3, Lcom/meizu/common/R$styleable;->SeekBar_mcThumbOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 85
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 88
    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 90
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 91
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    iget v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    .line 92
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private getIntFromFloat(F)I
    .locals 1
    .param p1, "num"    # F

    .prologue
    .line 749
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPosByProgress(I)I
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 768
    iget-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v4, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    .line 773
    .local v0, "available":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v2

    .line 774
    .local v2, "x":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    .line 775
    .local v3, "y":I
    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float v1, v4, v5

    .local v1, "prog":F
    const/4 v4, 0x0

    .line 776
    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 777
    iget-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v4, :cond_1

    .line 780
    return v2

    .line 769
    .end local v0    # "available":I
    .end local v1    # "prog":F
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .restart local v0    # "available":I
    goto :goto_0

    .line 778
    .restart local v1    # "prog":F
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_1
    return v3

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 785
    iget-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v4, :cond_3

    .line 788
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    .line 786
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    .line 792
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lez v4, :cond_5

    .line 800
    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 801
    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 802
    iget-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v4, :cond_7

    .line 805
    return v2

    .line 793
    :cond_5
    iget-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v4, :cond_6

    .line 796
    return v2

    .line 794
    :cond_6
    return v3

    .line 803
    :cond_7
    return v3
.end method

.method private getProgressByPos(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 755
    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v2, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 761
    .local v0, "available":I
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v2

    mul-int/2addr v2, p1

    div-int v1, v2, v0

    .line 762
    .local v1, "progress":I
    int-to-float v2, v1

    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    return v2

    .line 756
    .end local v0    # "available":I
    .end local v1    # "progress":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 757
    .restart local v0    # "available":I
    sub-int p1, v0, p1

    goto :goto_0
.end method

.method private setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "scale"    # F
    .param p5, "gap"    # I

    .prologue
    .line 336
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 337
    .local v8, "thumbWidth":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 338
    .local v6, "thumbHeight":I
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v1, v10, v8

    .line 345
    .local v1, "available":I
    :goto_0
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    .line 348
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_1

    .line 363
    int-to-float v10, v1

    mul-float v10, v10, p4

    float-to-int v7, v10

    .local v7, "thumbPos":I
    const/high16 v10, -0x80000000

    .line 365
    move/from16 v0, p5

    if-eq v0, v10, :cond_3

    .line 370
    move/from16 v9, p5

    .line 371
    .local v9, "topBound":I
    add-int v2, p5, v6

    .line 375
    .local v2, "bottomBound":I
    :goto_1
    add-int v10, v7, v8

    invoke-virtual {p3, v7, v9, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    .end local v2    # "bottomBound":I
    .end local v9    # "topBound":I
    :goto_2
    return-void

    .line 339
    .end local v1    # "available":I
    .end local v7    # "thumbPos":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v1, v10, v6

    .restart local v1    # "available":I
    goto :goto_0

    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    .line 349
    sub-float v10, v10, p4

    int-to-float v11, v1

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .restart local v7    # "thumbPos":I
    const/high16 v10, -0x80000000

    .line 351
    move/from16 v0, p5

    if-eq v0, v10, :cond_2

    .line 356
    move/from16 v3, p5

    .line 357
    .local v3, "leftBound":I
    add-int v5, p5, v8

    .line 361
    .local v5, "rightBound":I
    :goto_3
    add-int v10, v7, v6

    invoke-virtual {p3, v3, v7, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 352
    .end local v3    # "leftBound":I
    .end local v5    # "rightBound":I
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 353
    .local v4, "oldBounds":Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 354
    .restart local v3    # "leftBound":I
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .restart local v5    # "rightBound":I
    goto :goto_3

    .line 366
    .end local v3    # "leftBound":I
    .end local v4    # "oldBounds":Landroid/graphics/Rect;
    .end local v5    # "rightBound":I
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 367
    .restart local v4    # "oldBounds":Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 368
    .restart local v9    # "topBound":I
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .restart local v2    # "bottomBound":I
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 624
    .local v3, "progress":F
    iget-boolean v8, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v8, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v5

    .line 642
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v9

    sub-int v0, v8, v9

    .line 643
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 645
    .local v6, "x":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v8

    if-lt v6, v8, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v8, v5, v8

    if-gt v6, v8, :cond_4

    .line 650
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v8

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 651
    .local v4, "scale":F
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 654
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 655
    .local v2, "max":I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 658
    .end local v5    # "width":I
    .end local v6    # "x":I
    :goto_1
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 659
    return-void

    .line 625
    .end local v0    # "available":I
    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .line 626
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 627
    .restart local v0    # "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 629
    .local v7, "y":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    if-gt v7, v8, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v8

    sub-int v8, v7, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v8

    .line 635
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 638
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 639
    .restart local v2    # "max":I
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    goto :goto_1

    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 630
    .restart local v4    # "scale":F
    goto :goto_2

    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    .line 632
    .restart local v4    # "scale":F
    goto :goto_2

    .end local v1    # "height":I
    .end local v4    # "scale":F
    .end local v7    # "y":I
    .restart local v5    # "width":I
    .restart local v6    # "x":I
    :cond_3
    const/4 v4, 0x0

    .line 646
    .restart local v4    # "scale":F
    goto :goto_0

    .end local v4    # "scale":F
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 648
    .restart local v4    # "scale":F
    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 265
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 266
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v0, :cond_1

    .line 298
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 301
    .local v9, "thumbHeight":I
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 303
    .local v11, "trackHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v8

    .line 304
    .local v8, "max":I
    if-gtz v8, :cond_8

    .line 306
    .local v4, "scale":F
    :goto_1
    if-gt v9, v11, :cond_9

    .line 318
    if-nez v6, :cond_b

    .line 323
    :goto_2
    sub-int v0, v11, v9

    div-int/lit8 v5, v0, 0x2

    .line 324
    .local v5, "gap":I
    if-nez v3, :cond_c

    .line 329
    .end local v5    # "gap":I
    .end local v9    # "thumbHeight":I
    .end local v11    # "trackHeight":I
    :cond_0
    :goto_3
    return-void

    .line 267
    .end local v4    # "scale":F
    .end local v8    # "max":I
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 270
    .local v10, "thumbWidth":I
    :goto_4
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 272
    .local v12, "trackWidth":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v8

    .line 273
    .restart local v8    # "max":I
    if-gtz v8, :cond_3

    .line 275
    .restart local v4    # "scale":F
    :goto_5
    if-gt v10, v12, :cond_4

    .line 287
    if-nez v6, :cond_6

    .line 292
    :goto_6
    sub-int v0, v12, v10

    div-int/lit8 v5, v0, 0x2

    .line 293
    .restart local v5    # "gap":I
    if-eqz v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 294
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_3

    .end local v4    # "scale":F
    .end local v5    # "gap":I
    .end local v8    # "max":I
    .end local v10    # "thumbWidth":I
    .end local v12    # "trackWidth":I
    :cond_2
    move v10, v5

    .line 267
    goto :goto_4

    .line 273
    .restart local v8    # "max":I
    .restart local v10    # "thumbWidth":I
    .restart local v12    # "trackWidth":I
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    goto :goto_5

    .line 276
    .restart local v4    # "scale":F
    :cond_4
    if-nez v3, :cond_5

    .line 279
    :goto_7
    sub-int v0, v10, v12

    div-int/lit8 v7, v0, 0x2

    .line 280
    .local v7, "gapForCenteringTrack":I
    if-eqz v6, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v6, v7, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .end local v7    # "gapForCenteringTrack":I
    :cond_5
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 277
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_7

    .line 289
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6

    .end local v4    # "scale":F
    .end local v8    # "max":I
    .end local v10    # "thumbWidth":I
    .end local v12    # "trackWidth":I
    :cond_7
    move v9, v5

    .line 298
    goto/16 :goto_0

    .line 304
    .restart local v8    # "max":I
    .restart local v9    # "thumbHeight":I
    .restart local v11    # "trackHeight":I
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v4, v0, v1

    goto/16 :goto_1

    .line 307
    .restart local v4    # "scale":F
    :cond_9
    if-nez v3, :cond_a

    .line 310
    :goto_8
    sub-int v0, v9, v11

    div-int/lit8 v7, v0, 0x2

    .line 311
    .restart local v7    # "gapForCenteringTrack":I
    if-eqz v6, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    .end local v7    # "gapForCenteringTrack":I
    :cond_a
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_8

    .line 320
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .restart local v5    # "gap":I
    :cond_c
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 325
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 229
    invoke-super {p0}, Lcom/meizu/common/widget/ProgressBar;->drawableStateChanged()V

    .line 231
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 240
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0xff

    goto :goto_2

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 238
    .local v1, "state":[I
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 425
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-nez v0, :cond_1

    .line 431
    :cond_0
    return v2

    .line 425
    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 426
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/meizu/common/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 381
    :try_start_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 382
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 396
    return-void

    .line 383
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 386
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 387
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 812
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/AbsSeekBar;

    .line 813
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 814
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 694
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .local v0, "progress":I
    const/16 v1, 0x15

    .line 696
    if-eq p1, v1, :cond_4

    :cond_2
    const/16 v1, 0x14

    if-eq p1, v1, :cond_6

    :goto_0
    const/16 v1, 0x16

    .line 703
    if-eq p1, v1, :cond_7

    :cond_3
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 705
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 706
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 707
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onKeyChange()V

    .line 708
    return v2

    .line 696
    :cond_4
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v1, :cond_2

    .line 698
    :cond_5
    if-lez v0, :cond_0

    .line 699
    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    .line 700
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onKeyChange()V

    .line 701
    return v2

    .line 696
    :cond_6
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v1, :cond_5

    goto :goto_0

    .line 703
    :cond_7
    iget-boolean v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v1, :cond_3

    goto :goto_1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 402
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, "thumbHeight":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "dw":I
    const/4 v1, 0x0

    .line 405
    .local v1, "dh":I
    if-nez v0, :cond_1

    .line 410
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 411
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    const/4 v4, 0x0

    .line 413
    invoke-static {v2, p1, v4}, Lcom/meizu/common/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/meizu/common/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/AbsSeekBar;->setMeasuredDimension(II)V

    .line 418
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMeasuredWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-gt v4, v5, :cond_2

    :goto_1
    monitor-exit p0

    .line 421
    return-void

    .line 406
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 407
    iget v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Lcom/meizu/common/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 408
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 419
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 245
    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 246
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v2

    const/high16 v5, -0x80000000

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/AbsSeekBar;->setThumbPos(IILandroid/graphics/drawable/Drawable;FI)V

    .line 253
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 261
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    .line 676
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    .line 684
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 436
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-nez v10, :cond_1

    .line 437
    :cond_0
    const/4 v10, 0x0

    return v10

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 441
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 442
    .local v9, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 619
    :cond_2
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 444
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v10

    if-nez v10, :cond_3

    .line 456
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    .line 457
    iget-object v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_4

    .line 460
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    const/4 v10, 0x0

    .line 462
    iput v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 463
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 476
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 478
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 445
    :cond_3
    iput v8, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownX:F

    .line 446
    iput v9, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownY:F

    .line 447
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 449
    iput v8, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 450
    iput v9, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 451
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 452
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    .line 453
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 458
    :cond_4
    iget-object v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 464
    :cond_5
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_6

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 469
    iput v9, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    .line 472
    :goto_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    .line 473
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getProgress()I

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    goto :goto_2

    .line 465
    :cond_6
    iput v8, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    goto :goto_3

    .line 483
    :pswitch_1
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-nez v10, :cond_7

    .line 532
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_e

    .line 535
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 537
    .local v3, "length":F
    :goto_4
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_2

    .line 538
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    .line 539
    iget-object v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_f

    .line 542
    :goto_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 543
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 544
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .line 484
    .end local v3    # "length":F
    :cond_7
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    .line 528
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 488
    :cond_8
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_a

    .line 492
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 493
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 497
    .local v2, "deltaY":F
    :goto_6
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchSlopSquare:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    .line 498
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v10, :cond_b

    .line 504
    :cond_9
    :goto_7
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-eqz v10, :cond_2

    .line 508
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_c

    .line 511
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v11

    sub-int v0, v10, v11

    .line 513
    .local v0, "available":I
    :goto_8
    if-eqz v0, :cond_2

    .line 517
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_d

    .line 520
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v10, v8, v10

    int-to-float v11, v0

    div-float v7, v10, v11

    .line 523
    .local v7, "scale":F
    :goto_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 525
    .local v4, "max":I
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v11, v4

    mul-float/2addr v11, v7

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v11

    add-int v6, v10, v11

    .line 526
    .local v6, "progress":I
    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 489
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v4    # "max":I
    .end local v6    # "progress":I
    .end local v7    # "scale":F
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 490
    .restart local v1    # "deltaX":F
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .restart local v2    # "deltaY":F
    goto :goto_6

    .line 499
    :cond_b
    iput v8, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    .line 500
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    goto :goto_7

    .line 509
    :cond_c
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v11

    sub-int v0, v10, v11

    .restart local v0    # "available":I
    goto :goto_8

    .line 518
    :cond_d
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float/2addr v10, v9

    int-to-float v11, v0

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    goto :goto_9

    .line 533
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v7    # "scale":F
    :cond_e
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .restart local v3    # "length":F
    goto/16 :goto_4

    .line 540
    :cond_f
    iget-object v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_5

    .line 550
    .end local v3    # "length":F
    :pswitch_2
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-nez v10, :cond_10

    .line 600
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 601
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 602
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 607
    :goto_a
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 608
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    goto/16 :goto_0

    .line 552
    :cond_10
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_14

    .line 555
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingRight()I

    move-result v11

    sub-int v0, v10, v11

    .line 557
    .restart local v0    # "available":I
    :goto_b
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_15

    .line 574
    :cond_11
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_19

    .line 592
    :cond_12
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 595
    :cond_13
    :goto_c
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 596
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_a

    .line 553
    .end local v0    # "available":I
    :cond_14
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v11

    sub-int v0, v10, v11

    .restart local v0    # "available":I
    goto :goto_b

    .line 557
    :cond_15
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    if-nez v10, :cond_11

    .line 560
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_17

    .line 563
    move v5, v8

    .line 565
    .local v5, "point":F
    :goto_d
    int-to-float v10, v0

    sub-float/2addr v10, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v11

    iget v12, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_16

    int-to-float v10, v0

    sub-float/2addr v10, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/AbsSeekBar;->getPosByProgress(I)I

    move-result v11

    iget v12, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-lez v10, :cond_2

    .line 569
    :cond_16
    float-to-int v10, v5

    invoke-direct {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressByPos(I)I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v12, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_18

    .line 571
    float-to-int v10, v5

    invoke-direct {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->getProgressByPos(I)I

    move-result v10

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v12, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_13

    .line 572
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_c

    .line 561
    .end local v5    # "point":F
    :cond_17
    move v5, v9

    .restart local v5    # "point":F
    goto :goto_d

    .line 570
    :cond_18
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    iget v11, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_c

    .line 574
    .end local v5    # "point":F
    :cond_19
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mInDragoning:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 577
    if-eqz v0, :cond_2

    .line 580
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownX:F

    sub-float v1, v8, v10

    .line 581
    .restart local v1    # "deltaX":F
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mDragTouchDownY:F

    sub-float v2, v10, v9

    .line 583
    .restart local v2    # "deltaY":F
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v10, :cond_1a

    .line 586
    int-to-float v10, v0

    div-float v7, v1, v10

    .line 588
    .restart local v7    # "scale":F
    :goto_e
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 590
    .restart local v4    # "max":I
    iget v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchDownProgress:I

    int-to-float v11, v4

    mul-float/2addr v11, v7

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/AbsSeekBar;->getIntFromFloat(F)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/meizu/common/widget/AbsSeekBar;->setProgress(IZ)V

    goto/16 :goto_c

    .line 584
    .end local v4    # "max":I
    .end local v7    # "scale":F
    :cond_1a
    int-to-float v10, v0

    div-float v7, v2, v10

    .restart local v7    # "scale":F
    goto :goto_e

    .line 612
    .end local v0    # "available":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v7    # "scale":F
    :pswitch_3
    iget-boolean v10, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsDragging:Z

    if-nez v10, :cond_1b

    .line 616
    :goto_f
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 613
    :cond_1b
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 614
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_f

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 185
    if-ltz p1, :cond_0

    .end local p1    # "increment":I
    :goto_0
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 186
    return-void

    .line 185
    .restart local p1    # "increment":I
    :cond_0
    neg-int p1, p1

    goto :goto_0
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    .line 207
    :try_start_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->setMax(I)V

    .line 209
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 214
    return-void

    .line 209
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "needUpdate":Z
    :goto_0
    if-nez p1, :cond_3

    .line 136
    :goto_1
    iput-object p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 138
    if-nez v0, :cond_8

    .line 147
    :cond_1
    :goto_2
    return-void

    .line 108
    .end local v0    # "needUpdate":Z
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 110
    const/4 v0, 0x1

    .restart local v0    # "needUpdate":Z
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-boolean v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mIsVertical:Z

    if-nez v2, :cond_4

    .line 123
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    .line 127
    :goto_3
    if-nez v0, :cond_5

    .line 133
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbWidth:I

    .line 134
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mHalfThumbHeight:I

    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->requestLayout()V

    goto :goto_4

    .line 127
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 139
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 144
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumbOffset:I

    .line 175
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSeekBar;->invalidate()V

    .line 176
    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 742
    iput p1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    .line 743
    iget v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 745
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 744
    iput v0, p0, Lcom/meizu/common/widget/AbsSeekBar;->mTouchScrollMode:I

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/meizu/common/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
