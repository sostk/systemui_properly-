.class public Lcom/meizu/common/widget/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MARGIN_THRESHOLD:I = 0x32

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"

.field private static mGestureAreaWidth:I


# instance fields
.field private mActivePointerId:I

.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMarginThreshold:I

.field private mMaximumVelocity:I

.field private mMenuWidth:I

.field private mMinimumVelocity:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

.field private mViewBehindLocation:[I

.field private mVisibleAlways:Z

.field private mWidthChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 923
    sput v0, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchMode:I

    .line 46
    iput-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewBehindLocation:[I

    .line 487
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    .line 848
    iput-boolean v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorEnabled:Z

    const/high16 v1, 0x42480000    # 50.0f

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMarginThreshold:I

    .line 82
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMarginThreshold:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->setGestureAreaWidth(I)V

    .line 84
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 86
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMinimumVelocity:I

    .line 88
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMaximumVelocity:I

    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mz_slidingmenu_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomViewBehind;->setBackgroundColor(I)V

    .line 91
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 907
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 908
    .local v0, "y":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 909
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 386
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 387
    .local v1, "pointerId":I
    iget v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    if-eq v1, v3, :cond_0

    .line 394
    :goto_0
    return-void

    .line 389
    :cond_0
    if-eqz v2, :cond_1

    .line 390
    .local v0, "newPointerIndex":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 392
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto :goto_0

    .end local v0    # "newPointerIndex":I
    :cond_1
    const/4 v0, 0x1

    .line 389
    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    iput-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    if-nez v0, :cond_0

    .line 438
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 433
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 434
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 821
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadeEnabled:Z

    if-eqz v0, :cond_0

    .line 823
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 824
    .local v6, "alpha":I
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    .local v7, "left":I
    const/4 v8, 0x0

    .line 827
    .local v8, "right":I
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v0, :cond_1

    .line 832
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 837
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 845
    :goto_0
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 846
    return-void

    .line 822
    .end local v6    # "alpha":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    :cond_0
    return-void

    .line 829
    .restart local v6    # "alpha":I
    .restart local v7    # "left":I
    .restart local v8    # "right":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 830
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_0

    .line 834
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 840
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 841
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_0
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 856
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorEnabled:Z

    if-eqz v4, :cond_1

    .line 858
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    return-void

    .line 858
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 860
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "CustomViewBehindSelectedView"

    .line 861
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 863
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 865
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 866
    .local v1, "offset":I
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v4, :cond_3

    .line 873
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 880
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 869
    .local v2, "right":I
    sub-int v0, v2, v1

    .line 870
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 871
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 875
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 876
    .restart local v0    # "left":I
    add-int v2, v0, v1

    .line 877
    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 878
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 779
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 781
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    if-lez v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    .line 785
    .local v0, "right":I
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v1, :cond_2

    .line 793
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 797
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 807
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 809
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 810
    return-void

    .line 780
    .end local v0    # "right":I
    :cond_0
    return-void

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    goto :goto_0

    .line 787
    .restart local v0    # "right":I
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewBehindLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 788
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewBehindLocation:[I

    aget v1, v1, v4

    if-lez v1, :cond_3

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    add-int v0, v1, v2

    goto :goto_1

    .line 789
    :cond_3
    return-void

    .line 795
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 799
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    .line 805
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    add-int v0, v1, v2

    goto :goto_1

    .line 801
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 802
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 803
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 4
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 660
    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    if-nez v1, :cond_1

    .line 664
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_2

    .line 666
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    goto :goto_0

    .line 664
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 668
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 672
    return v3

    .line 670
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    return v1
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 678
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v0, :cond_1

    .line 682
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 684
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 680
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    .line 682
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 686
    return v2
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    const/4 v0, 0x0

    .line 620
    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    if-nez v1, :cond_0

    .line 623
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v1, :cond_1

    .line 633
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 643
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 653
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    return v1

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    goto :goto_0

    .line 625
    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 628
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 630
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 635
    :cond_2
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 638
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 640
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 645
    :cond_3
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_1

    .line 648
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 650
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 635
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 645
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 558
    if-gt p1, v3, :cond_2

    if-lt p1, v3, :cond_3

    .line 559
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_4

    .line 563
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v0, v3, :cond_5

    .line 569
    :cond_1
    return p1

    :cond_2
    move p1, v1

    .line 558
    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_0

    .line 559
    :cond_4
    if-le p1, v3, :cond_0

    .line 561
    return v0

    .line 563
    :cond_5
    if-ge p1, v3, :cond_1

    .line 565
    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 692
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 693
    .local v1, "right":I
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v4, :cond_0

    .line 697
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v4, v2, :cond_3

    .line 701
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 705
    return v3

    .line 695
    :cond_0
    if-ge p2, v0, :cond_2

    :goto_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_1

    goto :goto_0

    .line 699
    :cond_3
    if-le p2, v1, :cond_5

    :goto_1
    move v2, v3

    :cond_4
    return v2

    :cond_5
    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_4

    goto :goto_1

    .line 703
    :cond_6
    if-ge p2, v0, :cond_9

    :cond_7
    if-le p2, v1, :cond_a

    :goto_2
    move v2, v3

    :cond_8
    :goto_3
    return v2

    :cond_9
    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_7

    goto :goto_3

    :cond_a
    sget v4, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_8

    goto :goto_2
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 740
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    .line 744
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v2, v0, :cond_2

    .line 748
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 752
    return v1

    .line 742
    :cond_0
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 746
    :cond_2
    cmpg-float v2, p1, v3

    if-gez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 750
    :cond_4
    return v0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 757
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    .line 761
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v2, v0, :cond_2

    .line 765
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 769
    return v1

    .line 759
    :cond_0
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 763
    :cond_2
    cmpl-float v2, p1, v3

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 767
    :cond_4
    return v0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    .line 715
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 722
    const/4 v0, 0x0

    return v0

    .line 718
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 720
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    return v0

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 727
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_1

    .line 729
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_4

    :goto_0
    return v0

    .line 727
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v2, v3, :cond_3

    .line 731
    :goto_1
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_5

    .line 733
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_7

    :goto_2
    return v0

    .line 727
    :cond_3
    if-eqz p2, :cond_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 729
    goto :goto_0

    .line 731
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eq v2, v3, :cond_6

    .line 735
    :goto_3
    return v1

    .line 731
    :cond_6
    if-eq p2, v3, :cond_2

    goto :goto_3

    :cond_7
    move v0, v1

    .line 733
    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 930
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CustomViewBehind;

    .line 931
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 932
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 176
    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v8}, Lcom/meizu/common/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v8}, Lcom/meizu/common/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v8

    if-nez v8, :cond_3

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v8, 0x2

    .line 189
    if-eq v0, v8, :cond_4

    .line 194
    :cond_0
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 256
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    return v8

    .line 177
    .end local v0    # "action":I
    :cond_2
    return v9

    .line 183
    :cond_3
    iput-boolean v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 184
    return v11

    .line 189
    .restart local v0    # "action":I
    :cond_4
    iget-boolean v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    if-eqz v8, :cond_0

    .line 191
    return v11

    .line 196
    :pswitch_1
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 197
    .local v1, "activePointerId":I
    if-eq v1, v10, :cond_1

    .line 201
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 202
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 203
    .local v4, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 204
    .local v6, "y":I
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v5, v8

    .line 205
    .local v5, "xDiff":I
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    int-to-float v9, v6

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v7, v8

    .line 207
    .local v7, "yDiff":I
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    if-le v5, v8, :cond_1

    sub-int v8, v5, v7

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    int-to-float v9, v4

    iget v10, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    iput-boolean v11, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 210
    int-to-float v8, v4

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 211
    int-to-float v8, v6

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 213
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    .line 214
    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 223
    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":I
    .end local v5    # "xDiff":I
    .end local v6    # "y":I
    .end local v7    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 224
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 225
    .restart local v6    # "y":I
    iput-boolean v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mInitialMotionX:F

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 227
    int-to-float v8, v6

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 228
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 230
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->initOrResetVelocityTracker()V

    .line 231
    iget-object v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 238
    .end local v4    # "x":I
    .end local v6    # "y":I
    :pswitch_3
    iput-boolean v9, p0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 239
    iput v10, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 240
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 243
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 244
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 245
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 246
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    goto/16 :goto_0

    .line 250
    .end local v2    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 251
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 252
    iget v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    goto/16 :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 444
    sub-int v4, p4, p2

    .line 445
    .local v4, "width":I
    sub-int v3, p5, p3

    .line 446
    .local v3, "height":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 447
    .local v1, "childWidth":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 448
    .local v0, "childHeight":I
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v5, v7, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 449
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-nez v5, :cond_0

    .line 453
    :goto_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mWidthChanged:Z

    if-nez v5, :cond_1

    .line 468
    :goto_1
    return-void

    .line 450
    :cond_0
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v5, v7, v7, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v5}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    .line 455
    .local v2, "currentPage":I
    packed-switch v2, :pswitch_data_0

    .line 465
    :goto_2
    :pswitch_0
    iput-boolean v7, p0, Lcom/meizu/common/widget/CustomViewBehind;->mWidthChanged:Z

    goto :goto_1

    .line 457
    :pswitch_1
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v5, v7, v7, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_2

    .line 460
    :pswitch_2
    iget-object v5, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_2

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 473
    invoke-static {v5, p1}, Lcom/meizu/common/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 474
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/meizu/common/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 475
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/CustomViewBehind;->setMeasuredDimension(II)V

    .line 476
    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMenuWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, v5, v4}, Lcom/meizu/common/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 477
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/meizu/common/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 478
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 479
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-nez v4, :cond_0

    .line 481
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v22

    if-nez v22, :cond_2

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 283
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v22, 0x1

    return v22

    .line 270
    .end local v4    # "action":I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    return v22

    .line 275
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 276
    const/16 v22, 0x0

    return v22

    .line 285
    .restart local v4    # "action":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getChildCount()I

    move-result v22

    if-eqz v22, :cond_3

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    const/16 v22, 0x0

    .line 291
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    goto :goto_0

    .line 286
    :cond_3
    const/16 v22, 0x0

    return v22

    .line 295
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 296
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 297
    .local v20, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 298
    .local v21, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v6, v22, v23

    .line 299
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v7, v22, v23

    .line 301
    .local v7, "deltaY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 315
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 316
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 317
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionY:F

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v11, v0

    .line 319
    .local v11, "oldScrollX":F
    add-float v16, v11, v6

    .line 321
    .local v16, "scrollX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getLeftBound()I

    move-result v22

    move/from16 v0, v22

    int-to-float v9, v0

    .line 322
    .local v9, "leftBound":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getRightBound()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    .line 324
    .local v15, "rightBound":F
    cmpg-float v22, v16, v9

    if-gez v22, :cond_9

    .line 325
    move/from16 v16, v9

    .line 330
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v16, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getScrollY()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/meizu/common/widget/CustomViewAbove;->scrollTo(II)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/meizu/common/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_0

    .line 301
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    :cond_6
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v23

    sub-float v22, v22, v23

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/meizu/common/widget/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 305
    .local v13, "parent":Landroid/view/ViewParent;
    if-nez v13, :cond_7

    .line 308
    :goto_3
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    const/16 v22, 0x0

    .line 309
    cmpl-float v22, v6, v22

    if-lez v22, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v6, v6, v22

    goto/16 :goto_1

    .line 306
    :cond_7
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 312
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v6, v6, v22

    goto/16 :goto_1

    .line 326
    .end local v13    # "parent":Landroid/view/ViewParent;
    .restart local v9    # "leftBound":F
    .restart local v11    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_9
    cmpl-float v22, v16, v15

    if-lez v22, :cond_5

    .line 327
    move/from16 v16, v15

    goto/16 :goto_2

    .line 338
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v20    # "x":I
    .end local v21    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v8, v0

    .line 343
    .local v8, "initialVelocity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/common/widget/CustomViewAbove;->getScrollX()I

    move-result v17

    .line 344
    .local v17, "scrollX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/meizu/common/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v22

    sub-int v22, v17, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 346
    .local v12, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 347
    .local v14, "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v23

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    :goto_4
    const/16 v22, -0x1

    .line 355
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mActivePointerId:I

    .line 356
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/common/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 348
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 350
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v12, v8, v1}, Lcom/meizu/common/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v10

    .line 351
    .local v10, "nextPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_4

    .line 361
    .end local v8    # "initialVelocity":I
    .end local v10    # "nextPage":I
    .end local v12    # "pageOffset":F
    .end local v14    # "pointerIndex":I
    .end local v17    # "scrollX":I
    .end local v18    # "totalDelta":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 582
    .local v0, "vis":I
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    if-eqz v1, :cond_0

    .line 588
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    .line 594
    iget v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    .line 608
    :goto_0
    if-eq v0, v3, :cond_c

    .line 610
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewBehind;->setVisibility(I)V

    .line 611
    if-eqz v0, :cond_d

    .line 614
    :goto_2
    return-void

    .line 584
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 586
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 584
    :cond_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 585
    goto :goto_3

    .line 590
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le p2, v1, :cond_5

    .line 592
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 590
    :cond_5
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_4

    const/4 v0, 0x4

    .line 591
    goto :goto_4

    .line 596
    :cond_6
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge p2, v1, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le p2, v1, :cond_9

    :cond_7
    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 598
    if-eqz p2, :cond_a

    move v0, v2

    .line 599
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le p2, v1, :cond_b

    .line 605
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v4, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 596
    goto :goto_5

    .line 597
    :cond_9
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_6

    :cond_a
    move v0, v3

    .line 598
    goto :goto_7

    .line 601
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/meizu/common/widget/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "CustomViewBehind"

    const-string/jumbo v2, "behind INVISIBLE"

    .line 609
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 612
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    goto/16 :goto_2
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    goto :goto_0
.end method

