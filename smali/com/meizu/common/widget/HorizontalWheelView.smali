.class public Lcom/meizu/common/widget/HorizontalWheelView;
.super Landroid/view/View;
.source "HorizontalWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final INSTANCE_STATE:Ljava/lang/String; = "instanceState"

.field private static final STATE_SELECTED:Ljava/lang/String; = "selected"

.field private static final TAG:Ljava/lang/String; = "HorizontalWheelView"


# instance fields
.field private mAllowScroll:Z

.field private mClick:Z

.field private mClickNumber:I

.field private mClickNumberOffset:F

.field private mClickOffset:F

.field private mDamping:F

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:I

.field private mDensity:F

.field private mDownX:I

.field private mDrawCount:I

.field private mIsAccessibilityEnable:Z

.field private mIsFling:Z

.field private mIsSetTotalMove:Z

.field private mLastX:I

.field private mLineColor:I

.field private mLineHeight:F

.field private mLineMarginBottom:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartY:F

.field private mLineStopY:F

.field private mLineWidth:F

.field private mLittleLineColor:I

.field private mLittleLineWidth:F

.field private mMaxTotalMove:F

.field private mMiddle:I

.field private mMinVelocity:I

.field private mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

.field private mOnce:Z

.field private mPaintRound:Z

.field private mScaleDistance:F

.field private mScaleTextSize:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSelected:I

.field private mSelectedColor:I

.field private mShowNumber:I

.field private mTextColor:I

.field private mTextMargin:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalMove:F

.field private mTouching:Z

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mTriangleSideLength:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/HorizontalWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/high16 v4, -0x1000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 152
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    const/high16 v3, -0x10000

    .line 153
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 154
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    const/high16 v3, 0x41900000    # 18.0f

    .line 156
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    const/16 v3, 0x64

    .line 157
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    .line 160
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    const/high16 v3, 0x40000000    # 2.0f

    .line 162
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 163
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    .line 165
    iput v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    const/high16 v3, 0x41a00000    # 20.0f

    .line 166
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 169
    iput v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    .line 170
    iput v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    .line 174
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    .line 175
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    const/4 v3, 0x5

    .line 178
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    .line 181
    iput v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    const/high16 v3, 0x40a00000    # 5.0f

    .line 183
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    .line 184
    iput v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    .line 185
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    const/4 v3, -0x1

    .line 203
    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 207
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    .line 211
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 212
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    .line 224
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->init()V

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/HorizontalWheelView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 227
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 231
    .local v1, "textBound":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 234
    .local v2, "textHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    add-float/2addr v3, v4

    int-to-float v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    .line 235
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    .line 237
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    .line 238
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-boolean v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mPaintRound:Z

    if-nez v3, :cond_0

    .line 243
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    .line 244
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    .line 245
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    .line 246
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v3, "accessibility"

    .line 249
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 250
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_1

    .line 253
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    if-nez v3, :cond_2

    .line 256
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 257
    return-void

    .line 240
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 251
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/HorizontalWheelView;->setFocusable(Z)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/HorizontalWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/HorizontalWheelView;

    .prologue
    .line 145
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/HorizontalWheelView;)Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/HorizontalWheelView;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    return-object v0
.end method

.method private computeDistance(F)F
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 639
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 640
    neg-float v0, p1

    return v0

    .line 642
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    sub-float/2addr v0, p1

    return v0
.end method

