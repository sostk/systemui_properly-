.class public Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "MzKeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

.field private mCameraAnimOffset:I

.field private mCameraExtraArea:I

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndAndLaunchListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mMotionPerformedByUser:Z

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mPointDownInCameraArea:Z

.field private mPointDownInWallpaperArea:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSlideContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mStartWallpaper:Z

.field private mStartWallpaperDistance:I

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

.field private mWallpaperIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setViewAlpha(F)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;Landroid/content/Context;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mFlingEndAndLaunchListener:Landroid/animation/AnimatorListenerAdapter;

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    .line 658
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInCameraArea:Z

    .line 659
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInWallpaperArea:Z

    .line 122
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->initIcons()V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->initDimens()V

    .line 121
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 402
    :cond_0
    return-void
.end method

.method private donwInWallpaperApp(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0, p1, p2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->isInWallpaperArea(FF)Z

    move-result v0

    return v0

    .line 683
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private endMotion(Landroid/view/MotionEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "forceSnapBack"    # Z

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->flingWithCurrentVelocity(Z)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 285
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 279
    :cond_1
    return-void
.end method

.method private fling(FZ)V
    .locals 5
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z

    .prologue
    const/4 v4, 0x0

    .line 454
    if-eqz p2, :cond_0

    .line 455
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 456
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v1, v0, v2, v4, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 457
    new-instance v1, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 467
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 468
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 430
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method private flingWithCurrentVelocity(Z)V
    .locals 5
    .param p1, "forceSnapBack"    # Z

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->getCurrentVelocity()F

    move-result v1

    .line 412
    .local v1, "vel":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    .line 415
    .local v0, "snapBack":Z
    iget v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    .line 416
    .local v2, "velIsInWrongDirection":Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v3, v2

    :goto_1
    or-int/2addr v0, v3

    .line 417
    xor-int v3, v0, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 418
    :cond_0
    if-nez v0, :cond_3

    .end local p1    # "forceSnapBack":Z
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->fling(FZ)V

    .line 408
    return-void

    .line 415
    .end local v2    # "velIsInWrongDirection":Z
    .restart local p1    # "forceSnapBack":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "velIsInWrongDirection":Z
    goto :goto_0

    .line 416
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 418
    :cond_3
    const/4 p1, 0x1

    goto :goto_2
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    return v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method private getMinTranslationAmount()I
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 427
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaperDistance:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getScale(F)F
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 561
    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    .line 562
    const v2, 0x3f4ccccd    # 0.8f

    .line 561
    add-float v0, v1, v2

    .line 563
    .local v0, "scale":F
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private initDimens()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 132
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTouchSlop:I

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    const v2, 0x7f0b03dc

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 137
    const v2, 0x7f0b03dd

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 140
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 142
    const v2, 0x10c000e

    .line 141
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 144
    const v2, 0x10c000f

    .line 143
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCameraExtraArea:I

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCameraAnimOffset:I

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    const v2, 0x7f0b0284

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaperDistance:I

    .line 130
    return-void
.end method

.method private initIcons()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    .line 151
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 576
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 572
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    .prologue
    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftSwipePossible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private rightSwipePossible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setSwipingInProgress(Z)V
    .locals 2
    .param p1, "inProgress"    # Z

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eq v0, p1, :cond_0

    .line 291
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->onSwipingStarted()V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->cancelHideTransientIndication()V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 289
    :cond_0
    return-void
.end method

.method private setTranslation(FZZ)V
    .locals 3
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 480
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 481
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 482
    .local v0, "absTranslation":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 483
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 482
    if-eqz v1, :cond_1

    .line 484
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 486
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 509
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->userActivity()V

    .line 478
    :cond_3
    return-void

    .line 479
    .end local v0    # "absTranslation":F
    :cond_4
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 480
    :cond_5
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1
.end method

.method private setViewAlpha(F)V
    .locals 3
    .param p1, "translationY"    # F

    .prologue
    .line 705
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaperDistance:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    .line 706
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    .line 707
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 704
    return-void
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 321
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 319
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 566
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z

    .prologue
    .line 544
    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 549
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 543
    :cond_1
    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 554
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->getScale(F)F

    move-result v0

    .line 555
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 556
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 557
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 553
    return-void
.end method


# virtual methods
.method public addSlideContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    return-void
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    return v0
.end method

.method public isWallpaperStart()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->initDimens()V

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->initIcons()V

    .line 587
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->initIcons()V

    .line 592
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v13, 0x3e99999a    # 0.3f

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    if-eqz v5, :cond_0

    return v6

    .line 160
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    return v6

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 164
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 166
    .local v3, "x":F
    const/4 v1, 0x0

    .line 167
    .local v1, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 276
    :cond_2
    :goto_0
    :pswitch_0
    return v7

    .line 169
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v5, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->cancelAnimation()V

    .line 172
    :cond_3
    iput v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchY:F

    .line 173
    iput v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    .line 174
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->initVelocityTracker()V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 177
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 178
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 179
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->donwInWallpaperApp(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInWallpaperArea:Z

    .line 180
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInWallpaperArea:Z

    if-eqz v5, :cond_2

    .line 181
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 185
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 186
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v0, v4, v5

    .line 190
    .local v0, "h":F
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v2, v3, v5

    .line 191
    .local v2, "w":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 192
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInCameraArea:Z

    if-eqz v5, :cond_4

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTouchSlop:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 194
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    .line 195
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v5, :cond_8

    .line 206
    :cond_4
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInWallpaperArea:Z

    if-eqz v5, :cond_5

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v5

    .line 206
    if-eqz v5, :cond_5

    .line 208
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5

    .line 209
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v5, :cond_a

    .line 219
    :cond_5
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v5, :cond_7

    .line 220
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInCameraArea:Z

    if-eqz v5, :cond_6

    .line 221
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v5, v3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr v5, v8

    invoke-direct {p0, v5, v6, v6}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 222
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setSlideContentTranslation(F)V

    .line 225
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInWallpaperArea:Z

    if-eqz v5, :cond_7

    .line 226
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v5, v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr v5, v8

    invoke-direct {p0, v5, v6, v6}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 227
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setBottomAreaTranslation(F)V

    .line 228
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setViewAlpha(F)V

    .line 229
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaperDistance:I

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    if-eqz v5, :cond_c

    .line 240
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    const/16 v8, 0x14

    invoke-virtual {v5, v3, v4, v8}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->isInWallpaperArea(FFI)Z

    move-result v5

    if-nez v5, :cond_2

    .line 241
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 196
    :cond_8
    iput v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    .line 197
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 198
    iget v8, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    sub-float v5, v8, v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    .line 200
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->cancelAnimation()V

    .line 201
    iput v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchY:F

    .line 202
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 203
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    goto/16 :goto_1

    .line 210
    :cond_a
    iput v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchX:F

    .line 211
    iput v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mInitialTouchY:F

    .line 212
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    if-eqz v5, :cond_b

    .line 215
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->cancelAnimation()V

    .line 216
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslation:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 217
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    goto/16 :goto_2

    .line 230
    :cond_c
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->resetWallpaperStartState()V

    .line 232
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 233
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setAlpha(F)V

    .line 234
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 235
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v5}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->startWallpaperActivity()V

    goto :goto_3

    .line 246
    .end local v0    # "h":F
    .end local v2    # "w":F
    :pswitch_4
    const/4 v1, 0x1

    .line 248
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    if-eqz v5, :cond_e

    .line 270
    :cond_d
    :goto_4
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 271
    if-eqz v1, :cond_f

    move v5, v6

    :goto_5
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    .line 272
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInCameraArea:Z

    .line 273
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mPointDownInWallpaperArea:Z

    goto/16 :goto_0

    .line 249
    :cond_e
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mStartWallpaper:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->resetWallpaperStartState()V

    .line 251
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 253
    const-wide/16 v8, 0x96

    .line 251
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 254
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v13, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 251
    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 255
    new-instance v8, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V

    .line 251
    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 264
    const-wide/16 v8, 0x96

    .line 262
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 265
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v13, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 262
    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_f
    move v5, v7

    .line 271
    goto :goto_5

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 600
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    .line 596
    return-void
.end method

.method public resetWallpaperStartState()V
    .locals 4

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$9;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V

    .line 724
    const-wide/16 v2, 0x12c

    .line 719
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 718
    return-void
.end method

.method public setBottomAreaTranslation(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 700
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setTranslationY(F)V

    .line 699
    return-void
.end method

.method public setBottomAreaView(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .line 695
    return-void
.end method

.method public setIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 671
    return-void
.end method

.method public setNotificationStackScroller(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "notificationStackScroller"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 691
    return-void
.end method

.method public setSlideContentTranslation(F)V
    .locals 3
    .param p1, "translationX"    # F

    .prologue
    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mSlideContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 651
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 649
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setWallpaperController(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0
    .param p1, "controller"    # Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperController:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    .line 687
    return-void
.end method

.method public setWallpaperIcon(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->mWallpaperIcon:Landroid/widget/ImageView;

    .line 710
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    .line 314
    return-void
.end method