.method public setCanvasTransformer(Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .param p1, "t"    # Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTransformer:Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;

    .line 101
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mChildrenEnabled:Z

    .line 148
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 121
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewBehind;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCustomViewAbove(Lcom/meizu/common/widget/CustomViewAbove;)V
    .locals 0
    .param p1, "customViewAbove"    # Lcom/meizu/common/widget/CustomViewAbove;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    .line 96
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .param p1, "degree"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 551
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadeDegree:F

    .line 554
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mFadeEnabled:Z

    .line 547
    return-void
.end method

.method public setGestureAreaWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 925
    sput p1, Lcom/meizu/common/widget/CustomViewBehind;->mGestureAreaWidth:I

    .line 926
    return-void
.end method

.method public setMenuVisibleAlways(Z)V
    .locals 0
    .param p1, "visibleAlways"    # Z

    .prologue
    .line 919
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    .line 920
    return-void
.end method

.method public setMenuWidth(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMenuWidth:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mWidthChanged:Z

    .line 106
    iput p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMenuWidth:I

    .line 107
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->requestLayout()V

    .line 108
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 105
    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 501
    if-nez p1, :cond_1

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    if-nez v0, :cond_2

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-nez v0, :cond_3

    .line 508
    :goto_1
    iput p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mMode:I

    .line 509
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 501
    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setScrollScale(F)V
    .locals 0
    .param p1, "scrollScale"    # F

    .prologue
    .line 518
    iput p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mScrollScale:F

    .line 519
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 138
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomViewBehind;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 535
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    .line 536
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 897
    :goto_0
    if-nez p1, :cond_2

    .line 903
    :cond_0
    :goto_1
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 895
    iput-object v2, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 900
    iget-object v0, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string/jumbo v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 901
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    goto :goto_1
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 915
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->refreshDrawableState()V

    .line 916
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mSelectorEnabled:Z

    .line 888
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 529
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    .line 530
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 540
    iput p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mShadowWidth:I

    .line 541
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomViewBehind;->invalidate()V

    .line 542
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 710
    iput p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mTouchMode:I

    .line 711
    return-void
.end method

.method public setVisibleAlways(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomViewBehind;->mVisibleAlways:Z

    .line 382
    return-void
.end method