.method private computeTextSizeAndColor(IF)V
    .locals 17
    .param p1, "normalColor"    # I
    .param p2, "scale"    # F

    .prologue
    .line 656
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 657
    .local v8, "selectColor":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 658
    .local v6, "selectAlpha":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 659
    .local v10, "selectRed":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 660
    .local v9, "selectGreen":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 662
    .local v7, "selectBlue":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    .line 663
    .local v11, "unSelectAlpha":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 664
    .local v14, "unSelectRed":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v13

    .line 665
    .local v13, "unSelectGreen":I
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 668
    .local v12, "unSelectBlue":I
    int-to-float v15, v6

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p2

    mul-float v15, v15, v16

    int-to-float v0, v11

    move/from16 v16, v0

    mul-float v16, v16, p2

    add-float v15, v15, v16

    float-to-int v1, v15

    .line 669
    .local v1, "a":I
    int-to-float v15, v10

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p2

    mul-float v15, v15, v16

    int-to-float v0, v14

    move/from16 v16, v0

    mul-float v16, v16, p2

    add-float v15, v15, v16

    float-to-int v5, v15

    .line 670
    .local v5, "r":I
    int-to-float v15, v9

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p2

    mul-float v15, v15, v16

    int-to-float v0, v13

    move/from16 v16, v0

    mul-float v16, v16, p2

    add-float v15, v15, v16

    float-to-int v4, v15

    .line 671
    .local v4, "g":I
    int-to-float v15, v7

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, p2

    mul-float v15, v15, v16

    int-to-float v0, v12

    move/from16 v16, v0

    mul-float v16, v16, p2

    add-float v15, v15, v16

    float-to-int v2, v15

    .line 672
    .local v2, "b":I
    invoke-static {v1, v5, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 674
    .local v3, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    return-void
.end method

.method private countVelocityTracker()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 558
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 559
    .local v9, "xVelocity":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMinVelocity:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 560
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v9, v0

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 562
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    float-to-int v3, v9

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v2, v1

    move v4, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->fixPos()V

    goto :goto_0
.end method

.method private drawScaleLine(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 390
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    rem-float v9, v0, v2

    .line 391
    .local v9, "offset":F
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v0, v2

    float-to-int v8, v0

    .line 393
    .local v8, "middleItem":I
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    if-ne v8, v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v7, v0, v9

    .local v7, "middle":F
    const/4 v6, 0x0

    .line 403
    .local v6, "i":I
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDrawCount:I

    if-lt v6, v0, :cond_2

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 451
    return-void

    .line 394
    .end local v6    # "i":I
    .end local v7    # "middle":F
    :cond_1
    iput v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 395
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->notifySelectedChange()V

    .line 396
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    if-ne v0, v2, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    goto :goto_0

    .line 405
    .restart local v6    # "i":I
    .restart local v7    # "middle":F
    :cond_2
    int-to-float v0, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v2

    add-float v1, v7, v0

    .line 406
    .local v1, "xPosition":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 408
    add-int v0, v8, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    if-le v0, v2, :cond_5

    .line 426
    :cond_3
    :goto_2
    int-to-float v0, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v2

    sub-float v1, v7, v0

    .line 427
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 429
    sub-int v0, v8, v6

    if-gez v0, :cond_7

    .line 403
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 410
    :cond_5
    add-int v0, v8, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 419
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 420
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v2, v12

    add-float/2addr v2, v0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v3, v12

    sub-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 411
    :cond_6
    add-int v0, v8, v6

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 412
    .local v10, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v10, v0, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 413
    .local v11, "textPoint":Landroid/graphics/PointF;
    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v2, v11, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 416
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 431
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "textPoint":Landroid/graphics/PointF;
    :cond_7
    sub-int v0, v8, v6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 440
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 441
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 442
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v2, v12

    add-float/2addr v2, v0

    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    div-float/2addr v3, v12

    sub-float v4, v0, v3

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 433
    :cond_8
    sub-int v0, v8, v6

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 434
    .restart local v10    # "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v10, v0, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 435
    .restart local v11    # "textPoint":Landroid/graphics/PointF;
    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v2, v11, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setLinePaint(IFF)V

    .line 438
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStartY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget-object v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 380
    return-void
.end method

.method private fixPos()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 628
    iput-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 630
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 631
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    rem-float v7, v0, v1

    .line 632
    .local v7, "offset":F
    invoke-direct {p0, v7}, Lcom/meizu/common/widget/HorizontalWheelView;->computeDistance(F)F

    move-result v6

    .line 633
    .local v6, "dx":F
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v6, v0

    .line 634
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    float-to-int v1, v1

    float-to-int v3, v6

    const/16 v5, 0x3e8

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 635
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->postInvalidate()V

    .line 636
    return-void
.end method

.method private getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    .line 278
    sget-object v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .local v3, "length":I
    const/4 v1, 0x0

    .line 280
    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    return-void

    .line 281
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 282
    .local v2, "index":I
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcScaleDistance:I

    if-eq v2, v4, :cond_2

    .line 285
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextColor:I

    if-eq v2, v4, :cond_3

    .line 288
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextSize:I

    if-eq v2, v4, :cond_4

    .line 291
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcSelectedColor:I

    if-eq v2, v4, :cond_5

    .line 294
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineColor:I

    if-eq v2, v4, :cond_6

    .line 297
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineWidth:I

    if-eq v2, v4, :cond_7

    .line 300
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineHeight:I

    if-eq v2, v4, :cond_8

    .line 303
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLittleLineWidth:I

    if-eq v2, v4, :cond_9

    .line 306
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLittleLineColor:I

    if-eq v2, v4, :cond_a

    .line 309
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTriangleSideLength:I

    if-eq v2, v4, :cond_b

    .line 312
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcShowNumber:I

    if-eq v2, v4, :cond_c

    .line 315
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcTextMarginBottom:I

    if-eq v2, v4, :cond_d

    .line 318
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcLineMarginBottom:I

    if-eq v2, v4, :cond_e

    .line 321
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcDamping:I

    if-eq v2, v4, :cond_f

    .line 329
    sget v4, Lcom/meizu/common/R$styleable;->HorizontalWheelView_mcPaintRound:I

    if-eq v2, v4, :cond_11

    .line 280
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_2
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    goto :goto_1

    .line 289
    :cond_4
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 290
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    goto :goto_1

    :cond_5
    const/high16 v4, -0x10000

    .line 292
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    goto :goto_1

    .line 295
    :cond_6
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineColor:I

    goto :goto_1

    .line 298
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    goto :goto_1

    .line 301
    :cond_8
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    goto :goto_1

    .line 304
    :cond_9
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    goto :goto_1

    .line 307
    :cond_a
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineColor:I

    goto :goto_1

    .line 310
    :cond_b
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    goto :goto_1

    .line 313
    :cond_c
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    goto :goto_1

    .line 316
    :cond_d
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    goto :goto_1

    .line 319
    :cond_e
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    goto :goto_1

    .line 322
    :cond_f
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    .line 323
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_10

    .line 324
    iput v9, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    goto/16 :goto_1

    .line 325
    :cond_10
    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 326
    iput v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDamping:F

    goto/16 :goto_1

    .line 330
    :cond_11
    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mPaintRound:Z

    goto/16 :goto_1
.end method

.method private getMove(F)F
    .locals 2
    .param p1, "move"    # F

    .prologue
    .line 618
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 619
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    neg-float p1, v0

    .line 623
    :cond_0
    :goto_0
    return p1

    .line 620
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 621
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    sub-float p1, v0, v1

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    if-nez v0, :cond_1

    .line 457
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getTextPoint(Ljava/lang/String;Landroid/graphics/Paint;F)Landroid/graphics/PointF;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "cx"    # F

    .prologue
    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "textBound":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 483
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 484
    .local v1, "textPoint":Landroid/graphics/PointF;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 485
    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    .line 261
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    .line 262
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleTextSize:F

    .line 263
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 264
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMinVelocity:I

    .line 266
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineHeight:F

    .line 267
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLittleLineWidth:F

    .line 268
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineWidth:F

    .line 269
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextMargin:F

    .line 270
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    .line 271
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    .line 272
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    .line 273
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDensity:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumberOffset:F

    .line 275
    return-void
.end method

.method private initTriangle()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 361
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    const-wide v4, 0x3ff0c152382d7365L    # 1.0471975511965976

    .line 362
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 363
    .local v2, "triangleHeight":I
    iget v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineStopY:F

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLineMarginBottom:F

    add-float v1, v3, v4

    .line 364
    .local v1, "top":F
    int-to-float v3, v2

    add-float v0, v1, v3

    .line 365
    .local v0, "bottom":F
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTriangleSideLength:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    iget-object v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 369
    return-void
.end method

.method private notifySelectedChange()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/HorizontalWheelView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/HorizontalWheelView$1;-><init>(Lcom/meizu/common/widget/HorizontalWheelView;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private sendAccessibilityEvent()V
    .locals 2

    .prologue
    .line 865
    iget-boolean v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsAccessibilityEnable:Z

    if-nez v1, :cond_0

    .line 870
    :goto_0
    return-void

    .line 866
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "dateText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 868
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private setLinePaint(IFF)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "lineWidth"    # F
    .param p3, "xPosition"    # F

    .prologue
    .line 462
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 463
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 464
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->computeTextSizeAndColor(IF)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private setSelectNotDraw(I)V
    .locals 2
    .param p1, "select"    # I

    .prologue
    const/4 v1, 0x0

    .line 728
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    if-gt p1, v0, :cond_0

    .line 730
    if-ltz p1, :cond_1

    .line 733
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    .line 735
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 736
    return-void

    .line 729
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    goto :goto_0

    .line 731
    :cond_1
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 582
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 583
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-nez v2, :cond_1

    .line 602
    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    if-nez v2, :cond_7

    const/4 v2, -0x1

    .line 605
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 606
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    .line 607
    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    if-eqz v2, :cond_8

    .line 610
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    if-nez v2, :cond_9

    .line 615
    :goto_1
    return-void

    .line 584
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 585
    .local v1, "xPosition":I
    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    if-nez v2, :cond_2

    .line 597
    int-to-float v2, v1

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 599
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->postInvalidate()V

    goto :goto_1

    .line 586
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v2, v1

    int-to-float v0, v2

    .line 587
    .local v0, "move":F
    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 588
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_5

    move v2, v3

    :goto_3
    if-nez v2, :cond_4

    :cond_3
    cmpg-float v2, v0, v6

    if-gtz v2, :cond_6

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_6

    .line 589
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 590
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    .line 591
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 592
    return-void

    :cond_5
    move v2, v4

    .line 588
    goto :goto_3

    .line 594
    :cond_6
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v0

    .line 595
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_2

    .line 603
    .end local v0    # "move":F
    .end local v1    # "xPosition":I
    :cond_7
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->fixPos()V

    goto :goto_1

    .line 607
    :cond_8
    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    if-nez v2, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->sendAccessibilityEvent()V

    goto :goto_0

    .line 611
    :cond_9
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    goto :goto_1
.end method

.method public getScaleDistance()F
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    return v0
.end method

.method public getSelected()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    return v0
.end method

.method public getTotalMove()F
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    return v0
.end method

.method public isAllowScroll()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 649
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 650
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->drawScaleLine(Landroid/graphics/Canvas;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->drawTriangle(Landroid/graphics/Canvas;)V

    .line 376
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 874
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/HorizontalWheelView;

    .line 875
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 876
    return-void
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

    .line 349
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    .line 350
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 358
    return-void

    .line 350
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    if-eqz v0, :cond_0

    .line 351
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 352
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->initTriangle()V

    .line 353
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDrawCount:I

    .line 354
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnce:Z

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 785
    instance-of v1, p1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 790
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 793
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 786
    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "selected"

    .line 787
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelect(I)V

    const-string/jumbo v1, "instanceState"

    .line 788
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 772
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "instanceState"

    .line 773
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "selected"

    .line 777
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "selected"

    .line 775
    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 491
    iget-boolean v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    if-nez v7, :cond_1

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 491
    :cond_1
    iget-boolean v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    if-nez v7, :cond_0

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 495
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 497
    .local v4, "xPosition":I
    iget-object v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_3

    .line 500
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 501
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 502
    packed-switch v0, :pswitch_data_0

    .line 552
    :cond_2
    :goto_1
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 553
    return v6

    .line 498
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 504
    :pswitch_0
    iget-object v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 505
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 506
    iput v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    .line 507
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 508
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    goto :goto_1

    .line 511
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_7

    .line 515
    :goto_2
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v7, v4

    int-to-float v2, v7

    .line 517
    .local v2, "move":F
    cmpl-float v7, v2, v9

    if-ltz v7, :cond_5

    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    move v5, v6

    :cond_4
    if-nez v5, :cond_6

    :cond_5
    cmpg-float v5, v2, v9

    if-gtz v5, :cond_8

    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_8

    .line 518
    :cond_6
    return v6

    .line 512
    .end local v2    # "move":F
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 520
    .restart local v2    # "move":F
    :cond_8
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v2

    .line 521
    iget v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v5, v2

    iput v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 522
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    goto :goto_1

    .line 526
    .end local v2    # "move":F
    :pswitch_2
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTouching:Z

    .line 527
    iput-boolean v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 528
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_a

    .line 543
    :cond_9
    :goto_3
    iget-boolean v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    if-nez v7, :cond_2

    .line 544
    iput v5, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mLastX:I

    .line 545
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 546
    invoke-direct {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->countVelocityTracker()V

    .line 547
    return v6

    .line 529
    :cond_a
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDownX:I

    iget v9, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMiddle:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float v3, v7, v8

    .line 530
    .local v3, "temp":F
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    neg-float v7, v7

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_9

    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickOffset:F

    add-float/2addr v7, v8

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_9

    .line 531
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 532
    .local v1, "i":I
    int-to-float v7, v1

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumberOffset:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 533
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelected:I

    iget v8, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    mul-int/2addr v8, v1

    if-eq v7, v8, :cond_9

    .line 534
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 535
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mShowNumber:I

    mul-int/2addr v7, v1

    iput v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    .line 536
    iget v7, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClickNumber:I

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/meizu/common/widget/HorizontalWheelView;->smoothScroll(II)V

    .line 537
    iput-boolean v6, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScrolling:Z

    goto :goto_3

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollBy(F)V
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->getMove(F)F

    move-result v0

    .line 699
    .local v0, "move":F
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 700
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 701
    return-void
.end method

.method public setAllowScroll(Z)V
    .locals 0
    .param p1, "allowScroll"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mAllowScroll:Z

    .line 820
    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 2
    .param p2, "defaultSelected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 710
    iput-object p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mData:Ljava/util/List;

    .line 711
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    .line 712
    iget v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mDataSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    .line 713
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelectNotDraw(I)V

    .line 714
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 715
    return-void
.end method

.method public setOnValueChangeListener(Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangeListener"    # Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mOnValueChangeListener:Lcom/meizu/common/widget/HorizontalWheelView$OnValueChangeListener;

    .line 768
    return-void
.end method

.method public setScaleDistance(F)V
    .locals 0
    .param p1, "scaleDistance"    # F

    .prologue
    .line 827
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    .line 828
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 829
    return-void
.end method

.method public setSelect(I)V
    .locals 2
    .param p1, "select"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 723
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/HorizontalWheelView;->setSelectNotDraw(I)V

    .line 724
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 725
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 844
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mSelectedColor:I

    .line 845
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 846
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 853
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTextColor:I

    .line 854
    return-void
.end method

.method public setTotalMove(F)V
    .locals 5
    .param p1, "totalMove"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 743
    iget-object v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 744
    iput-boolean v4, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsSetTotalMove:Z

    .line 745
    const/4 v0, 0x1

    .line 746
    .local v0, "invalidate":Z
    iput-boolean v3, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mClick:Z

    .line 747
    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 748
    iput v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    .line 757
    :goto_0
    if-nez v0, :cond_3

    .line 760
    :goto_1
    return-void

    .line 749
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    iget v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 750
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mMaxTotalMove:F

    iput v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_0

    .line 751
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 752
    iput p1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    goto :goto_0

    .line 754
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 758
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    goto :goto_1
.end method

.method public smoothScroll(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/16 v0, 0x3e8

    .line 682
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/HorizontalWheelView;->smoothScroll(II)V

    .line 683
    return-void
.end method

.method public smoothScroll(II)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 686
    iput-boolean v2, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mIsFling:Z

    .line 687
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 688
    int-to-float v0, p1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScaleDistance:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    sub-float/2addr v0, v1

    float-to-int v3, v0

    .line 689
    .local v3, "move":I
    iget-object v0, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/meizu/common/widget/HorizontalWheelView;->mTotalMove:F

    float-to-int v1, v1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 690
    invoke-virtual {p0}, Lcom/meizu/common/widget/HorizontalWheelView;->invalidate()V

    .line 691
    return-void
.end method
