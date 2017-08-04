.class public Lcom/meizu/common/widget/PraiseView;
.super Landroid/view/View;
.source "PraiseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;,
        Lcom/meizu/common/widget/PraiseView$Stage;
    }
.end annotation


# instance fields
.field private isAnimationRunning:Z

.field private isPerformAnimation:Z

.field private mAnimImage:Landroid/graphics/drawable/Drawable;

.field private mAnimImageView:Landroid/widget/ImageView;

.field private mAnimPopWindow:Landroid/widget/PopupWindow;

.field private mBackImageChanged:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

.field private mHeight:I

.field private mPopAnimation:Landroid/view/animation/Animation;

.field private mPopWindowView:Landroid/view/ViewGroup;

.field private mPopwindowHiehgt:I

.field private mPopwindowWidth:I

.field private mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

.field private mPraiseImage:Landroid/graphics/drawable/Drawable;

.field private mTranslateHeight:F

.field private mUnPraiseImage:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PraiseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PraiseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/PraiseView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PraiseView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/PraiseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PraiseView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/PraiseView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PraiseView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/PraiseView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PraiseView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private addImageView()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    .line 198
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
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
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x15

    .line 340
    if-ge v0, v1, :cond_0

    .line 343
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v1

    .line 341
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
    .line 349
    sparse-switch p2, :sswitch_data_0

    .line 357
    move v0, p3

    .line 360
    .local v0, "result":I
    :goto_0
    return v0

    .line 351
    .end local v0    # "result":I
    :sswitch_0
    move v0, p3

    .restart local v0    # "result":I
    goto :goto_0

    .line 354
    .end local v0    # "result":I
    :sswitch_1
    move v0, p1

    .restart local v0    # "result":I
    goto :goto_0

    .line 349
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
    .line 206
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
    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 208
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x2bc

    .line 209
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 211
    iget v4, p0, Lcom/meizu/common/widget/PraiseView;->mTranslateHeight:F

    iget v5, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    int-to-float v5, v5

    div-float v12, v4, v5

    .line 212
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
    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 214
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x2bc

    .line 215
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 217
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .local v2, "rotate1":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x64

    .line 218
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 219
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, -0x3e380000    # -25.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .local v3, "rotate2":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x78

    .line 222
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const-wide/16 v4, 0x64

    .line 223
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 224
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 227
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x12c

    .line 228
    invoke-virtual {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v4, 0x2bc

    .line 229
    invoke-virtual {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 231
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 233
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 234
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 235
    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 236
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 237
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 239
    new-instance v4, Lcom/meizu/common/widget/PraiseView$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/PraiseView$1;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    invoke-virtual {v10, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 259
    new-instance v4, Lcom/meizu/common/widget/PraiseView$2;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/PraiseView$2;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 289
    return-object v11
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    const/4 v3, 0x1

    .line 87
    sget-object v1, Lcom/meizu/common/R$styleable;->PraiseView:[I

    sget v2, Lcom/meizu/common/R$style;->Widget_MeizuCommon_PraiseView_Default:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->PraiseView_praiseBackDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 90
    sget v1, Lcom/meizu/common/R$styleable;->PraiseView_unPraiseBackDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    sget-object v1, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 98
    iput-boolean v3, p0, Lcom/meizu/common/widget/PraiseView;->isPerformAnimation:Z

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/PraiseView;->isAnimationRunning:Z

    .line 101
    iput-boolean v3, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    .line 102
    return-void
.end method

.method private initPopWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    .line 185
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->addImageView()V

    .line 187
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mPopWindowView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowWidth:I

    iget v3, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    .line 188
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 190
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 193
    return-void
.end method

.method private measurePopwindowHeight(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 126
    mul-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowWidth:I

    .line 127
    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "desinty":F
    const v1, 0x42855555

    .line 128
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/PraiseView;->mTranslateHeight:F

    .line 129
    iget v1, p0, Lcom/meizu/common/widget/PraiseView;->mTranslateHeight:F

    float-to-double v2, v1

    int-to-double v4, p2

    const-wide v6, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    .line 130
    return-void
.end method

.method private startAnim()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->initPopWindow()V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->initAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    .line 177
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iget v2, p0, Lcom/meizu/common/widget/PraiseView;->mPopwindowHiehgt:I

    neg-int v2, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mPopAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    return-void

    .line 169
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    if-eq v0, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->addImageView()V

    goto :goto_0

    .line 174
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public getPraiseCallBack()Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    return-object v0
.end method

.method public getState()Lcom/meizu/common/widget/PraiseView$Stage;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/PraiseView;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 109
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 111
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 112
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 114
    .local v3, "heightSize":I
    iget-object v6, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 115
    .local v1, "default_width":I
    iget-object v6, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 117
    .local v0, "default_height":I
    invoke-direct {p0, v5, v4, v1}, Lcom/meizu/common/widget/PraiseView;->getMeasure(III)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    .line 118
    invoke-direct {p0, v3, v2, v0}, Lcom/meizu/common/widget/PraiseView;->getMeasure(III)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    .line 120
    iget v6, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    iget v7, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    invoke-virtual {p0, v6, v7}, Lcom/meizu/common/widget/PraiseView;->setMeasuredDimension(II)V

    .line 121
    iget v6, p0, Lcom/meizu/common/widget/PraiseView;->mWidth:I

    iget v7, p0, Lcom/meizu/common/widget/PraiseView;->mHeight:I

    invoke-direct {p0, v6, v7}, Lcom/meizu/common/widget/PraiseView;->measurePopwindowHeight(II)V

    .line 123
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 368
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationPerform(Z)V
    .locals 0
    .param p1, "perform"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/meizu/common/widget/PraiseView;->isPerformAnimation:Z

    .line 299
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "PraDrawableId"    # Landroid/graphics/drawable/Drawable;
    .param p2, "UnPraDrawableId"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 325
    iput-object p2, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 326
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    sget-object v1, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    if-eq v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    .line 334
    return-void

    .line 329
    :cond_0
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResId(II)V
    .locals 2
    .param p1, "PraDrawableId"    # I
    .param p2, "UnPraDrawableId"    # I

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 309
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    sget-object v1, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    if-eq v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->mBackImageChanged:Z

    .line 317
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPraiseCallBack(Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    .line 393
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/PraiseView$Stage;)V
    .locals 1
    .param p1, "stage"    # Lcom/meizu/common/widget/PraiseView$Stage;

    .prologue
    .line 143
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    if-eq p1, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    if-eq v0, p1, :cond_3

    .line 155
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 157
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mUnPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    if-nez v0, :cond_5

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    if-eq v0, p1, :cond_2

    .line 147
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 148
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-boolean v0, p0, Lcom/meizu/common/widget/PraiseView;->isPerformAnimation:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->startAnim()V

    goto :goto_1

    .line 145
    :cond_2
    return-void

    .line 154
    :cond_3
    return-void

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraiseCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->cancelAnimEnd()V

    goto :goto_1
.end method
