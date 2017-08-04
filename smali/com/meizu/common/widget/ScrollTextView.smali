.class public Lcom/meizu/common/widget/ScrollTextView;
.super Landroid/view/View;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;,
        Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;,
        Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;,
        Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;,
        Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;,
        Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;,
        Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    }
.end annotation


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final DEF_YSCROLL_END:I = 0x7fffffff

.field private static TAG:Ljava/lang/String;


# instance fields
.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mChangingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentItem:I

.field private mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

.field private mFadingHeight:F

.field private mFadingMatrix:Landroid/graphics/Matrix;

.field private mFadingPaint:Landroid/graphics/Paint;

.field private mFadingShader:Landroid/graphics/Shader;

.field private mFirstItem:I

.field private mFontMetricsCenterY:F

.field private mIsBitmapChanged:Z

.field private mIsDrawFading:Z

.field private mNormalFontMetricsCenterY:F

.field private mNormalItemHeight:F

.field private mNormalTextColor:I

.field private mNormalTextColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalTextSize:F

.field private mNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParentRequestDisallowInterceptTouchEvent:Z

.field private mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

.field private mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

.field private mScrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollingOffset:I

.field private mSelectFontMetricsCenterY:F

.field private mSelectItemHeight:F

.field private mSelectTextColor:I

.field private mSelectTextSize:F

.field private mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

.field private mVisibleItems:I

