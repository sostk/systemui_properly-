.class public Lcom/meizu/common/widget/InstallProgressBarLayout;
.super Landroid/widget/LinearLayout;
.source "InstallProgressBarLayout.java"


# static fields
.field private static final FLOAT_ESPINON:F = 1.0E-6f


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private final DEFAULT_COLOR:I

.field private final PROPERTY_CANVAS_SCALE:Ljava/lang/String;

.field private mAutoTextChange:Z

.field private mCanvasScale:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCoverTextColor:I

.field private mDensity:F

.field private mDownTime:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mMinScale:F

.field private mProgress:F

.field private mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

.field private mProgressColor:I

.field private mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

.field private mPromotionStatusPriceText:Landroid/widget/TextView;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mTargetScale:F

.field private mText:Ljava/lang/String;

.field private mTextPadding:I

.field private mTextSize:I

.field private mTextUnit:Ljava/lang/String;

.field private mUpTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    const v0, -0x777778

    .line 55
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const v0, 0x3f733333    # 0.95f

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    const-string/jumbo v0, "canvasScale"

    .line 63
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-wide/16 v0, 0x80

    .line 65
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v0, 0x160

    .line 66
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    const v0, -0x777778

    .line 55
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const v0, 0x3f733333    # 0.95f

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    const-string/jumbo v0, "canvasScale"

    .line 63
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-wide/16 v0, 0x80

    .line 65
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v0, 0x160

    .line 66
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 49
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    const v0, -0x777778

    .line 55
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->DEFAULT_COLOR:I

    .line 56
    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const v0, 0x3f733333    # 0.95f

    .line 57
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    const-string/jumbo v0, "canvasScale"

    .line 63
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->PROPERTY_CANVAS_SCALE:Ljava/lang/String;

    const-wide/16 v0, 0x80

    .line 65
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 v0, 0x160

    .line 66
    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->ANIM_UP_DURATION:J

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method private static FloatEquals(FF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    .line 232
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

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 192
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    sub-float v1, v3, v1

    mul-float/2addr v1, v4

    sub-float v0, v3, v1

    .line 198
    .local v0, "scale":F
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v1, 0x0

    .line 199
    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDensity:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    return-void

    .line 193
    .end local v0    # "scale":F
    :cond_0
    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDownTime:J

    .line 415
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->setupLayoutDownAnimator()V

    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x80

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUpTime:J

    .line 425
    iget-wide v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mUpTime:J

    iget-wide v6, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDownTime:J

    sub-long v2, v4, v6

    .line 426
    .local v2, "timeout":J
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->setupLayoutUpAnimator()V

    .line 427
    cmp-long v4, v2, v8

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    .line 428
    sub-long v0, v8, v2

    .line 429
    .local v0, "timeDelay":J
    iget-object v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 433
    .end local v0    # "timeDelay":J
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 434
    return-void

    .line 427
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x3ea8f5c3    # 0.33f

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 90
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    const-string/jumbo v1, "layout_inflater"

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/meizu/common/R$layout;->mc_install_progress_bar_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    .line 96
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mDensity:F

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarLayout;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void

    .line 88
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 101
    sget-object v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout:[I

    invoke-virtual {p0, p1, p2, v3}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "attr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 106
    sget v3, Lcom/meizu/common/R$id;->round_corner_progress:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/InstallProgressBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/widget/InstallProgressBar;

    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    .line 107
    sget v3, Lcom/meizu/common/R$id;->round_corner_progress_text:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/InstallProgressBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/widget/InstallProgressBarText;

    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    .line 108
    sget v3, Lcom/meizu/common/R$id;->round_corner_promotion_status_price_text:I

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/InstallProgressBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    .line 109
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcAutoTextChange:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 110
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->online_theme_download_install_font_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 111
    .local v2, "textSize":I
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressSize:I

    int-to-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextSize:I

    .line 112
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextSize:I

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextSize(I)V

    .line 113
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextCoverProgressColor:I

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    .line 114
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextOriginColor(I)V

    .line 115
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCoverTextColor:I

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextChangeColor(I)V

    .line 116
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressText:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget-object v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 119
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressPadding:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextPadding:I

    .line 120
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextPadding:I

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/meizu/common/widget/InstallProgressBarText;->setPadding(IIII)V

    .line 121
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcTextProgressUnit:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    :goto_1
    iput-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->progress_color_black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 124
    .local v1, "progressColor":I
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcProgressColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    .line 125
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 126
    sget v3, Lcom/meizu/common/R$styleable;->InstallProgressBarLayout_mcMinProgress:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgress:F

    .line 127
    iget-object v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgress:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/InstallProgressBar;->setMinProgress(I)V

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void

    .line 103
    .end local v1    # "progressColor":I
    .end local v2    # "textSize":I
    :cond_0
    return-void

    .restart local v2    # "textSize":I
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method private setupLayoutDownAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 381
    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mMinScale:F

    iput v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    const-string/jumbo v1, "canvasScale"

    const/4 v2, 0x2

    .line 382
    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 384
    .local v0, "pvScale":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 391
    :goto_0
    return-void

    .line 385
    :cond_0
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 386
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private setupLayoutUpAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "canvasScale"

    const/4 v2, 0x2

    .line 397
    new-array v2, v2, [F

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTargetScale:F

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 399
    .local v0, "pvScale":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 407
    :goto_0
    return-void

    .line 400
    :cond_0
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 401
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x160

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private updateViewUI(FZLjava/lang/String;)V
    .locals 8
    .param p1, "progress"    # F
    .param p2, "anim"    # Z
    .param p3, "updateText"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 205
    if-nez p2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v2, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setProgress(F)V

    .line 210
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    if-nez v2, :cond_2

    .line 212
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v2, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setAnimProgress(F)V

    goto :goto_0

    .line 210
    :cond_2
    if-eqz p3, :cond_0

    .line 214
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v4

    rem-float v2, p1, v6

    invoke-static {v2, v5}, Lcom/meizu/common/widget/InstallProgressBarLayout;->FloatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_4

    div-float v2, p1, v7

    float-to-double v2, v2

    :goto_1
    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "strProgress":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 216
    rem-float v2, p1, v6

    invoke-static {v2, v5}, Lcom/meizu/common/widget/InstallProgressBarLayout;->FloatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_3
    div-float v0, p1, v7

    .line 217
    .local v0, "newProgress":F
    if-nez p2, :cond_5

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setProgress(F)V

    .line 222
    :goto_2
    return-void

    .line 214
    .end local v0    # "newProgress":F
    .end local v1    # "strProgress":Ljava/lang/String;
    :cond_4
    float-to-double v2, p1

    goto :goto_1

    .line 218
    .restart local v0    # "newProgress":F
    .restart local v1    # "strProgress":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setAnimProgress(F)V

    goto :goto_2
.end method


# virtual methods
.method public cancelProgressAnimator()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBar;->cancelProgressAnimator()V

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBarText;->cancelProgressAnimator()V

    .line 375
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 165
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 139
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 140
    :cond_0
    return v2

    .line 143
    :cond_1
    return v2

    .line 147
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getCanvasScale()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    return v0
.end method

.method public getProgressText()Lcom/meizu/common/widget/InstallProgressBarText;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    return-object v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 172
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    .line 173
    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    .line 174
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterX:F

    .line 175
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCenterY:F

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutWidth:I

    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mLayoutHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_0
.end method

.method public refreshProgressBar()V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    goto :goto_0
.end method

.method public resetStatusTextView(Z)V
    .locals 2
    .param p1, "isPromotionStatus"    # Z

    .prologue
    .line 236
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v1}, Lcom/meizu/common/widget/InstallProgressBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p1, :cond_0

    const/4 v1, -0x1

    .line 240
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    return-void

    :cond_0
    const/4 v1, -0x2

    .line 238
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public resetTextColor()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBarText;->resetTextColor()V

    .line 274
    return-void
.end method

.method public resetWidth()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/InstallProgressBar;->resetWidth()V

    .line 331
    return-void
.end method

.method public setAutoTextChange(Z)V
    .locals 0
    .param p1, "isAuto"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mAutoTextChange:Z

    .line 347
    return-void
.end method

.method protected setCanvasScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 449
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mCanvasScale:F

    .line 450
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->invalidate()V

    .line 451
    return-void
.end method

.method public setClickable(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 321
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    if-nez p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->setAlpha(F)V

    .line 322
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->progress_color_black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    .line 324
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 321
    goto :goto_0

    .line 322
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    goto :goto_1
.end method

.method public setDownloadPatchProgress(FZ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "anim"    # Z

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_downloading_patch_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->updateViewUI(FZLjava/lang/String;)V

    .line 307
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "anim"    # Z

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_downloading_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->updateViewUI(FZLjava/lang/String;)V

    .line 298
    return-void
.end method

.method public setPromotionTextViewValue(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method public setPromotionTextViewVisibility()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mPromotionStatusPriceText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->setTextOriginColor(I)V

    .line 339
    return-void
.end method

.method public setTextProgress(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressText:Lcom/meizu/common/widget/InstallProgressBarText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/InstallProgressBarText;->setText(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public setTextUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mTextUnit:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setUniformColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressColor:I

    .line 356
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarLayout;->mProgressBar:Lcom/meizu/common/widget/InstallProgressBar;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/InstallProgressBar;->setRoundBtnColor(I)V

    goto :goto_0
.end method

.method public setUpdateIncrementalProgress(FZ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "anim"    # Z

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_updating_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarLayout;->updateViewUI(FZLjava/lang/String;)V

    .line 316
    return-void
.end method
