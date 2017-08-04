.class public Lcom/meizu/keyguard/FindPhonePageAnimationHelper;
.super Ljava/lang/Object;
.source "FindPhonePageAnimationHelper.java"


# instance fields
.field private mBtnBottomWhenInputOn:I

.field private mFindPhoneTips:Landroid/view/View;

.field private mFindPhoneTipsAnimator:Landroid/animation/ValueAnimator;

.field private mRootView:Landroid/view/View;

.field private mRootViewLayoutAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mRootView:Landroid/view/View;

    .line 25
    sget v0, Lcom/android/keyguard/R$id;->tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTips:Landroid/view/View;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->findphone_anim_distance_when_input_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mBtnBottomWhenInputOn:I

    .line 23
    return-void
.end method


# virtual methods
.method public getTopMarginAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "change"    # I
    .param p3, "duration"    # I

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 49
    .local v1, "from":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    add-int v3, v1, p2

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 50
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    new-instance v2, Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/meizu/keyguard/FindPhonePageAnimationHelper$1;-><init>(Lcom/meizu/keyguard/FindPhonePageAnimationHelper;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    return-object v0
.end method

.method public getVisablityAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visiablity"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    const/16 v1, 0x8

    if-ne p2, v1, :cond_2

    .line 66
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 70
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    :cond_1
    return-object v0

    .line 67
    .restart local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    if-nez p2, :cond_0

    .line 68
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method public handleInputStateChange(Z)V
    .locals 4
    .param p1, "isInputOpen"    # Z

    .prologue
    .line 30
    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mBtnBottomWhenInputOn:I

    neg-int v1, v1

    const/16 v2, 0x1a0

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->getTopMarginAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mRootViewLayoutAnimator:Landroid/animation/ValueAnimator;

    .line 32
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTips:Landroid/view/View;

    const/16 v1, 0x8

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->getVisablityAnimator(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTipsAnimator:Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mRootViewLayoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTipsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mRootViewLayoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mRootViewLayoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTipsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTipsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 42
    iget-object v0, p0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;->mFindPhoneTipsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method
