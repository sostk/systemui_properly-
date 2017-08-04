.class public Lcom/meizu/common/widget/CircularProgressButton;
.super Landroid/widget/Button;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CircularProgressButton$7;,
        Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;,
        Lcom/meizu/common/widget/CircularProgressButton$StateManager;,
        Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;,
        Lcom/meizu/common/widget/CircularProgressButton$SavedState;,
        Lcom/meizu/common/widget/CircularProgressButton$State;
    }
.end annotation


# static fields
.field public static final ERROR_STATE_PROGRESS:I = -0x1

.field public static final IDLE_STATE_PROGRESS:I


# instance fields
.field private mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

.field private mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

.field private mColorIndicator:I

.field private mColorIndicatorBackground:I

.field private mColorProgress:I

.field private mCompleteColorState:Landroid/content/res/ColorStateList;

.field private mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mCompleteText:Ljava/lang/String;

.field private mConfigurationChanged:Z

.field private mCornerRadius:F

.field private mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mErrorColorState:Landroid/content/res/ColorStateList;

.field private mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mErrorText:Ljava/lang/String;

.field private mIconComplete:I

.field private mIconError:I

.field private mIdleColorState:Landroid/content/res/ColorStateList;

.field private mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mIdleText:Ljava/lang/String;

.field private mIndeterminateProgressMode:Z

.field private mIsCycle:Z

.field private mIsFirstTime:Z

.field private mIsUseTransitionAnim:Z

.field private mMaxProgress:I

.field private mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

.field private mMorphingInProgress:Z

.field private mNeedInvalidateCenterIcon:Z

.field private mOrginWidth:I

.field private mPaddingProgress:I

.field private mProgress:I

.field private mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

.field private mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mProgressText:Ljava/lang/String;

.field private mProgressWidth:I

.field private mShouldShowCenterIcon:Z

.field private mShouldUpdateBounds:Z

.field private mState:Lcom/meizu/common/widget/CircularProgressButton$State;

.field private mStrokeColorComplete:Landroid/content/res/ColorStateList;

.field private mStrokeColorError:Landroid/content/res/ColorStateList;

.field private mStrokeColorIdle:Landroid/content/res/ColorStateList;

.field private mStrokeWidth:I

.field private mTextColorComplete:Landroid/content/res/ColorStateList;

.field private mTextColorError:Landroid/content/res/ColorStateList;

.field private mTextColorIdle:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 296
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 305
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 307
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 310
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsFirstTime:Z

    .line 321
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 782
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 823
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 872
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 947
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$5;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 296
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 305
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 307
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 310
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsFirstTime:Z

    .line 321
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 782
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 823
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 872
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 947
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$5;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 305
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 307
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    .line 310
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsFirstTime:Z

    .line 321
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 782
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 823
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 872
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 947
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$5;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CircularProgressButton$5;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CircularProgressButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 339
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/CircularProgressButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIconComplete:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsCycle:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # I

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setIcon(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/CircularProgressButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/CircularProgressButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton;
    .param p1, "x1"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsFirstTime:Z

    return p1
.end method

.method private changeBackground(Lcom/meizu/common/widget/CircularProgressButton$State;Z)V
    .locals 11
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1652
    if-eqz p2, :cond_1

    .line 1655
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->cancelAllAnimation()V

    const-string/jumbo v4, ""

    .line 1657
    .local v4, "st":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1658
    .local v0, "backgroundColor":I
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1659
    .local v5, "strokeColor":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 1660
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1695
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v7}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1696
    .local v1, "d":Landroid/graphics/drawable/GradientDrawable;
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq p1, v7, :cond_2

    .line 1701
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v1, v10, v10, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1703
    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1704
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    invoke-virtual {v7, v8}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeWidth(I)V

    .line 1705
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v7, v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 1706
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 1707
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/CircularProgressButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1708
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    .line 1709
    return-void

    .line 1652
    .end local v0    # "backgroundColor":I
    .end local v1    # "d":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "st":Ljava/lang/String;
    .end local v5    # "strokeColor":I
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne p1, v7, :cond_0

    .line 1653
    return-void

    .line 1662
    .restart local v0    # "backgroundColor":I
    .restart local v4    # "st":Ljava/lang/String;
    .restart local v5    # "strokeColor":I
    .restart local v6    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_0
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1663
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1664
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    .line 1665
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1666
    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    .line 1667
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1670
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1671
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1672
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    .line 1673
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1674
    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    .line 1675
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1678
    :pswitch_2
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 1679
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 1680
    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    .line 1682
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1683
    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    .line 1684
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto/16 :goto_0

    .line 1687
    :pswitch_3
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    .line 1688
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicatorBackground:I

    .line 1689
    sget-object v7, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v7}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 1690
    iget-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto/16 :goto_0

    .line 1697
    .restart local v1    # "d":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v2, v7, v8

    .line 1698
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v3, v7, v8

    .line 1699
    .local v3, "right":I
    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v8, v9

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 1660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;
    .locals 4
    .param p1, "color"    # I
    .param p2, "strokeColor"    # I

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$drawable;->mc_cir_pro_btn_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 467
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 468
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 469
    new-instance v1, Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v1, v0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    .line 470
    .local v1, "strokeGradientDrawable":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    invoke-virtual {v1, p2}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 471
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    invoke-virtual {v1, v2}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeWidth(I)V

    .line 473
    return-object v1
