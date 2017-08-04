.class Lcom/meizu/common/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DECELERATIONSPEED_FAST:I = 0x32

.field private static final DECELERATIONSPEED_SLOW:I = 0x19

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAXFLINGTESTCOUNT:I = 0x4

.field private static final MAXUPDATECOUNT:I = 0x5

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x26a

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static final tag:Ljava/lang/String; = "OverScroller"


# instance fields
.field private mAverageTime:J

.field private mCoeffDeceleration:F

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field private mDuration:I

.field private mEnableOverScrollForMz:Z

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingTestCount:I

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSmoothFling:Z

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 601
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v11, 0x65

    .line 609
    new-array v11, v11, [F

    sput-object v11, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v11, 0x65

    .line 610
    new-array v11, v11, [F

    sput-object v11, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v7, 0x0

    .local v7, "x_min":F
    const/4 v10, 0x0

    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    .line 640
    if-lt v3, v11, :cond_0

    .line 667
    sget-object v11, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    .line 668
    return-void

    .line 641
    :cond_0
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 646
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    .line 647
    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 648
    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 649
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_1

    .line 653
    sget-object v11, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    const/high16 v9, 0x3f800000    # 1.0f

    .line 658
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    .line 659
    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    const/high16 v11, 0x3f800000    # 1.0f

    .line 660
    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 661
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_3

    .line 665
    sget-object v11, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 650
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_1
    cmpl-float v11, v4, v0

    if-lez v11, :cond_2

    move v6, v5

    goto/16 :goto_1

    .line 651
    :cond_2
    move v7, v5

    goto/16 :goto_1

    .line 662
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_3
    cmpl-float v11, v2, v0

    if-lez v11, :cond_4

    move v9, v8

    goto :goto_2

    .line 663
    :cond_4
    move v10, v8

    goto :goto_2
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 593
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 616
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 617
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 618
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 621
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 622
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSpringbackEnd:I

    .line 623
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSpringDistance:I

    .line 625
    iput-boolean v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 629
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 630
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/16 v1, 0x32

    .line 634
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 635
    iput-wide v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1140
    iput-boolean v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 675
    iput-boolean v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .local v0, "ppi":F
    const v1, 0x43c10b3d

    .line 677
    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 682
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 683
    iput-wide v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 684
    iput-boolean v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 685
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 703
    sub-int v2, p2, p1

    .line 704
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 705
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 706
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .local v0, "index":I
    const/16 v9, 0x64

    .line 707
    if-lt v0, v9, :cond_0

    .line 715
    :goto_0
    return-void

    .line 708
    :cond_0
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 709
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 710
    .local v8, "x_sup":F
    sget-object v9, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 711
    .local v3, "t_inf":F
    sget-object v9, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 712
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 713
    .local v5, "timeCoef":F
    iget v9, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_0
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 890
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 891
    .local v2, "durationToApex":F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 892
    .local v0, "distanceToApex":F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 893
    .local v1, "distanceToEdge":F
    add-float v4, v0, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 895
    .local v3, "totalDuration":F
    iget-wide v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v6, v3, v2

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 896
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 897
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 898
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 695
    if-gtz p0, :cond_0

    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 872
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 877
    .local v2, "l":D
    sget v4, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 878
    .local v0, "decelMinusOne":D
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 884
    .local v2, "l":D
    sget v4, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 885
    .local v0, "decelMinusOne":D
    div-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 10

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 942
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v7

    div-float v1, v4, v5

    .line 944
    .local v1, "distance":F
    iget-boolean v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 956
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    const/4 v4, 0x0

    .line 957
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 958
    iput-boolean v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const v4, 0x7fffffff

    .line 959
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v0, 0x0

    .local v0, "delta":I
    const/4 v2, 0x0

    .line 963
    .local v2, "i":I
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 966
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v4, v4

    iget v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v6, v6

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 967
    if-eqz v0, :cond_3

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    .end local v0    # "delta":I
    .end local v2    # "i":I
    :cond_0
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 947
    .local v3, "sign":F
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 949
    neg-float v4, v3

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    div-float/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 950
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v4

    .line 953
    :cond_1
    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-gtz v4, :cond_2

    neg-float v4, v1

    :goto_1
    float-to-int v4, v4

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 954
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 977
    .end local v3    # "sign":F
    :goto_2
    float-to-int v4, v1

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v4, 0x2

    .line 978
    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 979
    return-void

    .restart local v3    # "sign":F
    :cond_2
    move v4, v1

    .line 953
    goto :goto_1

    .line 968
    .end local v3    # "sign":F
    .restart local v0    # "delta":I
    .restart local v2    # "i":I
    :cond_3
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 973
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v4, v4

    iget v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v6, v6

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 974
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_2
.end method

.method private quintic(JIIJ)I
    .locals 9
    .param p1, "timePassed"    # J
    .param p3, "start"    # I
    .param p4, "distance"    # I
    .param p5, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1136
    long-to-float v1, p1

    mul-float/2addr v1, v3

    long-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 1137
    .local v0, "coeff":F
    int-to-double v2, p4

    float-to-double v4, v0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method private startAfterEdge(IIII)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 907
    move/from16 v0, p2

    if-gt p1, v0, :cond_1

    .line 912
    :cond_0
    move/from16 v0, p3

    if-gt p1, v0, :cond_2

    const/4 v11, 0x0

    .line 913
    .local v11, "positive":Z
    :goto_0
    if-nez v11, :cond_3

    move/from16 v8, p2

    .line 914
    .local v8, "edge":I
    :goto_1
    sub-int v10, p1, v8

    .line 915
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    if-gez v2, :cond_4

    const/4 v9, 0x0

    .line 916
    .local v9, "keepIncreasing":Z
    :goto_2
    if-nez v9, :cond_5

    .line 920
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    .line 921
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_8

    .line 922
    if-nez v11, :cond_6

    move v5, p1

    :goto_3
    if-nez v11, :cond_7

    move/from16 v6, p3

    :goto_4
    iget v7, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 927
    .end local v12    # "totalDistance":D
    :goto_5
    return-void

    .line 907
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_1
    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    const-string/jumbo v2, "OverScroller"

    const-string/jumbo v3, "startAfterEdge called from a valid position"

    .line 908
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 910
    return-void

    :cond_2
    const/4 v11, 0x1

    .line 912
    goto :goto_0

    .restart local v11    # "positive":Z
    :cond_3
    move/from16 v8, p3

    .line 913
    goto :goto_1

    .restart local v8    # "edge":I
    .restart local v10    # "overDistance":I
    :cond_4
    const/4 v9, 0x1

    .line 915
    goto :goto_2

    .line 918
    .restart local v9    # "keepIncreasing":Z
    :cond_5
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .restart local v12    # "totalDistance":D
    :cond_6
    move/from16 v5, p2

    .line 922
    goto :goto_3

    :cond_7
    move v6, p1

    goto :goto_4

    .line 924
    :cond_8
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_5
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 901
    if-eqz p3, :cond_0

    move v0, p3

    :goto_0
    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 902
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 903
    invoke-direct {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 904
    return-void

    .line 901
    :cond_0
    sub-int v0, p1, p2

    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 771
    iput-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 v1, 0x1

    .line 772
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 773
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 774
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 775
    sub-int v0, p1, p2

    .line 776
    .local v0, "delta":I
    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 778
    neg-int v1, v0

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 779
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 781
    iget-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v1, :cond_0

    .line 784
    int-to-double v2, v0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 786
    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x26a

    .line 782
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 982
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1011
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1012
    const/4 v0, 0x1

    return v0

    .line 985
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-lt v0, v1, :cond_0

    .line 995
    return v4

    .line 987
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 989
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 990
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 991
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 992
    invoke-direct {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1000
    :pswitch_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v0, :cond_1

    .line 1003
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1005
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v1, v4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1001
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    goto :goto_1

    .line 1008
    :pswitch_2
    return v4

    .line 982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 745
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 746
    .local v2, "time":J
    iget-wide v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 747
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 748
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 749
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 737
    return-void
.end method

.method fling(IIIII)V
    .locals 18
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    .line 789
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 790
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 791
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v0, p2

    int-to-float v9, v0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    const/4 v9, 0x0

    .line 792
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 793
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 794
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 796
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 797
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 798
    return-void

    .line 796
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    const/4 v9, 0x0

    .line 801
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v10, 0x0

    .line 804
    .local v10, "totalDistance":D
    if-nez p2, :cond_3

    .line 809
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v9, :cond_4

    .line 815
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    const/4 v9, 0x0

    .line 816
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 818
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v9, :cond_6

    .line 855
    move/from16 v0, p2

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-double v12, v9

    mul-double/2addr v12, v10

    double-to-int v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 856
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int v9, v9, p1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 859
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    move/from16 v0, p3

    if-lt v9, v0, :cond_e

    .line 864
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    move/from16 v0, p4

    if-gt v9, v0, :cond_f

    .line 869
    :goto_3
    return-void

    .line 805
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v10

    goto :goto_0

    .line 809
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    const/4 v12, 0x4

    if-lt v9, v12, :cond_2

    .line 810
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v14, 0x28

    cmp-long v9, v12, v14

    if-gtz v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_2

    .line 811
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    goto :goto_1

    .line 810
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 819
    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v14, 0x14

    cmp-long v9, v12, v14

    if-ltz v9, :cond_8

    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_9

    const/16 v9, 0x32

    .line 820
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 825
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .local v6, "absVelocity":I
    const/4 v9, 0x0

    .line 827
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    const/4 v9, 0x0

    .line 828
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    const v9, 0x3f7851ec    # 0.97f

    .line 829
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    const/4 v7, 0x0

    .local v7, "delta":I
    const/4 v8, 0x0

    .line 833
    .local v8, "i":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v9, v9

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    int-to-float v12, v12

    div-float/2addr v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 836
    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v14, v9

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v7, v12

    .line 837
    if-eqz v7, :cond_b

    .line 841
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 819
    .end local v6    # "absVelocity":I
    .end local v7    # "delta":I
    .end local v8    # "i":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 821
    :cond_9
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v14, 0x28

    cmp-long v9, v12, v14

    if-ltz v9, :cond_a

    const/4 v9, 0x1

    :goto_8
    if-nez v9, :cond_7

    const/16 v9, 0x19

    .line 822
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    goto :goto_6

    .line 821
    :cond_a
    const/4 v9, 0x0

    goto :goto_8

    .line 838
    .restart local v6    # "absVelocity":I
    .restart local v7    # "delta":I
    .restart local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iput v8, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 843
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v14, v9

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v9, v14, v9

    float-to-double v14, v9

    div-double v10, v12, v14

    const/16 v9, 0x7d0

    .line 845
    if-gt v6, v9, :cond_c

    const/16 v9, 0xc8

    .line 847
    if-lt v6, v9, :cond_d

    const/16 v9, 0xbb8

    .line 850
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 853
    :goto_9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v12, v10

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_3

    :cond_c
    const/16 v9, 0x1388

    .line 846
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    .line 848
    move-object/from16 v0, p0

    iput v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_9

    .line 860
    .end local v6    # "absVelocity":I
    .end local v7    # "delta":I
    .end local v8    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v12, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 861
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_2

    .line 865
    :cond_f
    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v9, v12, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 866
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_3
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 931
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    if-eqz v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 932
    :cond_0
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 933
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 936
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    goto :goto_0
.end method

.method public setEnableMZOverScroll(ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "smoothFling"    # Z

    .prologue
    .line 1145
    iput-boolean p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 1146
    iput-boolean p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 1147
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 740
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 742
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 671
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 672
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 752
    iput-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 754
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 755
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 757
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 758
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 760
    if-lt p1, p2, :cond_0

    .line 762
    if-gt p1, p3, :cond_1

    .line 766
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 761
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 763
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 766
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 718
    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 720
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 721
    add-int v0, p1, p2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 723
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 724
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v0, 0x0

    .line 727
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 728
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 729
    return-void
.end method

.method update()Z
    .locals 23

    .prologue
    .line 1021
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v20

    .line 1022
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v20, v6

    .line 1024
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_5

    .line 1025
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v3, :cond_1

    .line 1042
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 1024
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1026
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v3, :cond_3

    .line 1035
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-lt v3, v6, :cond_4

    .line 1040
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    goto :goto_1

    .line 1027
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    if-eqz v3, :cond_2

    .line 1028
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_2

    .line 1035
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-eq v3, v6, :cond_2

    .line 1036
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1037
    const/4 v3, 0x1

    return v3

    :cond_5
    const-wide/16 v12, 0x0

    .line 1046
    .local v12, "distance":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1108
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v3, :cond_d

    .line 1119
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1122
    :cond_6
    const/4 v3, 0x1

    return v3

    .line 1048
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v3, :cond_8

    .line 1065
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v3, :cond_a

    .line 1070
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1071
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v3, v6

    float-to-double v12, v3

    .line 1072
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1073
    double-to-float v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto :goto_3

    .line 1049
    :cond_8
    long-to-float v3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v6, v6

    div-float v16, v3, v6

    .local v16, "t":F
    const/high16 v3, 0x42c80000    # 100.0f

    .line 1050
    mul-float v3, v3, v16

    float-to-int v14, v3

    .local v14, "index":I
    const/high16 v11, 0x3f800000    # 1.0f

    .local v11, "distanceCoef":F
    const/16 v22, 0x0

    .local v22, "velocityCoef":F
    const/16 v3, 0x64

    .line 1053
    if-lt v14, v3, :cond_9

    .line 1062
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-double v12, v3

    .line 1063
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_3

    .line 1054
    :cond_9
    int-to-float v3, v14

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v18, v3, v6

    .line 1055
    .local v18, "t_inf":F
    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v19, v3, v6

    .line 1056
    .local v19, "t_sup":F
    sget-object v3, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v3, v14

    .line 1057
    .local v2, "d_inf":F
    sget-object v3, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v6, v14, 0x1

    aget v10, v3, v6

    .line 1058
    .local v10, "d_sup":F
    sub-float v3, v10, v2

    sub-float v6, v19, v18

    div-float v22, v3, v6

    .line 1059
    sub-float v3, v16, v18

    mul-float v3, v3, v22

    add-float v11, v2, v3

    goto :goto_5

    .line 1066
    .end local v2    # "d_inf":F
    .end local v10    # "d_sup":F
    .end local v11    # "distanceCoef":F
    .end local v14    # "index":I
    .end local v16    # "t":F
    .end local v18    # "t_inf":F
    .end local v19    # "t_sup":F
    .end local v22    # "velocityCoef":F
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_7

    .line 1067
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    int-to-long v8, v3

    div-long v8, v4, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    goto/16 :goto_4

    .line 1080
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v3, :cond_b

    .line 1085
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1086
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v3, v6

    float-to-double v12, v3

    .line 1087
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1088
    double-to-float v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_3

    .line 1081
    :cond_b
    long-to-float v3, v4

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v16, v3, v6

    .line 1082
    .restart local v16    # "t":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v6, v16

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1083
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v6, v16

    mul-float v6, v6, v16

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v12, v3

    goto/16 :goto_3

    .line 1095
    .end local v16    # "t":F
    :pswitch_2
    long-to-float v3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v6, v6

    div-float v16, v3, v6

    .line 1096
    .restart local v16    # "t":F
    mul-float v17, v16, v16

    .line 1097
    .local v17, "t2":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v15

    .line 1098
    .local v15, "sign":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v3, :cond_c

    .line 1101
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v17

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v16

    mul-float v7, v7, v17

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-double v12, v3

    .line 1102
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v3, v6

    move/from16 v0, v16

    neg-float v6, v0

    add-float v6, v6, v17

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_3

    .line 1099
    :cond_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v8, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->quintic(JIIJ)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-double v12, v3

    goto/16 :goto_3

    .line 1109
    .end local v15    # "sign":F
    .end local v16    # "t":F
    .end local v17    # "t2":F
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    if-eqz v3, :cond_f

    .line 1113
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v6, v12

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1114
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ne v3, v6, :cond_6

    .line 1115
    const/4 v3, 0x0

    return v3

    .line 1109
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v3, :cond_e

    .line 1110
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1111
    const/4 v3, 0x1

    return v3

    .line 1046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 688
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 689
    return-void
.end method
