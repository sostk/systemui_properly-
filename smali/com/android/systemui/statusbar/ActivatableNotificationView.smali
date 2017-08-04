.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$1;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mAppearPaint:Landroid/graphics/Paint;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mDark:Z

.field private mDimmed:Z

.field private mDownX:F

.field private mDownY:F

.field private mDrawingAppearAnimation:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBelowSpeedBump:Z

.field private final mLegacyColor:I

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private final mNormalColor:I

.field private final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private final mRoundedRectCornerRadius:I

.field private mShowingLegacyBackground:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTintedRippleColor:I

.field private final mTouchSlop:F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 91
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 93
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 128
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    .line 132
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    .line 134
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 187
    new-instance v1, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    const v2, 0x7f10001e

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 148
    .local v0, "scaleFactor":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 147
    mul-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    .line 150
    const v1, 0x10c000d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 149
    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 151
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v6, v5, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 153
    const v1, 0x10c000e

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 152
    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v5, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 158
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    const v2, 0x7f0b03e8

    .line 159
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    const v2, 0x7f0a00e6

    .line 163
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    const v2, 0x7f0a00ea

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 168
    const v2, 0x7f0a00e9

    .line 167
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    const v2, 0x7f0a00e8

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    .line 142
    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 515
    return-void
.end method