.end method

.method private createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 682
    iput-boolean v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    .line 684
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 686
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;-><init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 687
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromCornerRadius(F)V

    .line 688
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToCornerRadius(F)V

    .line 690
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromWidth(I)V

    .line 691
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToWidth(I)V

    .line 693
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    .line 699
    :goto_0
    iput-boolean v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 701
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    return-object v0

    .line 693
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    goto :goto_0
.end method

.method private createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    .locals 4
    .param p1, "fromCorner"    # F
    .param p2, "toCorner"    # F
    .param p3, "fromWidth"    # I
    .param p4, "toWidth"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 706
    iput-boolean v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    .line 707
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 708
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;-><init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 709
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromCornerRadius(F)V

    .line 710
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToCornerRadius(F)V

    .line 712
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setPadding(F)V

    .line 714
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromWidth(I)V

    .line 715
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, p4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToWidth(I)V

    .line 717
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    .line 723
    :goto_0
    iput-boolean v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 725
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    return-object v0

    .line 717
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setDuration(I)V

    goto :goto_0
.end method

.method private directprogressToError()V
    .locals 2

    .prologue
    .line 906
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;-><init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 907
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 908
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 910
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 911
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 912
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    new-instance v1, Lcom/meizu/common/widget/CircularProgressButton$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CircularProgressButton$4;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 927
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 928
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 929
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->colorMorphingStart()V

    .line 930
    return-void
.end method

