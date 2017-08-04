.class public Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# static fields
.field static px:[F

.field static sDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field static sMaxDimScale:F

.field static xp:[F


# instance fields
.field interpolatorForScale:Landroid/view/animation/Interpolator;

.field interpolatorForScale2:Landroid/view/animation/Interpolator;

.field interpolatorForScale3:Landroid/view/animation/Interpolator;

.field interpolatorForZ:Landroid/view/animation/Interpolator;

.field mBetweenAffiliationOffset:I

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mInitialScrollP:F

.field mMaxScrollP:F

.field mMinScrollP:F

.field public mStackRect:Landroid/graphics/Rect;

.field mStackVisibleRect:Landroid/graphics/Rect;

.field mTaskProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flyme/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;

.field mViewRect:Landroid/graphics/Rect;

.field mWithinAffiliationOffset:I

.field testInterpplater:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 496
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->sMaxDimScale:F

    .line 497
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->sDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/flyme/systemui/recents/RecentsConfiguration;)V
    .locals 5
    .param p1, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    .line 408
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->interpolatorForScale:Landroid/view/animation/Interpolator;

    .line 409
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->interpolatorForScale3:Landroid/view/animation/Interpolator;

    .line 410
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->interpolatorForScale2:Landroid/view/animation/Interpolator;

    .line 471
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->interpolatorForZ:Landroid/view/animation/Interpolator;

    .line 487
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->testInterpplater:Landroid/view/animation/Interpolator;

    .line 84
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 83
    return-void
.end method

.method static curveProgressToDim(F)F
    .locals 5
    .param p0, "p"    # F

    .prologue
    const v4, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    .line 500
    cmpg-float v1, p0, v2

    if-gez v1, :cond_1

    .line 501
    const/4 p0, 0x0

    .line 505
    :cond_0
    :goto_0
    const v0, 0x3f19999a    # 0.6f

    .line 506
    .local v0, "del":F
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_2

    .line 507
    return v2

    .line 502
    .end local v0    # "del":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    .line 503
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 509
    .restart local v0    # "del":F
    :cond_2
    sget v1, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->sMaxDimScale:F

    sget-object v2, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->sDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    sub-float v3, v4, p0

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    return v1
.end method

.method static curveProgressToIconAlpha(F)F
    .locals 4
    .param p0, "p"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    .line 529
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    .line 530
    const/4 p0, 0x0

    .line 534
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_2

    .line 535
    return v3

    .line 531
    :cond_1
    cmpl-float v0, p0, v3

    if-lez v0, :cond_0

    .line 532
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 537
    :cond_2
    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3

    .line 538
    return v1

    .line 540
    :cond_3
    div-float v0, p0, v2

    return v0
.end method

.method static curveProgressToTextAlpha(F)F
    .locals 4
    .param p0, "p"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v1, 0x3e99999a    # 0.3f

    .line 514
    cmpg-float v0, p0, v2

    if-gez v0, :cond_1

    .line 515
    const/4 p0, 0x0

    .line 519
    :cond_0
    :goto_0
    const v0, 0x3f19999a    # 0.6f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_2

    .line 520
    return v3

    .line 516
    :cond_1
    cmpl-float v0, p0, v3

    if-lez v0, :cond_0

    .line 517
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 522
    :cond_2
    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3

    .line 523
    return v2

    .line 525
    :cond_3
    sub-float v0, p0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getShadowAlphaDependP(F)F
    .locals 2
    .param p0, "p"    # F

    .prologue
    const v1, 0x3f19999a    # 0.6f

    .line 548
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 549
    const/high16 p0, 0x3f800000    # 1.0f

    .line 553
    :cond_0
    :goto_0
    cmpg-float v0, p0, v1

    if-gez v0, :cond_2

    .line 554
    const/4 p0, 0x0

    .line 555
    return p0

    .line 550
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 551
    const/4 p0, 0x0

    goto :goto_0

    .line 557
    :cond_2
    sub-float/2addr p0, v1

    .line 558
    const v0, 0x3ecccccc    # 0.39999998f

    div-float/2addr p0, v0

    .line 559
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    .line 560
    return p0
.end method

.method public static initializeCurve()V
    .locals 14

    .prologue
    .line 342
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    if-eqz v8, :cond_0

    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    if-eqz v8, :cond_0

    return-void

    .line 343
    :cond_0
    const/16 v8, 0xfb

    new-array v8, v8, [F

    sput-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    .line 344
    const/16 v8, 0xfb

    new-array v8, v8, [F

    sput-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    .line 347
    const/16 v8, 0xfb

    new-array v2, v8, [F

    .line 349
    .local v2, "fx":[F
    const/4 v6, 0x0

    .line 350
    .local v6, "x":F
    const/4 v7, 0x0

    .local v7, "xStep":I
    :goto_0
    const/16 v8, 0xfa

    if-gt v7, v8, :cond_1

    .line 351
    invoke-static {v6}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->logFunc(F)F

    move-result v8

    aput v8, v2, v7

    .line 348
    const v8, 0x3b83126f    # 0.004f

    .line 352
    add-float/2addr v6, v8

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v4, 0x0

    .line 356
    .local v4, "pLength":F
    const/16 v8, 0xfb

    new-array v0, v8, [F

    .line 357
    .local v0, "dx":[F
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v0, v9

    .line 358
    const/4 v7, 0x1

    :goto_1
    const/16 v8, 0xfa

    if-ge v7, v8, :cond_2

    .line 359
    aget v8, v2, v7

    add-int/lit8 v9, v7, -0x1

    aget v9, v2, v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3f70624de0000000L    # 0.004000000189989805

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v0, v7

    .line 360
    aget v8, v0, v7

    add-float/2addr v4, v8

    .line 358
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 363
    :cond_2
    const/4 v3, 0x0

    .line 364
    .local v3, "p":F
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 365
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xfa

    aput v9, v8, v10

    .line 366
    const/4 v7, 0x1

    :goto_2
    const/16 v8, 0xfa

    if-gt v7, v8, :cond_3

    .line 367
    aget v8, v0, v7

    div-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v3, v8

    .line 368
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aput v3, v8, v7

    .line 366
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 372
    :cond_3
    const/4 v7, 0x0

    .line 373
    const/4 v3, 0x0

    .line 374
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 375
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xfa

    aput v9, v8, v10

    .line 376
    const/4 v5, 0x0

    .local v5, "pStep":I
    :goto_3
    const/16 v8, 0xfa

    if-ge v5, v8, :cond_7

    .line 378
    :goto_4
    const/16 v8, 0xfa

    if-ge v7, v8, :cond_4

    .line 379
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v8, v8, v7

    cmpl-float v8, v8, v3

    if-lez v8, :cond_5

    .line 383
    :cond_4
    if-nez v7, :cond_6

    .line 384
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v9, 0x0

    aput v9, v8, v5

    .line 348
    :goto_5
    const v8, 0x3b83126f    # 0.004f

    .line 391
    add-float/2addr v3, v8

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 380
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 387
    :cond_6
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v9, v7, -0x1

    aget v8, v8, v9

    sub-float v8, v3, v8

    sget-object v9, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v9, v9, v7

    sget-object v10, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v11, v7, -0x1

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float v1, v8, v9

    .line 388
    .local v1, "fraction":F
    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 348
    const v9, 0x3b83126f    # 0.004f

    .line 388
    mul-float v6, v8, v9

    .line 389
    sget-object v8, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aput v6, v8, v5

    goto :goto_5

    .line 341
    .end local v1    # "fraction":F
    :cond_7
    return-void
.end method

.method static logFunc(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 401
    const-wide v0, 0x40a7700000000000L    # 3000.0

    invoke-static {p0}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->reverse(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0
.end method

.method static reverse(F)F
    .locals 2
    .param p0, "x"    # F

    .prologue
    .line 397
    neg-float v0, p0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method ProgressToReal(F)F
    .locals 2
    .param p1, "p"    # F

    .prologue
    .line 489
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->testInterpplater:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .locals 10
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    const v9, 0x3d8f5c29    # 0.07f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 130
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iput v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    iput v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 135
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, "pAtFrontMostCardTop":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 142
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 143
    if-le v3, v8, :cond_1

    .line 144
    if-nez v0, :cond_3

    .line 145
    sub-float/2addr v1, v9

    .line 150
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/model/Task;

    .line 151
    .local v2, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    if-ge v0, v3, :cond_2

    const v4, 0x3e99999a    # 0.3f

    add-float/2addr v1, v4

    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_3
    if-ne v0, v8, :cond_1

    .line 147
    add-float/2addr v1, v9

    goto :goto_1

    .line 156
    :cond_4
    sub-float v4, v1, v7

    const v5, 0x3f666667    # 0.90000004f

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 158
    const v4, -0x40f33333    # -0.55f

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 160
    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    .line 128
    :goto_2
    return-void

    .line 163
    :cond_5
    const v4, -0x40f0a3d7    # -0.56f

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    .line 164
    iget v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    iput v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    goto :goto_2
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const v8, 0x3f28f5c3    # 0.66f

    .line 103
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 108
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPx:I

    .line 109
    .local v1, "widthPadding":I
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    sub-int v0, v2, v3

    .line 110
    .local v0, "heightPadding":I
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 114
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskFootHeight:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 116
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskFootHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    .line 122
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 120
    const v3, 0x3f4ccccd    # 0.8f

    .line 122
    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    .line 101
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;)",
            "Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    const/4 v6, 0x1

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v6, :cond_0

    .line 174
    new-instance v5, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    invoke-direct {v5, p0, v6, v6}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V

    return-object v5

    .line 178
    :cond_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 179
    .local v4, "taskHeight":I
    const/4 v1, 0x0

    .line 180
    .local v1, "numVisibleTasks":I
    const/4 v2, 0x0

    .line 182
    .local v2, "numVisibleThumbnails":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 183
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/model/Task;

    .line 184
    .local v3, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_1
    new-instance v5, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    invoke-direct {v5, p0, v1, v2}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;-><init>(Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V

    return-object v5
.end method

.method curveProgressToAlpha(F)F
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 425
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method curveProgressToScale(F)F
    .locals 4
    .param p1, "p"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 413
    cmpl-float v2, p1, v3

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 415
    :cond_0
    const v2, 0x3f19999a    # 0.6f

    sub-float v1, p1, v2

    .line 416
    .local v1, "del":F
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 417
    .local v0, "compare":I
    if-nez v0, :cond_1

    .line 418
    return v3

    .line 420
    :cond_1
    const v2, 0x3de147ae    # 0.11f

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    return v2
.end method

.method curveProgressToScreenX(F)I
    .locals 2
    .param p1, "p"    # F

    .prologue
    .line 450
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 451
    const/4 p1, 0x0

    .line 455
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->ProgressToReal(F)F

    move-result v0

    .line 456
    .local v0, "real":F
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 452
    .end local v0    # "real":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 453
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method curveProgressToScreenY(F)I
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method curveProgressToScreenZ(F)F
    .locals 6
    .param p1, "p"    # F

    .prologue
    .line 473
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 474
    const/4 p1, 0x0

    .line 479
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 480
    .local v1, "minZ":I
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v0, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 481
    .local v0, "maxZ":I
    int-to-float v2, v1

    int-to-float v3, v1

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->interpolatorForZ:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-int v5, v0, v1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 475
    .end local v0    # "maxZ":I
    .end local v1    # "minZ":I
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 476
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method getStackScrollForTask(Lcom/flyme/systemui/recents/model/Task;)F
    .locals 2
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getStackTransform(FFLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 5
    .param p1, "taskProgress"    # F
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 309
    sub-float v0, p1, p2

    .line 311
    .local v0, "pTaskRelative":F
    const v1, 0x3faf5c29    # 1.37f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 312
    sub-float v1, v0, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    add-float v1, v0, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 313
    :cond_0
    invoke-virtual {p3}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->reset()V

    .line 314
    iget-object v1, p3, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 315
    return-object p3

    .line 318
    :cond_1
    sub-float v1, v0, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    add-float v1, v0, v2

    const v2, 0x3d8f5c29    # 0.07f

    add-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 319
    :cond_2
    invoke-virtual {p3}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->reset()V

    .line 320
    iget-object v1, p3, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 321
    return-object p3

    .line 324
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    return-object v1
.end method

.method public getStackTransform(Lcom/flyme/systemui/recents/model/Task;FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 2
    .param p1, "task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p3}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->reset()V

    .line 237
    return-object p3
.end method

.method public getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "p"    # F
    .param p2, "transformOut"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 289
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v0

    .line 290
    .local v0, "scale":F
    sub-float v3, v5, v0

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v1, v3

    .line 291
    .local v1, "scaleXOffset":I
    sub-float v3, v5, v0

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v2, v3

    .line 292
    .local v2, "scaleYOffset":I
    iput v0, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 293
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToAlpha(F)F

    move-result v3

    iput v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 294
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenX(F)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iput v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 295
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 296
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenZ(F)F

    move-result v3

    iput v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 297
    invoke-static {p1}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToDim(F)F

    move-result v3

    iput v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 298
    iget-object v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    iget-object v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v4, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 300
    iget-object v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v4, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v3, v4}, Lcom/flyme/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 301
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 302
    iput p1, p2, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    .line 303
    return-object p2
.end method

.method screenXToCurveProgressFake(I)F
    .locals 3
    .param p1, "screenX"    # I

    .prologue
    .line 441
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 442
    .local v0, "real":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    return v1
.end method