.method private drawAppearRect(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 756
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v1, v1

    .line 758
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    .line 757
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 759
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 754
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 724
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v2, :cond_2

    .line 725
    if-eqz p1, :cond_3

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 729
    :cond_0
    return-void

    .line 731
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    .line 732
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 731
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 733
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 734
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->draw(Landroid/graphics/Canvas;)V

    .line 735
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 736
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 735
    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 740
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    .line 723
    :cond_2
    return-void

    .line 738
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method private fadeDimmedBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 457
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 458
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 459
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 464
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 465
    .local v2, "startAlpha":F
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 466
    .local v1, "endAlpha":F
    :goto_2
    const/16 v0, 0xdc

    .line 468
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_3

    .line 469
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 470
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-int v0, v4

    .line 471
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 472
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 473
    if-gtz v0, :cond_3

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 475
    return-void

    .line 462
    .end local v0    # "duration":I
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 464
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "startAlpha":F
    goto :goto_1

    .line 465
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "endAlpha":F
    goto :goto_2

    .line 478
    .restart local v0    # "duration":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 480
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 479
    iput-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 481
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 482
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 483
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 494
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 456
    return-void
.end method

.method private fadeInFromDark(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x3f6e147b    # 0.93f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 428
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 429
    .local v0, "background":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 432
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 433
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 438
    const-wide/16 v2, 0xaa

    .line 434
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 434
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 441
    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    .line 434
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 427
    return-void

    .line 428
    .end local v0    # "background":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .restart local v0    # "background":Landroid/view/View;
    goto :goto_0
.end method

.method private getBackgroundColor()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 694
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    return v0

    .line 695
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    .line 696
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    return v0

    .line 697
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    .line 698
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    return v0

    .line 700
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    return v0
.end method

.method private getRippleColor()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 706
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    .line 707
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    .line 708
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    .line 709
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    .line 710
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    return v0

    .line 712
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    return v0
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 222
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return v7

    .line 224
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    .line 226
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 227
    return v6

    .line 230
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPressed(Z)V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 237
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPressed(Z)V

    .line 239
    return v6

    .line 243
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v2, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPressed(Z)V

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performClick()Z

    move-result v1

    .line 249
    .local v1, "performed":Z
    if-eqz v1, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 254
    .end local v1    # "performed":Z
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_1

    .line 261
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 263
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPressed(Z)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 349
    :cond_0
    return v0
.end method

.method private makeActive()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 272
    :cond_0
    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 12
    .param p1, "reverse"    # Z

    .prologue
    const-wide/16 v10, 0xdc

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 285
    .local v5, "widthHalf":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getActualHeight()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 286
    .local v2, "heightHalf":I
    mul-int v8, v5, v5

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 288
    .local v4, "radius":F
    if-eqz p1, :cond_1

    .line 289
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v8, v5, v2, v4, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 295
    .local v1, "animator":Landroid/animation/Animator;
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 298
    if-nez p1, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 300
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 305
    .local v0, "alphaInterpolator":Landroid/view/animation/Interpolator;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 307
    if-eqz p1, :cond_3

    .line 308
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 309
    new-instance v8, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 322
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 323
    if-eqz p1, :cond_4

    .line 322
    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 280
    return-void

    .line 292
    .end local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v8, v5, v2, v6, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 302
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 303
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    sget-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 319
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 320
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_4
    move v6, v7

    .line 323
    goto :goto_3
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .locals 5
    .param p1, "isAppearing"    # Z
    .param p2, "translationDirection"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 570
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 572
    if-eqz p1, :cond_3

    .line 573
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 574
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 582
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 583
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 585
    const/high16 v0, 0x3f800000    # 1.0f

    .line 591
    .local v0, "targetValue":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 592
    const/4 v2, 0x1

    aput v0, v1, v2

    .line 591
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 595
    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 594
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 596
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 605
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    .line 609
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 611
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v2, p0, p7}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 565
    return-void

    .line 576
    .end local v0    # "targetValue":F
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 577
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 587
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 589
    const/4 v0, 0x0

    .restart local v0    # "targetValue":F
    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 678
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    .line 679
    .local v0, "backgroundColor":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 680
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 681
    .local v1, "contentAlphaProgress":F
    div-float/2addr v1, v4

    .line 682
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 683
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 684
    sub-float v3, v4, v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 685
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 686
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 684
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 687
    .local v2, "sourceColor":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 688
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 677
    .end local v1    # "contentAlphaProgress":F
    .end local v2    # "sourceColor":I
    :cond_0
    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    .prologue
    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 640
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    .line 641
    .local v3, "inverseFraction":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 642
    .local v8, "translationFraction":F
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    .line 643
    .local v7, "translateYTotalAmount":F
    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 646
    sub-float v10, v3, v12

    .line 647
    const v11, 0x3f4ccccd    # 0.8f

    .line 646
    div-float v9, v10, v11

    .line 648
    .local v9, "widthFraction":F
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 649
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    .line 652
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    .line 655
    .local v5, "right":F
    sub-float v10, v3, v12

    div-float v2, v10, v13

    .line 657
    .local v2, "heightFraction":F
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 658
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    .line 663
    .local v0, "actualHeight":I
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    .line 664
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    .line 666
    .local v1, "bottom":F
    mul-float v6, v1, v2

    .line 672
    .local v6, "top":F
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 673
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    .line 674
    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    .line 673
    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    .line 639
    return-void

    .line 668
    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    .line 670
    .restart local v6    # "top":F
    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    .restart local v1    # "bottom":F
    goto :goto_0
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 497
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateBackgroundTint()V
    .locals 3

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    .line 413
    .local v0, "color":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    .line 414
    .local v1, "rippleColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne v0, v2, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 420
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 411
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez v0, :cond_0

    .line 748
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 746
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->drawAppearRect(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    .line 204
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    .line 211
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public makeInactive(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 334
    if-eqz p1, :cond_3

    .line 335
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 340
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 331
    return-void

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    .line 176
    const v0, 0x7f0f0257

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 177
    const v0, 0x7f0f0258

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0204c5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0204c4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 174
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 525
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    .line 524
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAddAnimation(JJ)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v2, 0x1

    .line 558
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 560
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 557
    :cond_0
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 548
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 550
    const-wide/16 v4, 0x0

    .line 549
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    if-eqz p4, :cond_0

    .line 552
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(I)V

    .line 768
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setShowingLegacyBackground(Z)V

    .line 769
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBelowSpeedBump(Z)V

    .line 766
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 531
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 532
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 530
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1
    .param p1, "below"    # Z

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 398
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 395
    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 539
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 538
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    .line 370
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 383
    :goto_0
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    .line 364
    :goto_1
    return-void

    .line 374
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_1
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    .line 355
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    .line 356
    if-eqz p2, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0
    .param p1, "onActivatedListener"    # Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .line 762
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 389
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 406
    return-void
.end method