.method private drawIndeterminateProgress(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 619
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    if-eqz v5, :cond_0

    .line 630
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setAllowLoading(Z)V

    .line 631
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5, p1}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 621
    .local v2, "offset":I
    new-instance v5, Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;-><init>(IF)V

    iput-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    .line 622
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v1, v2, v5

    .line 623
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v3, v5, v6

    .line 624
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v0, v5, v6

    .line 625
    .local v0, "bottom":I
    iget v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    .line 626
    .local v4, "top":I
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5, v1, v4, v3, v0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setBounds(IIII)V

    .line 627
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5, p0}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 628
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->start()V

    goto :goto_0
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    .line 636
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    if-eqz v5, :cond_1

    .line 643
    :goto_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    if-nez v5, :cond_2

    .line 651
    :cond_0
    :goto_1
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    int-to-float v5, v5

    div-float v5, v8, v5

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x42b40000    # 90.0f

    add-float v3, v6, v5

    .line 652
    .local v3, "startAngle":F
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    int-to-float v5, v5

    div-float v5, v8, v5

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    int-to-float v6, v6

    mul-float v4, v5, v6

    .line 653
    .local v4, "sweepAngle":F
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    invoke-virtual {v5, v3}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setStartAngle(F)V

    .line 654
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    invoke-virtual {v5, v4}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setSweepAngle(F)V

    .line 655
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    invoke-virtual {v5, p1}, Lcom/meizu/common/drawble/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 656
    return-void

    .line 637
    .end local v3    # "startAngle":F
    .end local v4    # "sweepAngle":F
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 638
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 639
    .local v2, "size":I
    new-instance v5, Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-direct {v5, v2, v6, v7}, Lcom/meizu/common/drawble/CircularProgressDrawable;-><init>(III)V

    iput-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    .line 640
    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v0, v1, v5

    .line 641
    .local v0, "left":I
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {v5, v0, v6, v0, v7}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setBounds(IIII)V

    goto :goto_0

    .line 644
    .end local v0    # "left":I
    .end local v1    # "offset":I
    .end local v2    # "size":I
    :cond_2
    iput-boolean v9, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 645
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setCenterIcon(Landroid/graphics/drawable/Drawable;)V

    .line 646
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 647
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    iget-boolean v6, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    invoke-virtual {v5, v6}, Lcom/meizu/common/drawble/CircularProgressDrawable;->setShowCenterIcon(Z)V

    goto :goto_1
.end method

.method private drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1896
    if-nez p1, :cond_0

    .line 1899
    :goto_0
    return-void

    .line 1897
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private ensureBackgroundBounds()V
    .locals 2

    .prologue
    .line 1561
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1562
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1563
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1564
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V

    .line 1565
    return-void
.end method

