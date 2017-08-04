.class public Lcom/meizu/common/widget/EnhanceSeekBar;
.super Landroid/view/View;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;,
        Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final MIN_HEIGHT:I = 0x14

.field private static final MIN_WIDTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "EnhanceSeekBar"

.field private static final TEXT_HEIGHT:I = 0x32

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private hasMoved:Z

.field private mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

.field private mAccessibilityFocused:Z

.field private mDistance:I

.field private mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

.field private mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mInitialThumbX:F

.field private mInitialTouchX:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrag:Z

.field private mIsDragging:Z

.field private mIsInItemPositon:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMax:I

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mProgress:I

.field private mScaledTouchSlop:I

.field private mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTextColor:I

.field private mTextSize:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_EnhanceSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    .line 78
    iput v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 79
    iput v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 80
    iput v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 107
    new-instance v5, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v5, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 108
    new-instance v5, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v5, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 110
    new-instance v5, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    invoke-direct {v5, p0, v7}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    .line 111
    new-instance v5, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    invoke-direct {v5, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    .line 115
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 120
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 167
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    .line 168
    sget-object v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEItems:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 171
    .local v2, "items":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 173
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 174
    .local v3, "progress":I
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    .line 176
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEItemsCount:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 177
    .local v1, "itemCount":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItemsCount(I)V

    .line 179
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEThumb:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 180
    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 185
    :goto_0
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEnhanceDistance:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_distance:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    .line 186
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcStrokeWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_stroke_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    .line 187
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcItemsTextSize:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_item_text_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    .line 188
    sget v5, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEnhanceStrokeColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/meizu/common/R$color;->mc_enhance_stroke_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 189
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 193
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$color;->mc_enhance_seekbar_circle_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    .line 194
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$color;->mc_enhance_seekbar_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextColor:I

    .line 195
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 199
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    :goto_1
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$drawable;->mz_scrubber_control_selector:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0

    .line 197
    :cond_1
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/EnhanceSeekBar;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/EnhanceSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;

    .prologue
    .line 67
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    return v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private flingThumb(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v4

    .line 756
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 759
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 761
    .local v5, "x":I
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 762
    .local v2, "rect":Landroid/graphics/Rect;
    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float v7, v5

    add-float/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 764
    .local v3, "thumbX":I
    if-ltz v3, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-gt v3, v6, :cond_1

    .line 770
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 771
    .local v1, "process":I
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 773
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v3, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 774
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 775
    return-void

    .end local v1    # "process":I
    :cond_0
    const/4 v3, 0x0

    .line 765
    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    goto :goto_0
.end method

.method private declared-synchronized getMax()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 444
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "EnhanceSeekBar"

    .line 358
    return-object v0
.end method

.method private isPointInside(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method private onProgressRefresh(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 469
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 470
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1078
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1079
    return-void

    .line 1074
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    goto :goto_0
.end method

.method private declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    .line 454
    if-ltz p1, :cond_0

    .line 457
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_1

    :goto_1
    monitor-exit p0

    .line 466
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 455
    goto :goto_0

    .line 458
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 460
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-gt v1, p1, :cond_2

    .line 463
    :goto_2
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-gtz v1, :cond_3

    const/4 v0, 0x0

    .line 464
    .local v0, "scale":F
    :goto_3
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "scale":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 461
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    goto :goto_2

    .line 463
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_3
.end method

.method private setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 316
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 317
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 510
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 511
    .local v8, "thumbWidth":I
    sub-int/2addr v2, v8

    const/high16 v10, 0x3f800000    # 1.0f

    .line 516
    sub-float v10, v10, p3

    int-to-float v11, v2

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    sub-int v7, v2, v10

    .local v7, "thumbPos":I
    const/high16 v10, -0x80000000

    .line 520
    move/from16 v0, p4

    if-eq v0, v10, :cond_1

    .line 526
    move/from16 v9, p4

    .line 527
    .local v9, "topBound":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int v3, v9, v10

    .line 528
    .local v3, "bottomBound":I
    const/4 v6, 0x0

    .line 531
    .local v6, "shouldAnimation":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v10, :cond_2

    .line 542
    :cond_0
    :goto_1
    if-nez v6, :cond_4

    .line 579
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    add-int v11, v7, v8

    invoke-virtual {v10, v7, v9, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 582
    :goto_2
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 583
    return-void

    .line 521
    .end local v3    # "bottomBound":I
    .end local v6    # "shouldAnimation":Z
    .end local v9    # "topBound":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 522
    .local v4, "oldBounds":Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 523
    .restart local v9    # "topBound":I
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 524
    .restart local v3    # "bottomBound":I
    const/4 v6, 0x1

    .restart local v6    # "shouldAnimation":Z
    goto :goto_0

    .line 532
    .end local v4    # "oldBounds":Landroid/graphics/Rect;
    :cond_2
    if-eqz v6, :cond_3

    .line 537
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 538
    const/4 v6, 0x0

    goto :goto_1

    .line 533
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v10, 0x0

    .line 534
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 543
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 545
    .local v5, "oldThumbPos":I
    if-eq v5, v7, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v11, v5

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 555
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v11, v7

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 556
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    const-string/jumbo v11, "xY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 560
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0x100

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 561
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/meizu/common/widget/EnhanceSeekBar$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$1;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2

    .line 546
    :cond_5
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    const/high16 v10, -0x80000000

    .line 547
    move/from16 v0, p4

    if-eq v0, v10, :cond_7

    .line 552
    :cond_6
    :goto_3
    return-void

    .line 548
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v10, :cond_6

    .line 549
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v10, v0, v11}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    goto :goto_3
.end method

.method private trackTapUpTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    .line 809
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 810
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v4, v5

    .line 811
    .local v4, "x":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v4, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v1, v5

    .line 812
    .local v1, "process":F
    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v5, v5

    div-float v2, v1, v5

    .line 813
    .local v2, "scale":F
    float-to-int v5, v1

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 814
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/high16 v7, -0x80000000

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 815
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 783
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v5

    .line 784
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    .line 785
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v6, v7

    .line 789
    .local v6, "x":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float v8, v6

    add-float/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 790
    .local v4, "thumbX":I
    if-ltz v4, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v7

    sub-int v7, v5, v7

    iget v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    if-gt v4, v7, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    .line 798
    .local v3, "scale":F
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    .line 799
    .local v1, "max":I
    int-to-float v7, v1

    mul-float/2addr v7, v3

    const/4 v8, 0x0

    add-float v2, v8, v7

    .line 800
    .local v2, "progress":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 801
    return-void

    .end local v1    # "max":I
    .end local v2    # "progress":F
    .end local v3    # "scale":F
    :cond_0
    const/4 v3, 0x0

    .line 791
    .restart local v3    # "scale":F
    goto :goto_0

    .end local v3    # "scale":F
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 793
    .restart local v3    # "scale":F
    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 495
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 497
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    .line 499
    .local v0, "max":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    .line 500
    .local v1, "scale":F
    :goto_0
    if-nez v2, :cond_1

    .line 503
    :goto_1
    return-void

    .line 499
    .end local v1    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    goto :goto_0

    .line 501
    .restart local v1    # "scale":F
    :cond_1
    invoke-direct {p0, p1, v2, v1, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 483
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 485
    .local v0, "state":[I
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    return v0
.end method

.method public declared-synchronized getItemsCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 431
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1096
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1097
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1098
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1099
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    monitor-enter p0

    .line 587
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 588
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 641
    return-void

    .line 589
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 597
    .local v3, "available":F
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v11

    .line 598
    .local v11, "max":I
    if-gtz v11, :cond_2

    .line 599
    .local v12, "offset":F
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 602
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 606
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 607
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 608
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v10, 0x0

    .line 610
    .local v10, "i":I
    :goto_3
    if-le v10, v11, :cond_3

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 624
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 627
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 637
    :goto_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 638
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v3    # "available":F
    .end local v10    # "i":I
    .end local v11    # "max":I
    .end local v12    # "offset":F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 591
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 598
    .restart local v3    # "available":F
    .restart local v11    # "max":I
    :cond_2
    int-to-float v0, v11

    div-float v12, v3, v0

    goto/16 :goto_2

    .line 611
    .restart local v10    # "i":I
    .restart local v12    # "offset":F
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 614
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    :goto_5
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 610
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 612
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 617
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    aget-object v13, v0, v10

    check-cast v13, Ljava/lang/String;

    .line 618
    .local v13, "string":Ljava/lang/String;
    int-to-float v0, v10

    mul-float/2addr v0, v12

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 625
    .end local v13    # "string":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1050
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 1050
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1052
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 1063
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1064
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1054
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x2

    .line 1057
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x1

    .line 1060
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 903
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/meizu/common/widget/EnhanceSeekBar;

    .line 904
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 905
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 909
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Lcom/meizu/common/widget/EnhanceSeekBar;

    .line 910
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 912
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    .line 914
    .local v0, "progress":I
    if-gtz v0, :cond_2

    .line 917
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x1000

    .line 918
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2000

    .line 915
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, "thumbHeight":I
    :goto_0
    const/16 v2, 0x14

    .line 647
    .local v2, "minHeight":I
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    .line 650
    :goto_1
    move v0, v2

    .line 651
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v6

    add-int v1, v5, v6

    .line 652
    .local v1, "dw":I
    if-nez v3, :cond_2

    .line 655
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 656
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v4, 0x0

    .line 658
    invoke-static {v1, p1, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 661
    return-void

    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "minHeight":I
    .end local v3    # "thumbHeight":I
    :cond_0
    move v3, v4

    .line 645
    goto :goto_0

    .line 648
    .restart local v2    # "minHeight":I
    .restart local v3    # "thumbHeight":I
    :cond_1
    const/16 v2, 0x46

    goto :goto_1

    .line 653
    .restart local v0    # "dh":I
    .restart local v1    # "dw":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    :goto_3
    add-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2

    :cond_3
    const/16 v4, 0x32

    goto :goto_3

    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "minHeight":I
    .end local v3    # "thumbHeight":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 896
    check-cast v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    .line 897
    .local v0, "ss":Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 898
    iget v1, v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 899
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 886
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 887
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 889
    .local v0, "ss":Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    iput v2, v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    .line 891
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 491
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 492
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 832
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    goto :goto_0
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 842
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 674
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 742
    :goto_0
    return v6

    .line 666
    .end local v2    # "x":F
    :cond_0
    return v5

    .line 670
    :cond_1
    return v5

    .line 676
    .restart local v2    # "x":F
    :pswitch_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    .line 677
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 680
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 681
    .local v0, "available":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    .line 682
    .local v1, "process":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->isPointInside(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 692
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 693
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto :goto_0

    .line 678
    .end local v0    # "available":I
    .end local v1    # "process":F
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    goto :goto_1

    .line 685
    .restart local v0    # "available":I
    .restart local v1    # "process":F
    :cond_3
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 686
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 689
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStartTrackingTouch()V

    goto :goto_2

    .line 687
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 697
    .end local v0    # "available":I
    .end local v1    # "process":F
    :pswitch_1
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-nez v3, :cond_5

    .line 702
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 703
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 704
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    goto/16 :goto_0

    .line 698
    :cond_5
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 699
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->flingThumb(Landroid/view/MotionEvent;)V

    .line 700
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    goto :goto_4

    .line 709
    :cond_6
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto/16 :goto_0

    .line 714
    :pswitch_2
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    if-eqz v3, :cond_7

    .line 718
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDrag:Z

    .line 723
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-nez v3, :cond_8

    .line 729
    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    invoke-virtual {p0, v3, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto/16 :goto_0

    .line 715
    :cond_7
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTapUpTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 724
    :cond_8
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 725
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 726
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    goto/16 :goto_0

    .line 734
    :pswitch_3
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-nez v3, :cond_9

    .line 738
    :goto_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 735
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 736
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    goto :goto_5

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x40

    .line 925
    if-eq p1, v2, :cond_0

    const/16 v2, 0x80

    .line 927
    if-eq p1, v2, :cond_1

    .line 931
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 938
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    .line 939
    .local v1, "progress":I
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 940
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    .line 956
    return v4

    .line 926
    .end local v0    # "increment":I
    .end local v1    # "progress":I
    :cond_0
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    goto :goto_0

    .line 928
    :cond_1
    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    goto :goto_0

    .line 932
    :cond_2
    return v5

    .line 935
    :cond_3
    return v4

    .line 942
    .restart local v0    # "increment":I
    .restart local v1    # "progress":I
    :sswitch_0
    if-lez v1, :cond_4

    .line 945
    sub-int v2, v1, v0

    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 946
    return v5

    .line 943
    :cond_4
    return v4

    .line 949
    :sswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 952
    add-int v2, v1, v0

    invoke-virtual {p0, v2, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 953
    return v5

    .line 950
    :cond_5
    return v4

    .line 940
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    .line 423
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 218
    if-nez p1, :cond_1

    .line 220
    :cond_0
    iput-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 221
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 222
    return-void

    .line 218
    :cond_1
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 225
    array-length v0, p1

    .line 226
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 227
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 230
    return-void
.end method

.method public setItemsCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 241
    if-lt p1, v0, :cond_2

    .line 244
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 247
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    .line 210
    return-void
.end method

.method public setPaintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    .line 1045
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 325
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 326
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "fromFling"    # Z

    .prologue
    monitor-enter p0

    .line 332
    if-ltz p1, :cond_3

    .line 336
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-gt p1, v2, :cond_4

    .line 340
    :goto_1
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-eq p1, v2, :cond_5

    .line 341
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 342
    if-eqz p2, :cond_6

    .line 346
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-nez v2, :cond_8

    .line 350
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_9

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_2
    :goto_3
    monitor-exit p0

    .line 355
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 333
    goto :goto_0

    .line 337
    :cond_4
    :try_start_1
    iget p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    goto :goto_1

    .line 340
    :cond_5
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    if-eqz v2, :cond_0

    goto :goto_3

    .line 343
    :cond_6
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-gtz v2, :cond_7

    const/4 v1, 0x0

    .line 344
    .local v1, "scale":F
    :goto_4
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "scale":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 343
    :cond_7
    :try_start_2
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v3, v3

    div-float v1, v2, v3

    goto :goto_4

    .line 346
    :cond_8
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    goto :goto_2

    .line 351
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    if-eqz v2, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->scheduleAccessibilityEventSender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 375
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .param p1, "strokeWidth"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    .line 407
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    .line 391
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 257
    .local v1, "oldThumbWidth":I
    if-eqz p1, :cond_2

    .line 261
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 269
    .local v0, "needUpdate":Z
    :goto_1
    if-nez p1, :cond_4

    .line 294
    :goto_2
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 296
    if-nez v0, :cond_9

    .line 303
    :cond_1
    :goto_3
    return-void

    .line 258
    .end local v0    # "needUpdate":Z
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$drawable;->mz_scrubber_control_selector:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 263
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 264
    const/4 v0, 0x1

    .restart local v0    # "needUpdate":Z
    goto :goto_1

    .line 270
    :cond_4
    if-nez v0, :cond_5

    .line 280
    :cond_5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 282
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 284
    if-nez v0, :cond_6

    .line 290
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    goto :goto_2

    .line 284
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 287
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->requestLayout()V

    goto :goto_4

    .line 284
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ne v3, v4, :cond_7

    goto :goto_4

    .line 297
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 298
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 300
    .local v2, "state":[I
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3
.end method
