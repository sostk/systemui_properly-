.class public Lcom/meizu/common/widget/CollectingView;
.super Landroid/view/View;
.source "CollectingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;,
        Lcom/meizu/common/widget/CollectingView$Stage;
    }
.end annotation


# instance fields
.field private isAnimationRunning:Z

.field private isPerformAnimation:Z

.field private mAnimImage:Landroid/graphics/drawable/Drawable;

.field private mAnimImageView:Landroid/widget/ImageView;

.field private mAnimPopWindow:Landroid/widget/PopupWindow;

.field private mBackImageChanged:Z

.field private mCollectImage:Landroid/graphics/drawable/Drawable;

.field private mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

.field private mHeight:I

.field private mPopAnimation:Landroid/view/animation/Animation;

.field private mPopWindowView:Landroid/view/ViewGroup;

.field private mPopwindowHiehgt:I

.field private mPopwindowWidth:I

.field private mTranslateHeight:F

.field private mUnCollectImage:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CollectingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CollectingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CollectingView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CollectingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/CollectingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CollectingView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/meizu/common/widget/CollectingView;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CollectingView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CollectingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CollectingView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CollectingView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private addImageView()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    .line 203
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    .line 205
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    return-void
.end method

.method private getInterpolator(FFFF)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "y1"    # F
    .param p4, "y2"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x15

    .line 326
    if-ge v0, v1, :cond_0

    .line 329
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v1

    .line 327
    :cond_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v1
.end method

.method private getMeasure(III)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "mode"    # I
    .param p3, "defaultSize"    # I

    .prologue
    .line 355
    sparse-switch p2, :sswitch_data_0

    .line 363
    move v0, p3

    .line 366
    .local v0, "result":I
    :goto_0
    return v0

    .line 357
    .end local v0    # "result":I
    :sswitch_0
    move v0, p3

    .restart local v0    # "result":I
    goto :goto_0

    .line 360
    .end local v0    # "result":I
    :sswitch_1
    move v0, p1

    .restart local v0    # "result":I
    goto :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAnimation()Landroid/view/animation/Animation;
    .locals 13

    .prologue
    .line 212
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fcccccd    # 1.6f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fcccccd    # 1.6f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 214
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/common/widget/CollectingView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x2bc

    .line 215
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 217
    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mTranslateHeight:F

    iget v3, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 218
    .local v12, "transRatio":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    neg-float v9, v12

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .local v1, "translate":Landroid/view/animation/TranslateAnimation;
    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 220
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/common/widget/CollectingView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x2bc

    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 224
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 225
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/common/widget/CollectingView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    .line 226
    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x2bc

    .line 227
    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 229
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 230
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 231
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 232
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 234
    new-instance v2, Lcom/meizu/common/widget/CollectingView$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/CollectingView$1;-><init>(Lcom/meizu/common/widget/CollectingView;)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 266
    return-object v11
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    const/4 v3, 0x1

    .line 89
    sget-object v1, Lcom/meizu/common/R$styleable;->CollectingView:[I

    sget v2, Lcom/meizu/common/R$style;->Widget_MeizuCommon_CollectingView_Default:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->CollectingView_collectBackDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 94
    sget v1, Lcom/meizu/common/R$styleable;->CollectingView_unCollectBackDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 101
    iput-boolean v3, p0, Lcom/meizu/common/widget/CollectingView;->isPerformAnimation:Z

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/CollectingView;->isAnimationRunning:Z

    .line 103
    iput-boolean v3, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 104
    return-void
.end method

.method private initPopWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    .line 193
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->addImageView()V

    .line 194
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowWidth:I

    iget v3, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    .line 195
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 196
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 198
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 199
    return-void
.end method

.method private measurePopwindowHeight(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 128
    mul-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowWidth:I

    .line 129
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "desinty":F
    const v1, 0x42855555

    .line 130
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/CollectingView;->mTranslateHeight:F

    .line 131
    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mTranslateHeight:F

    float-to-double v2, v1

    int-to-double v4, p2

    const-wide v6, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    .line 132
    return-void
.end method

.method private startAnim()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->initPopWindow()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->initAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    .line 185
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 187
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    neg-int v2, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 188
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    return-void

    .line 177
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    if-eq v0, v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->addImageView()V

    goto :goto_0

    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public getCollectCallBack()Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    return-object v0
.end method

.method public getState()Lcom/meizu/common/widget/CollectingView$Stage;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CollectingView;

    .line 373
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 374
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 111
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 113
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 114
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 116
    .local v3, "heightSize":I
    iget-object v6, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 117
    .local v1, "default_width":I
    iget-object v6, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 119
    .local v0, "default_height":I
    invoke-direct {p0, v5, v4, v1}, Lcom/meizu/common/widget/CollectingView;->getMeasure(III)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    .line 120
    invoke-direct {p0, v3, v2, v0}, Lcom/meizu/common/widget/CollectingView;->getMeasure(III)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    .line 122
    iget v6, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    iget v7, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    invoke-virtual {p0, v6, v7}, Lcom/meizu/common/widget/CollectingView;->setMeasuredDimension(II)V

    .line 123
    iget v6, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    iget v7, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    invoke-direct {p0, v6, v7}, Lcom/meizu/common/widget/CollectingView;->measurePopwindowHeight(II)V

    .line 125
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 274
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationPerform(Z)V
    .locals 0
    .param p1, "perform"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/meizu/common/widget/CollectingView;->isPerformAnimation:Z

    .line 286
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "ColDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "UnColDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 312
    iput-object p2, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    .line 313
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    if-eq v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 321
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResId(II)V
    .locals 2
    .param p1, "ColDrawableId"    # I
    .param p2, "UnColDrawableId"    # I

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    if-eq v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 304
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCollectCallBack(Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    .line 350
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/CollectingView$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/meizu/common/widget/CollectingView$Stage;

    .prologue
    .line 145
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    if-eq p1, v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    if-eq v0, p1, :cond_4

    .line 157
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->isAnimationRunning:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 169
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-nez v0, :cond_7

    .line 173
    :cond_1
    :goto_2
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    if-eq v0, p1, :cond_3

    .line 149
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->isPerformAnimation:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->startAnim()V

    goto :goto_2

    .line 147
    :cond_3
    return-void

    .line 156
    :cond_4
    return-void

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->cancleStartAnim()V

    goto :goto_1

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->cancleEndAnim()V

    goto :goto_2
.end method