.field private mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "ScrollTextView"

    .line 65
    sput-object v0, Lcom/meizu/common/widget/ScrollTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 75
    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    const/4 v0, 0x5

    .line 78
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 81
    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 82
    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 101
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 115
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    .line 125
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mParentRequestDisallowInterceptTouchEvent:Z

    .line 207
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    .line 401
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$1;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 733
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 735
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    .line 225
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->initData(Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 75
    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    const/4 v0, 0x5

    .line 78
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 81
    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 82
    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 101
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 115
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    .line 125
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mParentRequestDisallowInterceptTouchEvent:Z

    .line 207
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    .line 401
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$1;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 733
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 735
    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    .line 216
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->initData(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getYScrollStart()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->playSelectedSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/ScrollTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/ScrollTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/ScrollTextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/ScrollTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/ScrollTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getYScrollEnd()I

    move-result v0

    return v0
.end method

.method private computeFontMetrics()V
    .locals 3

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1168
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1169
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectFontMetricsCenterY:F

    .line 1171
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1172
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1173
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    .line 1174
    return-void
.end method

.method private computeTextSizeAndColor(IF)V
    .locals 23
    .param p1, "index"    # I
    .param p2, "scale"    # F

    .prologue
    .line 873
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    move/from16 v20, v0

    div-int/lit8 v10, v20, 0x2

    .line 874
    .local v10, "selectItemId":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 875
    .local v9, "selectColor":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 876
    .local v6, "normalColor":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 877
    .local v11, "selectTextSize":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 879
    .local v7, "normalTextSize":F
    move/from16 v0, p1

    if-ge v0, v10, :cond_1

    .line 882
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/ScrollTextView;->mFontMetricsCenterY:F

    .line 885
    :goto_0
    move/from16 v0, p1

    if-gt v0, v10, :cond_2

    .line 888
    :goto_1
    move/from16 v0, p1

    if-gt v0, v10, :cond_3

    .line 891
    :goto_2
    if-ltz p1, :cond_4

    .line 894
    :goto_3
    if-eqz p1, :cond_5

    .line 900
    move/from16 v0, p1

    if-lt v0, v10, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 908
    move-object/from16 v0, p0

    iget v11, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 911
    :goto_4
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 912
    .local v12, "selectalpha":I
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v15

    .line 913
    .local v15, "slecetred":I
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 914
    .local v14, "slecetgreen":I
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 916
    .local v13, "slecetblue":I
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 917
    .local v16, "unselectalpha":I
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v19

    .line 918
    .local v19, "unslecetred":I
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v18

    .line 919
    .local v18, "unslecetgreen":I
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    .line 921
    .local v17, "unslecetblue":I
    sub-int v20, v12, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v2, v16, v20

    .line 922
    .local v2, "a":I
    sub-int v20, v15, v19

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v8, v19, v20

    .line 923
    .local v8, "r":I
    sub-int v20, v14, v18

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v5, v18, v20

    .line 924
    .local v5, "g":I
    sub-int v20, v13, v17

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v3, v17, v20

    .line 925
    .local v3, "b":I
    invoke-static {v2, v8, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 927
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sub-float v21, v11, v7

    mul-float v21, v21, p2

    add-float v21, v21, v7

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 929
    return-void

    .line 879
    .end local v2    # "a":I
    .end local v3    # "b":I
    .end local v4    # "color":I
    .end local v5    # "g":I
    .end local v8    # "r":I
    .end local v12    # "selectalpha":I
    .end local v13    # "slecetblue":I
    .end local v14    # "slecetgreen":I
    .end local v15    # "slecetred":I
    .end local v16    # "unselectalpha":I
    .end local v17    # "unslecetblue":I
    .end local v18    # "unslecetgreen":I
    .end local v19    # "unslecetred":I
    :cond_1
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mSelectFontMetricsCenterY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalFontMetricsCenterY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p2

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/ScrollTextView;->mFontMetricsCenterY:F

    goto/16 :goto_0

    .line 886
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    move/from16 v20, v0

    sub-int p1, v20, p1

    goto/16 :goto_1

    .line 889
    :cond_3
    move/from16 p1, v10

    goto/16 :goto_2

    :cond_4
    const/16 p1, 0x0

    .line 892
    goto/16 :goto_3

    .line 895
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/16 p2, 0x0

    .line 899
    goto/16 :goto_4

    .line 901
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto/16 :goto_4
.end method

.method private configTextView(IF)F
    .locals 8
    .param p1, "index"    # I
    .param p2, "scale"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 847
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v0, v4

    .line 848
    .local v0, "dy":F
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 849
    .local v1, "gap":I
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    div-int/lit8 v3, v4, 0x2

    .local v3, "selectItemId":I
    const/4 v2, 0x0

    .line 852
    .local v2, "k":F
    if-lt p1, v3, :cond_0

    .line 854
    if-eq p1, v3, :cond_1

    .line 857
    add-int/lit8 v4, v3, 0x1

    if-eq p1, v4, :cond_2

    .line 860
    add-int/lit8 v4, v3, 0x2

    if-eq p1, v4, :cond_3

    .line 864
    sub-float v2, v6, p2

    .line 867
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->computeTextSizeAndColor(IF)V

    .line 869
    return v0

    .line 853
    :cond_0
    move v2, p2

    goto :goto_0

    .line 855
    :cond_1
    int-to-float v4, v1

    mul-float/2addr v4, p2

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    .line 856
    move v2, p2

    goto :goto_0

    .line 858
    :cond_2
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 859
    sub-float v2, v6, p2

    goto :goto_0

    .line 861
    :cond_3
    int-to-float v4, v1

    sub-float v5, v6, p2

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    .line 862
    sub-float v2, v6, p2

    goto :goto_0
.end method

.method private doScroll(I)V
    .locals 9
    .param p1, "delta"    # I

    .prologue
    const/4 v8, 0x0

    .line 1032
    iget-object v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v6}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    .local v2, "itemCount":I
    const/4 v6, 0x1

    .line 1033
    if-eq v2, v6, :cond_5

    .line 1036
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 1039
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v3

    .line 1040
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    div-int v0, v6, v3

    .line 1042
    .local v0, "count":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    sub-int v5, v6, v0

    .line 1044
    .local v5, "pos":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    rem-int v1, v6, v3

    .line 1045
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-le v6, v7, :cond_6

    .line 1049
    :goto_1
    iget-boolean v6, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v6, :cond_7

    .line 1063
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-lt v5, v6, :cond_b

    .line 1067
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-gt v5, v6, :cond_c

    .line 1071
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-gt v5, v6, :cond_d

    .line 1074
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-lt v5, v6, :cond_e

    .line 1077
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v6

    if-eq v5, v6, :cond_f

    .line 1081
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v6

    if-eq v5, v6, :cond_10

    .line 1088
    :cond_3
    :goto_2
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 1089
    .local v4, "offset":I
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-ne v5, v6, :cond_11

    .line 1092
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1096
    :goto_3
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 1097
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_12

    .line 1100
    :cond_4
    :goto_4
    return-void

    .line 1034
    .end local v0    # "count":I
    .end local v1    # "fixPos":I
    .end local v3    # "itemHeight":I
    .end local v4    # "offset":I
    .end local v5    # "pos":I
    :cond_5
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_0

    .restart local v0    # "count":I
    .restart local v1    # "fixPos":I
    .restart local v3    # "itemHeight":I
    .restart local v5    # "pos":I
    :cond_6
    const/4 v1, 0x0

    .line 1046
    goto :goto_1

    .line 1049
    :cond_7
    if-lez v2, :cond_0

    .line 1050
    if-gtz v1, :cond_8

    .line 1053
    if-ltz v1, :cond_9

    .line 1058
    :goto_5
    if-ltz v5, :cond_a

    .line 1061
    rem-int/2addr v5, v2

    goto :goto_2

    .line 1051
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1054
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 1055
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1059
    :cond_a
    add-int/2addr v5, v2

    goto :goto_5

    .line 1064
    :cond_b
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v7

    sub-int v0, v6, v7

    .line 1065
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v5

    .line 1066
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_2

    .line 1068
    :cond_c
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v7

    sub-int v0, v6, v7

    .line 1069
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v5

    .line 1070
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_2

    .line 1071
    :cond_d
    if-lez v1, :cond_1

    .line 1072
    add-int/lit8 v5, v5, -0x1

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1074
    :cond_e
    if-gez v1, :cond_2

    .line 1075
    add-int/lit8 v5, v5, 0x1

    .line 1076
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1078
    :cond_f
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-gez v6, :cond_3

    .line 1079
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_2

    .line 1082
    :cond_10
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-lez v6, :cond_3

    .line 1083
    iput v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_2

    .line 1090
    .restart local v4    # "offset":I
    :cond_11
    invoke-virtual {p0, v5, v8}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto :goto_3

    .line 1097
    :cond_12
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1098
    iget v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_4
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 787
    .local v7, "yoff":F
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    sub-int/2addr v8, v9

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v9

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 790
    .local v6, "top":I
    neg-int v8, v6

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int/2addr v8, v9

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v1, v8

    .line 791
    .local v1, "dy":F
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    int-to-float v8, v8

    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 793
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-gtz v8, :cond_0

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int v4, v8, v9

    .line 795
    .local v4, "scrolloff":I
    :goto_0
    int-to-float v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 797
    .local v3, "k":F
    move v7, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 799
    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v8}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getCount()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 813
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    neg-int v8, v8

    int-to-float v8, v8

    neg-float v9, v7

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 814
    return-void

    .line 793
    .end local v2    # "i":I
    .end local v3    # "k":F
    .end local v4    # "scrolloff":I
    :cond_0
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    goto :goto_0

    .line 800
    .restart local v2    # "i":I
    .restart local v3    # "k":F
    .restart local v4    # "scrolloff":I
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->configTextView(IF)F

    move-result v1

    const/4 v8, 0x0

    .line 801
    invoke-virtual {p1, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 803
    add-float/2addr v7, v1

    .line 805
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->getItemText(I)Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "text":Ljava/lang/String;
    iget v8, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mFontMetricsCenterY:F

    sub-float v0, v8, v9

    .line 808
    .local v0, "baseline":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private drawVerticalFading(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 770
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 771
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 772
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    iget-object v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 775
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 776
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 777
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 778
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 779
    return-void
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 744
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 745
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 757
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 740
    :cond_1
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 741
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 751
    iput-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    .line 752
    return-object v3

    .line 742
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 747
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    float-to-int v0, v0

    return v0
.end method

.method private getItemText(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 822
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    add-int v1, p1, v2

    .line 824
    .local v1, "t":I
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "s":Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 828
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 833
    :goto_0
    if-eqz v0, :cond_4

    .line 837
    :goto_1
    return-object v0

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 827
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v2, :cond_1

    const-string/jumbo v0, ""

    :goto_2
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 829
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 830
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v2, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string/jumbo v0, ""

    .line 834
    goto :goto_1
.end method

.method private getItemsRange()Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;
    .locals 8

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1124
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .local v2, "first":I
    const/4 v0, 0x1

    .line 1127
    .local v0, "count":I
    :goto_0
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 1132
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-nez v3, :cond_2

    .line 1144
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v3, v2, v0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->update(II)Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    move-result-object v3

    return-object v3

    .end local v0    # "count":I
    .end local v2    # "first":I
    :cond_0
    const/4 v3, 0x0

    .line 1121
    return-object v3

    .line 1128
    .restart local v0    # "count":I
    .restart local v2    # "first":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1129
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1133
    :cond_2
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    if-gtz v3, :cond_3

    .line 1136
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 1139
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1140
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 1141
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_1

    .line 1134
    .end local v1    # "emptyItems":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private getScrollEndItem()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 992
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    .line 994
    .local v1, "itemCount":I
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v2, :cond_0

    .line 997
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-le v1, v2, :cond_1

    .line 1002
    add-int/lit8 v0, v1, -0x1

    .line 1005
    .local v0, "index":I
    :goto_0
    return v0

    .line 995
    .end local v0    # "index":I
    :cond_0
    return v3

    .line 998
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private getScrollStartItem()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1010
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    .line 1012
    .local v1, "itemCount":I
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v2, :cond_0

    .line 1015
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x0

    .line 1023
    .local v0, "index":I
    :goto_0
    return v0

    .line 1013
    .end local v0    # "index":I
    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    .line 1016
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private getYScrollEnd()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 967
    .local v0, "end":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v1, :cond_0

    .line 970
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollEndItem()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 974
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    .line 968
    goto :goto_0
.end method

.method private getYScrollStart()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 980
    .local v0, "start":I
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v1, :cond_0

    .line 983
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getScrollStartItem()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 987
    :goto_0
    return v0

    :cond_0
    const v0, -0x7fffffff

    .line 981
    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 233
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mContext:Landroid/content/Context;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    .line 237
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-direct {v0, p0, v2, v3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;-><init>(Lcom/meizu/common/widget/ScrollTextView;Landroid/content/Context;Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_select_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->mc_picker_selected_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->mc_picker_unselected_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 254
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 255
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 257
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 259
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingMatrix:Landroid/graphics/Matrix;

    .line 260
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    .line 264
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_fading_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    .line 270
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 273
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 277
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 279
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-direct {v0, v8}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;-><init>(Lcom/meizu/common/widget/ScrollTextView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    .line 280
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;

    invoke-direct {v0, p0, v8}, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;-><init>(Lcom/meizu/common/widget/ScrollTextView;Lcom/meizu/common/widget/ScrollTextView$1;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ScrollTextView;->addChangingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;)V

    .line 281
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1183
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    goto :goto_0
.end method

.method private playSelectedSound()V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    if-nez v0, :cond_0

    .line 1924
    :goto_0
    return-void

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->play()V

    goto :goto_0
.end method

.method private rebuildItems()Z
    .locals 3

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemsRange()Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    .line 1155
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 1160
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    .line 1152
    :cond_1
    const/4 v1, 0x0

    .line 1163
    return v1

    .line 1155
    :cond_2
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getLast()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 1156
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mRange:Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$VisibleItemsRange;->getFirst()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1157
    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFirstItem:I

    .line 1156
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private setViewAdapter(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;)V
    .locals 0
    .param p1, "viewAdapter"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    .line 492
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 493
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public addClickingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method public addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    return v0
.end method

.method public getIDataAdapter()Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method

.method public getViewAdapter()Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 522
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    return-void

    .line 522
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .line 523
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;->onChanged(Lcom/meizu/common/widget/ScrollTextView;II)V

    goto :goto_0
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 592
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 594
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    return-void

    .line 594
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .line 595
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;->onItemClicked(Lcom/meizu/common/widget/ScrollTextView;I)V

    goto :goto_0
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 560
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-nez v2, :cond_0

    .line 563
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
    return-void

    .line 561
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, p0, v4, v3}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    goto :goto_0

    .line 563
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .line 564
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    invoke-interface {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;->onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V

    goto :goto_1
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 551
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    return-void

    .line 551
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .line 552
    .local v1, "listener":Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;
    invoke-interface {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;->onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1906
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1907
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    if-nez v0, :cond_0

    .line 1910
    :goto_0
    return-void

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->onAttachedToWindow(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1914
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1915
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    if-nez v0, :cond_0

    .line 1918
    :goto_0
    return-void

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSoundPoolHelper:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->release()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 715
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsBitmapChanged:Z

    if-nez v1, :cond_2

    .line 720
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-nez v1, :cond_3

    .line 725
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    if-nez v1, :cond_4

    .line 729
    :goto_3
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 717
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 720
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 721
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->rebuildItems()Z

    .line 722
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->drawItems(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 726
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->drawVerticalFading(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1766
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ScrollTextView;

    .line 1767
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1768
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 698
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 699
    .local v0, "height":I
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setMeasuredDimension(II)V

    .line 700
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 933
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 934
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getViewAdapter()Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 961
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v2, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 939
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mParentRequestDisallowInterceptTouchEvent:Z

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 945
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/ScrollTextView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 947
    .local v0, "distance":I
    if-ltz v0, :cond_3

    .line 950
    int-to-float v2, v0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 952
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 954
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ScrollTextView;->notifyClickListenersAboutClick(I)V

    goto :goto_0

    .line 948
    .end local v1    # "items":I
    :cond_3
    int-to-float v2, v0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    div-float/2addr v3, v4

    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_1

    .line 937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 762
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, 0x4

    .line 764
    if-eq v0, p2, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 765
    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mTmpBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public refreshCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 289
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 290
    return-void
.end method

.method public refreshCountAndCurrent(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    const/4 v0, 0x0

    .line 309
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 310
    return-void
.end method

.method public refreshCurrent(I)V
    .locals 3
    .param p1, "current"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 300
    return-void
.end method

.method public refreshData(IIII)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "currentItem"    # I
    .param p3, "validStart"    # I
    .param p4, "validEnd"    # I

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->stopScrolling()V

    .line 323
    if-ltz p1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v1, p1, p3, p4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->update(III)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setViewAdapter(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;)V

    .line 328
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 330
    .local v0, "oldCurrentItem":I
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-ne p2, v1, :cond_2

    .line 338
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-ne v0, v1, :cond_5

    .line 345
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 346
    return-void

    .line 324
    .end local v0    # "oldCurrentItem":I
    :cond_1
    return-void

    .line 331
    .restart local v0    # "oldCurrentItem":I
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 333
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-le v1, p4, :cond_4

    .line 334
    :cond_3
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    goto :goto_0

    .line 333
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-ge v1, p1, :cond_3

    goto :goto_0

    .line 339
    :cond_5
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-interface {v1, p0, v0, v2}, Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;->onChanged(Landroid/view/View;II)V

    goto :goto_1
.end method

.method public removeChangingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mChangingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method public removeClickingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewClickedListener;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mClickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method public removeScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    add-int v0, v1, v2

    .line 1111
    .local v0, "distance":I
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v1, v0, p2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroll(II)V

    .line 1112
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 663
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 615
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    if-nez v4, :cond_1

    .line 616
    :cond_0
    return-void

    .line 615
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mViewAdapter:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    invoke-virtual {v4}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getItemsCount()I

    move-result v0

    .line 620
    .local v0, "itemCount":I
    if-gez p1, :cond_3

    .line 621
    :cond_2
    iget-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v4, :cond_5

    .line 627
    return-void

    .line 620
    :cond_3
    if-ge p1, v0, :cond_2

    .line 631
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    if-ne p1, v4, :cond_6

    .line 653
    :goto_1
    return-void

    .line 623
    :cond_4
    add-int/2addr p1, v0

    .line 622
    :cond_5
    if-ltz p1, :cond_4

    .line 625
    rem-int/2addr p1, v0

    goto :goto_0

    .line 632
    :cond_6
    if-nez p2, :cond_7

    .line 643
    iput v6, p0, Lcom/meizu/common/widget/ScrollTextView;->mScrollingOffset:I

    .line 645
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 646
    .local v2, "old":I
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    .line 648
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/ScrollTextView;->notifyChangingListeners(II)V

    .line 650
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    goto :goto_1

    .line 633
    .end local v2    # "old":I
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    sub-int v1, p1, v4

    .line 634
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v4, :cond_9

    .line 641
    :cond_8
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_1

    .line 635
    :cond_9
    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/meizu/common/widget/ScrollTextView;->mCurrentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 637
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 638
    if-ltz v1, :cond_a

    neg-int v1, v3

    :goto_3
    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_3
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 684
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 685
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 5
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 377
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIDataAdapter(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;)V

    .line 378
    iput p5, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 379
    iput-boolean p8, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 381
    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_picker_offset_y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetY:I

    .line 391
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    if-ge p4, v2, :cond_2

    .line 393
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    .line 397
    :goto_1
    invoke-virtual {p0, p4, p3, p6, p7}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    .line 398
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 387
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 388
    .local v0, "density":F
    mul-float v2, p2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetY:I

    goto :goto_0

    .line 391
    .end local v0    # "density":F
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    add-int/lit8 v2, p7, 0x1

    if-lt v2, p4, :cond_0

    if-gtz p6, :cond_0

    goto :goto_1
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;III)V
    .locals 9
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "currentItem"    # I
    .param p3, "count"    # I
    .param p4, "oneScreenCount"    # I

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 358
    add-int/lit8 v7, p3, -0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 360
    return-void
.end method

.method public setFadingHeight(F)V
    .locals 1
    .param p1, "fadingHeight"    # F

    .prologue
    .line 1828
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1829
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mFadingHeight:F

    .line 1830
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1832
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 709
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mOffsetX:I

    .line 710
    return-void
.end method

.method public setIDataAdapter(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mDataInterface:Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;

    .line 1346
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 449
    return-void
.end method

.method public setIsDrawFading(Z)V
    .locals 0
    .param p1, "isDrawFading"    # Z

    .prologue
    .line 1378
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mIsDrawFading:Z

    .line 1379
    return-void
.end method

.method public setItemHeight(FF)V
    .locals 2
    .param p1, "selectHeight"    # F
    .param p2, "normalHeight"    # F

    .prologue
    .line 1318
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1319
    return-void
.end method

.method public setNormalItemHeight(F)V
    .locals 3
    .param p1, "normalHeight"    # F

    .prologue
    .line 1336
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1337
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1, "normalTextColor"    # I

    .prologue
    .line 1246
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    if-eq v0, p1, :cond_0

    .line 1248
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1249
    return-void

    .line 1247
    :cond_0
    return-void
.end method

.method public setNormalTextColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1252
    .local p1, "normalTextColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 1254
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1255
    return-void

    .line 1253
    :cond_0
    return-void
.end method

.method public setNormalTextSize(F)V
    .locals 3
    .param p1, "normalSize"    # F

    .prologue
    .line 1299
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1300
    return-void
.end method

.method public setNormalTextSize(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, "normalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-nez p1, :cond_0

    .line 1775
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FLjava/util/List;FF)V

    goto :goto_0
.end method

.method public setParentRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "parentRequestDisallowInterceptTouchEvent"    # Z

    .prologue
    .line 1840
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mParentRequestDisallowInterceptTouchEvent:Z

    .line 1841
    return-void
.end method

.method public setSelectItemHeight(F)V
    .locals 3
    .param p1, "selectHeight"    # F

    .prologue
    .line 1327
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1328
    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 1240
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    if-eq v0, p1, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1243
    return-void

    .line 1241
    :cond_0
    return-void
.end method

.method public setSelectTextSize(F)V
    .locals 3
    .param p1, "selectedSize"    # F

    .prologue
    .line 1308
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1309
    return-void
.end method

.method public setTextColor(II)V
    .locals 5
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 1208
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 1209
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 1211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    .line 1212
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "normalItemCount":I
    const/4 v0, 0x0

    .line 1213
    .local v0, "i":I
    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1218
    return-void

    .line 1214
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTextColor(ILjava/util/List;)V
    .locals 6
    .param p1, "selectedColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p2, "normalTextColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextColor:I

    .line 1222
    if-nez p2, :cond_1

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1237
    return-void

    .line 1222
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    if-eq v3, p2, :cond_0

    const/4 v3, 0x0

    .line 1223
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColor:I

    .line 1224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    .line 1225
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "normalItemCount":I
    const/4 v0, 0x0

    .line 1226
    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 1227
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1228
    .local v2, "size":I
    if-lt v0, v2, :cond_2

    .line 1231
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1229
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextColors:Ljava/util/List;

    new-instance v5, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setTextPreference(FFFF)V
    .locals 5
    .param p1, "selectedSize"    # F
    .param p2, "normalSize"    # F
    .param p3, "selectHeight"    # F
    .param p4, "normalHeight"    # F

    .prologue
    .line 1268
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 1269
    iput p4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 1270
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 1271
    iput p2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 1273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    .line 1274
    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "normalItemCount":I
    const/4 v0, 0x0

    .line 1275
    .local v0, "i":I
    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_0

    .line 1279
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 1280
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1281
    return-void

    .line 1276
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    new-instance v3, Ljava/lang/Float;

    iget v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTextPreference(FLjava/util/List;FF)V
    .locals 6
    .param p1, "selectedSize"    # F
    .param p3, "selectHeight"    # F
    .param p4, "normalItemHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 1794
    .local p2, "normalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    cmpl-float v3, v3, p3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    cmpl-float v3, v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    if-eqz p2, :cond_2

    .line 1800
    :cond_0
    iput p3, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    .line 1801
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    .line 1802
    iput p4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    .line 1804
    if-nez p2, :cond_3

    .line 1818
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 1819
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1820
    return-void

    .line 1798
    :cond_2
    return-void

    .line 1804
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    if-eq v3, p2, :cond_1

    const/4 v3, 0x0

    .line 1805
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSize:F

    .line 1806
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    .line 1807
    iget v3, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "normalItemCount":I
    const/4 v0, 0x0

    .line 1808
    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_1

    .line 1809
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1810
    .local v2, "size":I
    if-lt v0, v2, :cond_4

    .line 1813
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    new-instance v5, Ljava/lang/Float;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1811
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalTextSizes:Ljava/util/List;

    new-instance v5, Ljava/lang/Float;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setTextSize(FF)V
    .locals 2
    .param p1, "selectedSize"    # F
    .param p2, "normalSize"    # F

    .prologue
    .line 1290
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FFFF)V

    .line 1291
    return-void
.end method

.method public setTextSize(FLjava/util/List;)V
    .locals 2
    .param p1, "selectTextSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1778
    .local p2, "normalTextSizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectTextSize:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 1781
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mSelectItemHeight:F

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView;->mNormalItemHeight:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTextPreference(FLjava/util/List;FF)V

    .line 1782
    return-void

    .line 1779
    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1368
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView;->computeFontMetrics()V

    .line 1369
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->invalidate()V

    .line 1370
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView;->mVisibleItems:I

    .line 471
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    if-nez v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView;->mWheelScroller:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    goto :goto_0
.end method
