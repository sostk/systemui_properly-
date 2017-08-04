.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static final sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mClockNotificationsMarginMax:I

.field private mClockNotificationsMarginMin:I

.field private mClockYFractionMax:F

.field private mClockYFractionMin:F

.field private mDensity:F

.field private mEmptyDragAmount:F

.field private mExpandedHeight:F

.field private mHeight:I

.field public mKeyguardDateTimeViewY:I

.field private mKeyguardStatusHeight:I

.field private mMaxKeyguardNotifications:I

.field private mMaxPanelHeight:I

.field private mMoreCardNotificationAmount:F

.field private mNotificationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 68
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f600000    # 0.875f

    const v3, 0x3f19999a    # 0.6f

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 70
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 29
    return-void
.end method

.method private getClockAlpha(F)F
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 191
    const/high16 v1, 0x3f400000    # 0.75f

    .line 192
    sub-float v1, p1, v1

    .line 193
    const v2, 0x3e4ccccc    # 0.19999999f

    .line 192
    div-float v0, v1, v2

    .line 194
    .local v0, "alpha":F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private getClockNotificationsPadding()I
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 140
    .local v0, "t":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 141
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getClockScale(III)F
    .locals 10
    .param p1, "notificationPadding"    # I
    .param p2, "clockY"    # I
    .param p3, "startPadding"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    const/high16 v3, 0x40c00000    # 6.0f

    .line 129
    .local v3, "scaleMultiplier":F
    :goto_0
    int-to-float v4, p2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v2, v4, v5

    .line 130
    .local v2, "scaleEnd":F
    int-to-float v4, p1

    sub-float v0, v4, v2

    .line 131
    .local v0, "distanceToScaleEnd":F
    int-to-float v4, p3

    sub-float/2addr v4, v2

    div-float v1, v0, v4

    .line 132
    .local v1, "progress":F
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 133
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 134
    float-to-double v4, v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    div-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-double v6, v6

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 135
    return v1

    .line 128
    .end local v0    # "distanceToScaleEnd":F
    .end local v1    # "progress":F
    .end local v2    # "scaleEnd":F
    .end local v3    # "scaleMultiplier":F
    :cond_0
    const/high16 v3, 0x40a00000    # 5.0f

    .restart local v3    # "scaleMultiplier":F
    goto :goto_0
.end method

.method private getClockYExpansionAdjustment()F
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getNotificationAmountT()F
    .locals 3

    .prologue
    .line 201
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    int-to-float v0, v0

    .line 202
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    add-float/2addr v1, v2

    .line 201
    div-float/2addr v0, v1

    return v0
.end method

.method private getTopPaddingAdjMultiplier()F
    .locals 1

    .prologue
    .line 183
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method


# virtual methods
.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 80
    const v0, 0x7f0b03d9

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    .line 82
    const v0, 0x7f0b03da

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    .line 83
    const v0, 0x7f110001

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    .line 84
    const/high16 v0, 0x7f110000

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    .line 86
    const v0, 0x7f0b0390

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 87
    const v1, 0x7f0b038d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 86
    div-float/2addr v0, v1

    .line 85
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    .line 88
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    .line 90
    const v0, 0x7f0b0356

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    .line 78
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 9
    .param p1, "result"    # Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .prologue
    .line 108
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardDateTimeViewY:I

    .line 110
    .local v4, "y":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionAdjustment()F

    move-result v0

    .line 111
    .local v0, "clockAdjustment":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getTopPaddingAdjMultiplier()F

    move-result v3

    .line 112
    .local v3, "topPaddingAdjMultiplier":F
    mul-float v5, v0, v3

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockNotificationsPadding:I

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v5

    .line 117
    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 116
    add-int v1, v5, v6

    .line 118
    .local v1, "clockNotificationsPadding":I
    add-int v2, v4, v1

    .line 119
    .local v2, "padding":I
    iput v4, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 120
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v5, v2

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 121
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 122
    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v7, v8

    .line 121
    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockScale(III)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 124
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(F)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 105
    return-void
.end method

.method public setup(IIFIIIF)V
    .locals 0
    .param p1, "maxKeyguardNotifications"    # I
    .param p2, "maxPanelHeight"    # I
    .param p3, "expandedHeight"    # F
    .param p4, "notificationCount"    # I
    .param p5, "height"    # I
    .param p6, "keyguardStatusHeight"    # I
    .param p7, "emptyDragAmount"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    .line 97
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    .line 98
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    .line 99
    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    .line 100
    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    .line 101
    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 102
    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    .line 95
    return-void
.end method
