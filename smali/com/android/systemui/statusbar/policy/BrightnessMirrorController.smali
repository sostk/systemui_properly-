.class public Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"


# instance fields
.field public TRANSITION_DURATION_IN:J

.field public TRANSITION_DURATION_OUT:J

.field private final mBrightnessMirror:Landroid/view/View;

.field private final mInt2Cache:[I

.field private final mPanelHolder:Landroid/view/View;

.field private final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 2
    .param p1, "statusBarWindow"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    const-wide/16 v0, 0xc8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    .line 36
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    .line 44
    const v0, 0x7f0f0281

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 45
    const v0, 0x7f0f0282

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 46
    const v0, 0x7f0f0285

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mPanelHolder:Landroid/view/View;

    .line 43
    return-void
.end method

.method private inAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 4
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 91
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private outAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 4
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    const-wide/16 v2, 0x0

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMirror()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object v0
.end method

.method public hideMirror()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->updateMaskingOnBrightMirrorChange(Z)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->useStaticBlurDrawable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const v1, 0x3ed1da16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->setBlurIntensity(F)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mPanelHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->inAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 64
    return-void
.end method

.method public setLocation(Landroid/view/View;)V
    .locals 5
    .param p1, "original"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v1, v2, v4

    .line 99
    .local v1, "originalY":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v0, v2, v4

    .line 102
    .local v0, "mirrorY":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 103
    int-to-float v4, v1

    .line 102
    add-float/2addr v3, v4

    .line 103
    int-to-float v4, v0

    .line 102
    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 96
    return-void
.end method

.method public showMirror()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/keyguard/auto_color/ColorMasking;->updateMaskingOnBrightMirrorChange(Z)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->useStaticBlurDrawable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->setBlurIntensity(F)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mPanelHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->outAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 49
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    const v3, 0x7f0b02c2

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    const v3, 0x7f0b03a4

    .line 120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    const v3, 0x7f10005e

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 127
    const v3, 0x7f0b03cd

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 128
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 129
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 128
    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    return-void

    .line 117
    .end local v1    # "padding":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    const v3, 0x7f0b02c1

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method
