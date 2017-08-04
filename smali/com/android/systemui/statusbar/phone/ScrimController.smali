.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field private mAnimationStarted:Z

.field private mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

.field private mBlurInterpolator:Landroid/view/animation/Interpolator;

.field private mBouncerShowing:Z

.field private mCurrentBehindAlpha:F

.field private mCurrentInFrontAlpha:F

.field private mDarkenWhileDragging:Z

.field private mDozeBehindAlpha:F

.field private mDozeInFrontAlpha:F

.field private mDozing:Z

.field private mDurationOverride:J

.field private mExpanding:Z

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBlurEnabled:Z

.field private mKeyguardShowing:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimSrcEnabled:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V
    .locals 6
    .param p1, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3, "scrimSrcEnabled"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 65
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e851eb8    # 0.26f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlurInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 82
    const v1, 0x10c000e

    .line 81
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    .line 76
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0
.end method

.method private getDozeAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    goto :goto_0
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private scheduleUpdate()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 162
    return-void
.end method

.method private setCurrentScrimAlpha(Landroid/view/View;F)V
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 256
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 254
    :goto_0
    return-void

    .line 258
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0
.end method

.method private setScrimBehindColor(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 217
    return-void
.end method

.method private setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 3
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "alpha"    # F

    .prologue
    const v2, 0x7f0f004b

    .line 233
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ScrimView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "runningAnim":Ljava/lang/Object;
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 235
    check-cast v0, Landroid/animation/ValueAnimator;

    .end local v0    # "runningAnim":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 238
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v1, :cond_1

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 232
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    .line 242
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V

    goto :goto_0
.end method

.method private setScrimInFrontColor(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 223
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    .line 221
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 7
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "target"    # F

    .prologue
    const/4 v6, 0x1

    .line 272
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 273
    .local v1, "current":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p2, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 282
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 284
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 296
    const v2, 0x7f0f004b

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 297
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    .line 271
    return-void

    .line 284
    :cond_0
    const-wide/16 v2, 0xdc

    goto :goto_0
.end method

.method private updateScrimBehindDrawingMode()V
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 333
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    .local v0, "asSrc":Z
    goto :goto_0
.end method

.method private updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 7
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 264
    .local v1, "alpha1":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeAlpha(Landroid/view/View;)F

    move-result v2

    .line 265
    .local v2, "alpha2":F
    sub-float v3, v6, v1

    sub-float v4, v6, v2

    mul-float/2addr v3, v4

    sub-float v0, v6, v3

    .line 267
    .local v0, "alpha":F
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    .line 262
    return-void
.end method

.method private updateScrimKeyguard()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f400000    # 0.75f

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 185
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v2, :cond_0

    .line 186
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 187
    .local v0, "behindFraction":F
    sub-float v1, v4, v0

    .line 188
    .local v1, "fraction":F
    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 189
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 190
    mul-float v2, v1, v5

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 191
    const v2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 184
    .end local v0    # "behindFraction":F
    .end local v1    # "fraction":F
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v2, :cond_1

    .line 193
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 194
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    .line 196
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    .restart local v1    # "fraction":F
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 199
    const v2, 0x3eb33334    # 0.35000002f

    .line 198
    mul-float/2addr v2, v1

    .line 200
    const v3, 0x3e4ccccd    # 0.2f

    .line 198
    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrimNormal()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 205
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 207
    .local v0, "frac":F
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v0, v2, v3

    .line 208
    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    .line 209
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 204
    :goto_0
    return-void

    .line 212
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    double-to-float v1, v2

    .line 213
    .local v1, "k":F
    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrims()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 174
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 181
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 171
    return-void

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v0, :cond_2

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_0

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    .line 177
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0
.end method


# virtual methods
.method public animateBlurAlphaIn()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 358
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const-wide/16 v2, 0xfa

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 357
    :cond_0
    return-void
.end method

.method public animateBlurAlphaInIfNotRunning()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const-wide/16 v2, 0xfa

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlphaIfNotRunning(FJLandroid/view/animation/Interpolator;)V

    .line 363
    :cond_0
    return-void
.end method

.method public animateBlurAlphaOut(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    const/4 v5, 0x0

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f451eb8    # 0.77f

    const v4, 0x3ed70a3d    # 0.42f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5, p1, p2, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 369
    :cond_0
    return-void
.end method

.method public animateGoingToFullShade(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 133
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 134
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 132
    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 125
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 126
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 127
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 128
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 123
    return-void
.end method

.method public getDozeBehindAlpha()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    return v0
.end method

.method public getDozeInFrontAlpha()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    return v0
.end method

.method public isStaticBlurMode()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->useStaticBlurDrawable()Z

    move-result v0

    return v0
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    .line 106
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 307
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 309
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 310
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 316
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 318
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->animateBlurAlphaIn()V

    .line 98
    return-void
.end method

.method public setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V
    .locals 2
    .param p1, "backDropView"    # Lcom/android/systemui/statusbar/BackDropView;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    .line 322
    return-void
.end method

.method public setBlur(ZZ)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "forceStatic"    # Z

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setAlpha(F)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->blurUnderMeRectLowerLayer(ZZ)V

    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    .line 343
    :cond_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 117
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDozeBehindAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 149
    return-void
.end method

.method public setDozeInFrontAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 144
    return-void
.end method

.method public setDozing(Z)V
    .locals 0
    .param p1, "dozing"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 139
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->setAlpha(F)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isStaticBlurMode()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ScrimView;->blurUnderMeRectLowerLayer(ZZ)V

    .line 92
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 86
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 112
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 110
    :cond_0
    return-void
.end method

.method public setStaticBlurMode(Z)V
    .locals 1
    .param p1, "staticBlurMode"    # Z

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setStaticBlurMode(Z)V

    .line 351
    :cond_0
    return-void
.end method