.method private getDisabledColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 459
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getFocusedColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 453
    new-array v0, v0, [I

    const v1, 0x101009c

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 1952
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x15

    .line 1953
    if-ge v0, v1, :cond_0

    .line 1956
    new-instance v1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    return-object v1

    .line 1954
    :cond_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v1
.end method

.method private getNormalColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 441
    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getPressedColor(Landroid/content/res/ColorStateList;)I
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 447
    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CircularProgressButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 345
    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    .line 346
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    .line 349
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initIdleStateDrawable()V

    .line 352
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initCompleteStateDrawable()V

    .line 353
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initProgressStateDrawable()V

    .line 354
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initErrorStateDrawable()V

    .line 355
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 358
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 520
    sget-object v14, Lcom/meizu/common/R$styleable;->CircularProgressButton:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lcom/meizu/common/widget/CircularProgressButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 521
    .local v3, "attr":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_0

    .line 525
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonStrokeWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/meizu/common/R$dimen;->mc_cir_progress_button_stroke_width:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeWidth:I

    .line 529
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextIdle:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    .line 530
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextComplete:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    .line 532
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextError:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    .line 533
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextProgress:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressText:Ljava/lang/String;

    .line 536
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonIconComplete:I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIconComplete:I

    .line 538
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonIconError:I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIconError:I

    .line 540
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonCornerRadius:I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    .line 542
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonPaddingProgress:I

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    .line 545
    sget v14, Lcom/meizu/common/R$color;->mc_cir_progress_button_blue:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v5

    .line 546
    .local v5, "blue":I
    sget v14, Lcom/meizu/common/R$color;->mc_cir_progress_button_white:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v13

    .line 547
    .local v13, "white":I
    sget v14, Lcom/meizu/common/R$color;->mc_cir_progress_button_grey:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v10

    .line 548
    .local v10, "grey":I
    sget v14, Lcom/meizu/common/R$color;->mc_cir_progress_button_blank:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/CircularProgressButton;->getColor(I)I

    move-result v4

    .line 550
    .local v4, "blank":I
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonSelectorIdle:I

    sget v15, Lcom/meizu/common/R$color;->mc_cir_progress_button_blue:I

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 553
    .local v11, "idleStateSelector":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    .line 554
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonStrokeColorIdle:I

    invoke-virtual {v3, v14, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 555
    .local v12, "idleStrokeColorSelector":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    .line 557
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonSelectorComplete:I

    sget v15, Lcom/meizu/common/R$color;->mc_cir_progress_button_green:I

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 560
    .local v6, "completeStateSelector":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    .line 561
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonStrokeColorComplete:I

    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 562
    .local v7, "completeStrokeColorSelector":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    .line 564
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonSelectorError:I

    sget v15, Lcom/meizu/common/R$color;->mc_cir_progress_button_red:I

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 567
    .local v8, "errorStateSelector":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    .line 568
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonStrokeColorError:I

    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 569
    .local v9, "errorStrokeColorSelector":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    .line 571
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonColorProgress:I

    invoke-virtual {v3, v14, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    .line 573
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonColorIndicator:I

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    .line 575
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonColorIndicatorBackground:I

    invoke-virtual {v3, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicatorBackground:I

    .line 579
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextColorError:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_1

    .line 583
    :goto_0
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextColorIdle:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_2

    .line 587
    :goto_1
    sget v14, Lcom/meizu/common/R$styleable;->CircularProgressButton_mcCirButtonTextColorComplete:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_3

    .line 591
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 592
    return-void

    .line 522
    .end local v4    # "blank":I
    .end local v5    # "blue":I
    .end local v6    # "completeStateSelector":I
    .end local v7    # "completeStrokeColorSelector":I
    .end local v8    # "errorStateSelector":I
    .end local v9    # "errorStrokeColorSelector":I
    .end local v10    # "grey":I
    .end local v11    # "idleStateSelector":I
    .end local v12    # "idleStrokeColorSelector":I
    .end local v13    # "white":I
    :cond_0
    return-void

    .line 581
    .restart local v4    # "blank":I
    .restart local v5    # "blue":I
    .restart local v6    # "completeStateSelector":I
    .restart local v7    # "completeStrokeColorSelector":I
    .restart local v8    # "errorStateSelector":I
    .restart local v9    # "errorStrokeColorSelector":I
    .restart local v10    # "grey":I
    .restart local v11    # "idleStateSelector":I
    .restart local v12    # "idleStrokeColorSelector":I
    .restart local v13    # "white":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 589
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method private initCompleteStateDrawable()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 378
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 379
    .local v0, "colorPressed":I
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 381
    .local v2, "strokeColorPressed":I
    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v1

    .line 382
    .local v1, "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    .line 387
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 392
    return-void

    .line 383
    :cond_0
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 384
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method private initErrorStateDrawable()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 361
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 362
    .local v0, "colorPressed":I
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 363
    .local v2, "strokeColorPressed":I
    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v1

    .line 364
    .local v1, "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    .line 369
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 374
    return-void

    .line 365
    :cond_0
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 366
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method private initIdleStateDrawable()V
    .locals 18

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v3

    .line 396
    .local v3, "colorNormal":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v4

    .line 397
    .local v4, "colorPressed":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getFocusedColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 398
    .local v2, "colorFocused":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    .line 399
    .local v1, "colorDisabled":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v10

    .line 400
    .local v10, "strokeColorNormal":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getPressedColor(Landroid/content/res/ColorStateList;)I

    move-result v11

    .line 401
    .local v11, "strokeColorPressed":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getFocusedColor(Landroid/content/res/ColorStateList;)I

    move-result v9

    .line 402
    .local v9, "strokeColorFocused":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/common/widget/CircularProgressButton;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v8

    .line 403
    .local v8, "strokeColorDisabled":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    if-eqz v12, :cond_0

    .line 407
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v5

    .line 408
    .local v5, "drawableDisabled":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v6

    .line 409
    .local v6, "drawableFocused":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v7

    .line 410
    .local v7, "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v12, :cond_1

    .line 415
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a7

    aput v15, v13, v14

    invoke-virtual {v7}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x101009c

    aput v15, v13, v14

    invoke-virtual {v6}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, -0x101009e

    aput v15, v13, v14

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v13, Landroid/util/StateSet;->WILD_CARD:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v14}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 426
    return-void

    .line 404
    .end local v5    # "drawableDisabled":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    .end local v6    # "drawableFocused":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    .end local v7    # "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/meizu/common/widget/CircularProgressButton;->createDrawable(II)Lcom/meizu/common/drawble/StrokeGradientDrawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    goto/16 :goto_0

    .line 411
    .restart local v5    # "drawableDisabled":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    .restart local v6    # "drawableFocused":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    .restart local v7    # "drawablePressed":Lcom/meizu/common/drawble/StrokeGradientDrawable;
    :cond_1
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_1
.end method

.method private initProgressStateDrawable()V
    .locals 6

    .prologue
    .line 429
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 433
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 434
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v0, v2, v3

    .line 435
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v1, v2, v3

    .line 436
    .local v1, "right":I
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 438
    return-void

    .line 430
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 431
    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method private morphCompleteToIdle()V
    .locals 2

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 843
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 844
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 846
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 847
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 849
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 850
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 851
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 852
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 854
    return-void
.end method

.method private morphErrorToIdle()V
    .locals 2

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 859
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 860
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 862
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 863
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 865
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 866
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 867
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 868
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 870
    return-void
.end method

.method private morphIdleToComplete()V
    .locals 2

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 811
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 812
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 813
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 814
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 816
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 817
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 818
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 819
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 821
    return-void
.end method

.method private morphIdleToError()V
    .locals 2

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->createMorphing()Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 888
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 889
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 891
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 892
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 894
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 895
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 896
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 897
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 899
    return-void
.end method

.method private morphProgressToComplete()V
    .locals 5

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 798
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 799
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 800
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 801
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 802
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 803
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 804
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 805
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 807
    return-void
.end method

.method private morphProgressToError()V
    .locals 5

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 936
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 937
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 939
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 940
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 941
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 942
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 943
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 944
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 945
    return-void
.end method

.method private morphProgressToIdle()V
    .locals 5

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 968
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 969
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 971
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 972
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 973
    new-instance v1, Lcom/meizu/common/widget/CircularProgressButton$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CircularProgressButton$6;-><init>(Lcom/meizu/common/widget/CircularProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 985
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 986
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 987
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 988
    return-void
.end method

.method private morphToProgress()V
    .locals 5

    .prologue
    .line 755
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    if-eqz v1, :cond_1

    .line 758
    :goto_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsFirstTime:Z

    if-nez v1, :cond_2

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    .line 765
    :goto_1
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setWidth(I)V

    .line 766
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCornerRadius:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CircularProgressButton;->createProgressMorphing(FFII)Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    move-result-object v0

    .line 770
    .local v0, "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromColor(I)V

    .line 771
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorProgress:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToColor(I)V

    .line 773
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setFromStrokeColor(I)V

    .line 774
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicatorBackground:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setToStrokeColor(I)V

    .line 776
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V

    .line 777
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    .line 778
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 779
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V

    .line 780
    return-void

    .line 756
    .end local v0    # "animation":Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    goto :goto_0

    .line 758
    :cond_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsCycle:Z

    if-nez v1, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressWidth:I

    goto :goto_1
.end method

.method private recordBackgroundBoundIfNeed()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 489
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v1, :cond_0

    .line 492
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 493
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 494
    return-object v0

    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    .line 490
    return-object v1
.end method

.method private restoreBackgroundBoundIfNeed(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private setBackgroundBound(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 1568
    if-eqz p2, :cond_0

    .line 1571
    sget-object v2, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq p1, v2, :cond_1

    .line 1578
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1579
    return-void

    .line 1569
    :cond_0
    return-void

    .line 1572
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    add-int v0, v2, v3

    .line 1573
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int v1, v2, v3

    .line 1574
    .local v1, "right":I
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/CircularProgressButton;->mPaddingProgress:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1576
    return-void
.end method

.method private setBackgroundFromState(Lcom/meizu/common/widget/CircularProgressButton$State;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;

    .prologue
    .line 1794
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1809
    :goto_0
    return-void

    .line 1796
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1799
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1802
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1805
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 1794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # [I

    .prologue
    .line 504
    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 508
    return-void

    .line 505
    :cond_0
    return-void
.end method

.method private setIcon(I)V
    .locals 5
    .param p1, "icon"    # I

    .prologue
    const/4 v4, 0x0

    .line 991
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 992
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 997
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 994
    .local v1, "padding":I
    invoke-virtual {p0, p1, v4, v4, v4}, Lcom/meizu/common/widget/CircularProgressButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 995
    invoke-virtual {p0, v1, v4, v4, v4}, Lcom/meizu/common/widget/CircularProgressButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setState(Lcom/meizu/common/widget/CircularProgressButton$State;)V
    .locals 1
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, p1, :cond_0

    .line 1815
    :goto_0
    return-void

    .line 1813
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    goto :goto_0
.end method

.method private setTextForState(Lcom/meizu/common/widget/CircularProgressButton$State;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;

    .prologue
    .line 1927
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1940
    :goto_0
    :pswitch_0
    return-void

    .line 1929
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1932
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1935
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelAllAnimation()V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    if-nez v0, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingAnimation:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->cancelAllAnim()V

    goto :goto_0
.end method

.method public dp2px(F)F
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    const/4 v0, 0x1

    .line 750
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1845
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    if-eqz v0, :cond_2

    .line 1846
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 1847
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->ensureBackgroundBounds()V

    .line 1849
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_3

    .line 1852
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_4

    .line 1890
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 1893
    :goto_2
    return-void

    .line 1845
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1849
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1850
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1853
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollY()I

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1885
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1886
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCurrentStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1887
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 1868
    :cond_5
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1876
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1870
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1873
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1879
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->recordBackgroundBoundIfNeed()Landroid/graphics/Rect;

    move-result-object v0

    .line 480
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 481
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 482
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 483
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getDrawableState()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundState(Landroid/graphics/drawable/Drawable;[I)V

    .line 484
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->restoreBackgroundBoundIfNeed(Landroid/graphics/Rect;)V

    .line 485
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 486
    return-void
.end method

.method protected getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getCompleteText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    return v0
.end method

.method public getState()Lcom/meizu/common/widget/CircularProgressButton$State;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    return-object v0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 737
    .local v0, "transformation":Landroid/text/method/TransformationMethod;
    if-nez v0, :cond_0

    .line 740
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 738
    :cond_0
    invoke-interface {v0, p2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "attr"    # [I

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public isIndeterminateProgressMode()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    return v0
.end method

.method public isMorphing()Z
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1737
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 1738
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->cancelAllAnimation()V

    .line 1739
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 605
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_1

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    if-nez v0, :cond_3

    .line 616
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 606
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    if-nez v0, :cond_2

    .line 609
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->drawIndeterminateProgress(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 613
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    invoke-virtual {v0, v2}, Lcom/meizu/common/drawble/CircularAnimatedDrawable;->setAllowLoading(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1982
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/CircularProgressButton;

    .line 1983
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1984
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 1154
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 1155
    if-nez p1, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {p0, v0, v1, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1173
    instance-of v1, p1, Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    if-nez v1, :cond_0

    .line 1181
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1183
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1174
    check-cast v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    .line 1175
    .local v0, "savedState":Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1200(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 1176
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1300(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    .line 1177
    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1400(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mConfigurationChanged:Z

    .line 1178
    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1179
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setProgress(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1162
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1163
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1164
    .local v0, "savedState":Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1202(Lcom/meizu/common/widget/CircularProgressButton$SavedState;I)I

    .line 1165
    iget-boolean v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1302(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z

    .line 1166
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->access$1402(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z

    .line 1168
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1944
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 1945
    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    .line 1946
    iput-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    .line 1947
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 1948
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldUpdateBounds:Z

    .line 1949
    return-void
.end method

.method protected removeIcon()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1000
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1001
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setPadding(IIII)V

    .line 1002
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1087
    return-void
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1010
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1013
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1015
    :goto_0
    return-void

    .line 1011
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCompleteText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    .line 1141
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    .line 1150
    return-void
.end method

.method public setIdleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    .line 1132
    return-void
.end method

.method public setIndeterminateProgressMode(Z)V
    .locals 0
    .param p1, "indeterminateProgressMode"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIndeterminateProgressMode:Z

    .line 674
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 513
    if-nez p1, :cond_1

    .line 516
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    .line 517
    return-void

    .line 513
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v0, :cond_0

    .line 514
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1068
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setProgress(IZ)V

    .line 1069
    return-void
.end method

.method public setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "useAnim"    # Z

    .prologue
    .line 1024
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 1025
    iput-boolean p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 1026
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v0, :cond_1

    .line 1027
    :cond_0
    return-void

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMaxProgress:I

    if-ge v0, v1, :cond_3

    .line 1038
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    if-gtz v0, :cond_5

    .line 1044
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1050
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    if-eqz v0, :cond_a

    .line 1059
    :cond_2
    :goto_0
    return-void

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_4

    .line 1035
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 1036
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToComplete()V

    goto :goto_0

    .line 1034
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToComplete()V

    goto :goto_0

    .line 1039
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_7

    .line 1040
    :cond_6
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphToProgress()V

    goto :goto_0

    .line 1039
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_6

    .line 1041
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 1042
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    goto :goto_0

    .line 1045
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_9

    .line 1047
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToError()V

    goto :goto_0

    .line 1046
    :cond_9
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToError()V

    goto :goto_0

    .line 1051
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_b

    .line 1053
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_c

    .line 1055
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-ne v0, v1, :cond_2

    .line 1056
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphErrorToIdle()V

    goto :goto_0

    .line 1052
    :cond_b
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphCompleteToIdle()V

    goto :goto_0

    .line 1054
    :cond_c
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToIdle()V

    goto :goto_0
.end method

.method public setProgressCenterIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "centerIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressCenterIcon:Landroid/graphics/drawable/Drawable;

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 1545
    return-void
.end method

.method public setProgressForState(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, v1, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1718
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgress:I

    .line 1719
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    goto :goto_0
.end method

.method public setProgressIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 1966
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mColorIndicator:I

    .line 1967
    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    .line 1968
    iput-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressDrawable:Lcom/meizu/common/drawble/CircularProgressDrawable;

    .line 1969
    return-void
.end method

.method public setShowCenterIcon(Z)V
    .locals 1
    .param p1, "showCenterIcon"    # Z

    .prologue
    .line 1553
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mShouldShowCenterIcon:Z

    .line 1554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mNeedInvalidateCenterIcon:Z

    .line 1555
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V
    .locals 3
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "useAnim"    # Z
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1589
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq p1, v1, :cond_1

    .line 1592
    iput-boolean p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIsUseTransitionAnim:Z

    .line 1593
    if-eqz p2, :cond_2

    .line 1597
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-eqz v1, :cond_3

    .line 1598
    :cond_0
    return-void

    .line 1590
    :cond_1
    return-void

    .line 1594
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->changeBackground(Lcom/meizu/common/widget/CircularProgressButton$State;Z)V

    .line 1595
    return-void

    .line 1597
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1648
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 1602
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v2, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v1, v2, :cond_4

    .line 1603
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphToProgress()V

    goto :goto_0

    .line 1607
    :pswitch_2
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1609
    :pswitch_3
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphCompleteToIdle()V

    goto :goto_0

    .line 1612
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphErrorToIdle()V

    goto :goto_0

    .line 1615
    :pswitch_5
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToIdle()V

    goto :goto_0

    .line 1620
    :pswitch_6
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 1625
    :pswitch_7
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToComplete()V

    goto :goto_0

    .line 1622
    :pswitch_8
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToComplete()V

    goto :goto_0

    .line 1630
    :pswitch_9
    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    .line 1636
    :pswitch_a
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingLeft()I

    move-result v2

    add-int v0, v1, v2

    .line 1637
    .local v0, "width":I
    iget v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mOrginWidth:I

    if-gt v0, v1, :cond_6

    .line 1640
    :cond_5
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphProgressToError()V

    goto :goto_0

    .line 1632
    .end local v0    # "width":I
    :pswitch_b
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->morphIdleToError()V

    goto :goto_0

    .line 1637
    .restart local v0    # "width":I
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1638
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->directprogressToError()V

    goto :goto_0

    .line 1600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1607
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1620
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1630
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setStateColorSelector(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "backgroundColorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "strokeColorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v2, 0x0

    .line 1758
    if-nez p2, :cond_1

    .line 1759
    :cond_0
    return-void

    .line 1758
    :cond_1
    if-eqz p3, :cond_0

    .line 1761
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1777
    :goto_0
    :pswitch_0
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    .line 1778
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1779
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1780
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1781
    iput-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 1782
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initIdleStateDrawable()V

    .line 1783
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initProgressStateDrawable()V

    .line 1784
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initErrorStateDrawable()V

    .line 1785
    invoke-direct {p0}, Lcom/meizu/common/widget/CircularProgressButton;->initCompleteStateDrawable()V

    .line 1786
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, p1, :cond_2

    .line 1789
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->changeBackground(Lcom/meizu/common/widget/CircularProgressButton$State;Z)V

    .line 1790
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->drawableStateChanged()V

    .line 1791
    return-void

    .line 1763
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleColorState:Landroid/content/res/ColorStateList;

    .line 1764
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorIdle:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1767
    :pswitch_2
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteColorState:Landroid/content/res/ColorStateList;

    .line 1768
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorComplete:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1771
    :pswitch_3
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorColorState:Landroid/content/res/ColorStateList;

    .line 1772
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton;->mStrokeColorError:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1787
    :cond_2
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setBackgroundFromState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    goto :goto_1

    .line 1761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStateText(Lcom/meizu/common/widget/CircularProgressButton$State;Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1908
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1921
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, p1, :cond_1

    .line 1924
    :cond_0
    :goto_1
    return-void

    .line 1910
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleText:Ljava/lang/String;

    goto :goto_0

    .line 1913
    :pswitch_2
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteText:Ljava/lang/String;

    goto :goto_0

    .line 1916
    :pswitch_3
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorText:Ljava/lang/String;

    goto :goto_0

    .line 1921
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mMorphingInProgress:Z

    if-nez v0, :cond_0

    .line 1922
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton;->setTextForState(Lcom/meizu/common/widget/CircularProgressButton$State;)V

    goto :goto_1

    .line 1908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStateTextColor(Lcom/meizu/common/widget/CircularProgressButton$State;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/common/widget/CircularProgressButton$State;
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1824
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$7;->$SwitchMap$com$meizu$common$widget$CircularProgressButton$State:[I

    invoke-virtual {p1}, Lcom/meizu/common/widget/CircularProgressButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1837
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mState:Lcom/meizu/common/widget/CircularProgressButton$State;

    if-eq v0, p1, :cond_0

    .line 1840
    :goto_1
    return-void

    .line 1826
    :pswitch_1
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorIdle:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1829
    :pswitch_2
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorComplete:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1832
    :pswitch_3
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton;->mTextColorError:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 1838
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    goto :goto_1

    .line 1824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton;->mBackground:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->setStrokeColor(I)V

    .line 1096
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 678
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mAnimatedDrawable:Lcom/meizu/common/drawble/CircularAnimatedDrawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mProgressStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mIdleStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mErrorStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton;->mCompleteStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
