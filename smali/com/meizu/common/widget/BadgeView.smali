.class public Lcom/meizu/common/widget/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/BadgeView$Stage;
    }
.end annotation


# static fields
.field private static final MAXCOUNT:I = 0x3e7


# instance fields
.field private final ONENUMWIDTH:I

.field private final TWONUMWIDTH:I

.field private mBadgeColor:I

.field private mBadgeContainer:Landroid/widget/FrameLayout;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHideNumRadius:I

.field private mIsHide:Z

.field private mParentContainer:Landroid/view/ViewGroup;

.field private mParentHeight:I

.field private mParentWidth:I

.field private mRadius:I

.field private mTextColor:I

.field private mTextSize:I

.field private mTwoNumHeiht:I

.field private mTwoNumWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    const/16 v0, 0x1c

    .line 37
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->ONENUMWIDTH:I

    const/16 v0, 0x32

    .line 38
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->TWONUMWIDTH:I

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    const/16 v0, 0x1c

    .line 37
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->ONENUMWIDTH:I

    const/16 v0, 0x32

    .line 38
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->TWONUMWIDTH:I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    const/16 v0, 0x1c

    .line 37
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->ONENUMWIDTH:I

    const/16 v0, 0x32

    .line 38
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->TWONUMWIDTH:I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private dp2px(F)F
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 127
    .local v0, "transformation":Landroid/text/method/TransformationMethod;
    if-nez v0, :cond_0

    .line 130
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 128
    :cond_0
    invoke-interface {v0, p2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    sget-object v0, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    .line 89
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_badge_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BadgeView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    invoke-direct {p0}, Lcom/meizu/common/widget/BadgeView;->initPaint()V

    const/16 v0, 0x11

    .line 92
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setGravity(I)V

    .line 93
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTextColor(I)V

    .line 94
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTextSize(F)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setHide(Z)V

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setBadgeNum(I)V

    .line 98
    invoke-direct {p0}, Lcom/meizu/common/widget/BadgeView;->initParentLayout()V

    .line 99
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    sget-object v1, Lcom/meizu/common/R$styleable;->BadgeView:[I

    invoke-virtual {p0, p1, p2, v1}, Lcom/meizu/common/widget/BadgeView;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "attr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 138
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeTextColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mTextColor:I

    .line 139
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeTextSize:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mTextSize:I

    .line 141
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_badge_view_radius_show_count:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mRadius:I

    .line 142
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_badge_view_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mHideNumRadius:I

    .line 143
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeColor:I

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeColor:I

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    return-void

    .line 136
    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string/jumbo v1, "DINPro-light"

    const/4 v2, 0x0

    .line 121
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 122
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    return-void
.end method

.method private initParentLayout()V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_view_layout_params_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mParentWidth:I

    .line 103
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_view_layout_params_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mParentHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_view_two_num_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumWidth:I

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_view_two_num_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumHeiht:I

    .line 107
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/widget/BadgeView;->mParentWidth:I

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentHeight:I

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 112
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getBadgeGravity()I
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 328
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v1
.end method

.method public getBadgeMargin()[I
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x4

    .line 350
    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v3, v1, v2

    return-object v1
.end method

.method public getBadgeNum()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 270
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 274
    .restart local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public getState()Lcom/meizu/common/widget/BadgeView$Stage;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    return-object v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public isHide()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0x32

    const/4 v5, 0x0

    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-eq v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mHideNumRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/BadgeView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mWidth:I

    .line 70
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mWidth:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_3

    .line 72
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mWidth:I

    if-gt v0, v2, :cond_4

    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 70
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mWidth:I

    if-ge v0, v2, :cond_2

    .line 71
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumHeiht:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 308
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    return-void
.end method

.method public setBadgeMargin(IIII)V
    .locals 2
    .param p1, "leftDipMargin"    # I
    .param p2, "topDipMargin"    # I
    .param p3, "rightDipMargin"    # I
    .param p4, "bottomDipMargin"    # I

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 342
    int-to-float v1, p2

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 343
    int-to-float v1, p3

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 344
    int-to-float v1, p4

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 345
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    return-void
.end method

.method public setBadgeNum(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e7

    .line 254
    if-ge p1, v0, :cond_1

    .line 257
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e7

    .line 255
    goto :goto_1
.end method

.method public setBadgeRadius(I)V
    .locals 2
    .param p1, "badgeRadius"    # I

    .prologue
    .line 364
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v0

    float-to-int p1, v0

    .line 365
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-eq v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->HIDENUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-eq v0, v1, :cond_1

    .line 370
    :goto_0
    return-void

    .line 366
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/BadgeView;->mRadius:I

    goto :goto_0

    .line 368
    :cond_1
    iput p1, p0, Lcom/meizu/common/widget/BadgeView;->mHideNumRadius:I

    goto :goto_0
.end method

.method public setHide(Z)V
    .locals 2
    .param p1, "isHide"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    .line 225
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setState(Lcom/meizu/common/widget/BadgeView$Stage;)V
    .locals 0
    .param p1, "type"    # Lcom/meizu/common/widget/BadgeView$Stage;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    .line 196
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 161
    :goto_0
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 187
    :goto_1
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 162
    :cond_1
    return-void

    .line 166
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    .line 170
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 171
    .local v0, "groupIndex":I
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 175
    .local v1, "parentLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 185
    .end local v0    # "groupIndex":I
    .end local v1    # "parentLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ParentView cannot be empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTargetView(Landroid/widget/TabWidget;I)V
    .locals 1
    .param p1, "target"    # Landroid/widget/TabWidget;
    .param p2, "tabIndex"    # I

    .prologue
    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "tabView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->isHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/BadgeView;->setVisibility(I)V

    .line 244
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 245
    return-void

    .line 239
    :cond_0
    if-nez p1, :cond_2

    :cond_1
    const/16 v0, 0x8

    .line 240
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setVisibility(I)V

    goto :goto_1

    .line 239
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method
