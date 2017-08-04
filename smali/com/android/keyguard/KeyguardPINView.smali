.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardPINView.java"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private final mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mDivider:Landroid/view/View;

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPINView;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x3f19999a    # 0.6f

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 48
    new-instance v0, Lcom/android/keyguard/DisappearAnimationUtils;

    .line 49
    const-wide/16 v2, 0x7d

    .line 51
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    const v5, 0x10c000f

    .line 50
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    move v5, v4

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    .line 52
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    .line 45
    return-void
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->setClipChildren(Z)V

    .line 152
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 74
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    .line 75
    sget v0, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    .line 76
    sget v0, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    .line 77
    sget v0, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    .line 78
    sget v0, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    .line 79
    sget v0, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDivider:Landroid/view/View;

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [[Landroid/view/View;

    .line 81
    new-array v1, v6, [Landroid/view/View;

    .line 82
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v2, v1, v3

    aput-object v7, v1, v4

    aput-object v7, v1, v5

    .line 81
    aput-object v1, v0, v3

    .line 84
    new-array v1, v6, [Landroid/view/View;

    .line 85
    sget v2, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    .line 86
    sget v2, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    .line 84
    aput-object v1, v0, v4

    .line 88
    new-array v1, v6, [Landroid/view/View;

    .line 89
    sget v2, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    .line 90
    sget v2, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    .line 88
    aput-object v1, v0, v5

    .line 92
    new-array v1, v6, [Landroid/view/View;

    .line 93
    sget v2, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    .line 94
    sget v2, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    .line 92
    aput-object v1, v0, v6

    .line 96
    new-array v1, v6, [Landroid/view/View;

    .line 97
    aput-object v7, v1, v3

    sget v2, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    .line 96
    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 99
    new-array v1, v6, [Landroid/view/View;

    .line 100
    aput-object v7, v1, v3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    .line 99
    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 80
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 71
    return-void
.end method

.method protected resetState()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->faceunlock_multiple_failures:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 56
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setAlpha(F)V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    .line 118
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 119
    const-wide/16 v2, 0x1f4

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 123
    new-instance v2, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    const-wide/16 v2, 0x118

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v1, v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 140
    new-instance v2, Lcom/android/keyguard/KeyguardPINView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPINView$2;-><init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/DisappearAnimationUtils;->startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method
