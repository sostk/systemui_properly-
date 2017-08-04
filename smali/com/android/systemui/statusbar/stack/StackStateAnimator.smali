.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGoToFullShadeAppearingTranslation:I

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationScreenOnAnimInterval:I

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 91
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNotificationScreenOnAnimInterval:I

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    const v1, 0x7f07002d

    .line 95
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    const v1, 0x7f0b0404

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f100022

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNotificationScreenOnAnimInterval:I

    .line 93
    return-void
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 20
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasScreenOnEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 283
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayWhenScreenOn(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v16

    return-wide v16

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 286
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v16

    return-wide v16

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 289
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v16

    return-wide v16

    .line 291
    :cond_2
    const-wide/16 v10, 0x0

    .line 292
    .local v10, "minDelay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 293
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    const-wide/16 v6, 0x50

    .line 294
    .local v6, "delayPerElement":J
    iget v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 298
    .local v14, "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 297
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 299
    .local v2, "changingIndex":I
    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 301
    .local v3, "difference":I
    add-int/lit8 v16, v3, -0x1

    .line 300
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 302
    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 293
    const-wide/16 v18, 0x50

    .line 302
    mul-long v4, v16, v18

    .line 303
    .local v4, "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    .line 307
    .end local v2    # "changingIndex":I
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v14    # "ownIndex":I
    :pswitch_1
    const-wide/16 v6, 0x20

    .line 309
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 310
    .restart local v14    # "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/4 v13, 0x1

    .line 311
    .local v13, "noNextView":Z
    :goto_1
    if-eqz v13, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    .line 315
    .local v15, "viewAfterChangingView":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 317
    .local v12, "nextIndex":I
    if-lt v14, v12, :cond_3

    .line 319
    add-int/lit8 v14, v14, 0x1

    .line 321
    :cond_3
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 323
    .restart local v3    # "difference":I
    add-int/lit8 v16, v3, -0x1

    .line 322
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 324
    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 325
    .restart local v4    # "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto/16 :goto_0

    .line 310
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v12    # "nextIndex":I
    .end local v13    # "noNextView":Z
    .end local v15    # "viewAfterChangingView":Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "noNextView":Z
    goto :goto_1

    .line 313
    :cond_5
    iget-object v15, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .restart local v15    # "viewAfterChangingView":Landroid/view/View;
    goto :goto_2

    .line 332
    .end local v6    # "delayPerElement":J
    .end local v8    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v13    # "noNextView":Z
    .end local v14    # "ownIndex":I
    .end local v15    # "viewAfterChangingView":Landroid/view/View;
    :cond_6
    return-wide v10

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J
    .locals 4
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 338
    const/4 v2, -0x1

    .line 337
    if-ne v1, v2, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 346
    .local v0, "referenceIndex":I
    :goto_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    return-wide v2

    .line 340
    .end local v0    # "referenceIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 341
    const/4 v2, -0x2

    .line 340
    if-ne v1, v2, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "referenceIndex":I
    goto :goto_0

    .line 344
    .end local v0    # "referenceIndex":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v0, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .restart local v0    # "referenceIndex":I
    goto :goto_0
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J
    .locals 6
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 350
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    int-to-float v0, v1

    .line 351
    .local v0, "index":F
    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 352
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private calculateDelayWhenScreenOn(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J
    .locals 4
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 907
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    int-to-float v0, v1

    .line 908
    .local v0, "index":F
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNotificationScreenOnAnimInterval:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 7
    .param p1, "duration"    # J
    .param p3, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 757
    move-wide v0, p1

    .line 758
    .local v0, "newDuration":J
    if-eqz p3, :cond_0

    .line 761
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 762
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 761
    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 763
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 765
    :cond_0
    return-wide v0
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 142
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 143
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 144
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 146
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 147
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 143
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    return v4

    .line 154
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 895
    if-nez p0, :cond_0

    .line 896
    const/4 v1, 0x0

    return v1

    .line 898
    :cond_0
    const v1, 0x7f0f0009

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 899
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    .line 902
    :cond_1
    const v1, 0x7f0f000f

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0

    .line 720
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private onAnimationFinished()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 768
    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 12
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 781
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 782
    .local v2, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v1, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 783
    .local v1, "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v6, :cond_3

    .line 787
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 789
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-eqz v5, :cond_0

    .line 793
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 795
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    goto :goto_0

    .line 798
    :cond_1
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 799
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 800
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 801
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    invoke-virtual {v1, v6, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 802
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_3
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 805
    const/4 v7, 0x1

    .line 804
    if-ne v6, v7, :cond_6

    .line 806
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v11, :cond_4

    .line 807
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_0

    .line 814
    :cond_4
    iget-object v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 813
    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 815
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 817
    .local v0, "actualHeight":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 818
    .local v4, "translationDirection":F
    if-eqz v5, :cond_5

    .line 821
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 822
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    int-to-float v8, v0

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 821
    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    .line 823
    int-to-float v7, v0

    .line 821
    div-float v4, v6, v7

    .line 824
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 827
    :cond_5
    const-wide/16 v6, 0x1d0

    .line 828
    new-instance v8, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 827
    invoke-virtual {v1, v6, v7, v4, v8}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_1

    .line 835
    .end local v0    # "actualHeight":I
    .end local v4    # "translationDirection":F
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_6
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 836
    const/4 v7, 0x2

    .line 835
    if-ne v6, v7, :cond_2

    .line 839
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_1

    .line 780
    .end local v1    # "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_7
    return-void
.end method

.method private startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 474
    const v14, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 475
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0f000d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 476
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 477
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    const v14, 0x7f0f0007

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 481
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    .line 483
    if-eqz v9, :cond_1

    .line 486
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 487
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 488
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 489
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 490
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 491
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 492
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 493
    return-void

    .line 496
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 497
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    .line 498
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 503
    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 503
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 505
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 508
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;F)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 534
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 535
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_3

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 538
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 540
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 541
    const v14, 0x7f0f0007

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 543
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 473
    return-void

    .line 536
    :cond_4
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method private startAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;I)V
    .locals 36
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "i"    # I

    .prologue
    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    .line 163
    .local v21, "childVisibility":I
    if-nez v21, :cond_11

    const/16 v33, 0x1

    .line 164
    .local v33, "wasVisible":Z
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 165
    .local v4, "alpha":F
    if-nez v33, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-eqz v5, :cond_12

    .line 169
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_13

    const/16 v34, 0x1

    .line 170
    .local v34, "yTranslationChanging":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_14

    const/16 v35, 0x1

    .line 171
    .local v35, "zTranslationChanging":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_15

    const/16 v29, 0x1

    .line 172
    .local v29, "scaleChanging":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_16

    const/16 v20, 0x1

    .line 173
    .local v20, "alphaChanging":Z
    :goto_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    if-eq v5, v6, :cond_17

    const/16 v24, 0x1

    .line 174
    .local v24, "heightChanging":Z
    :goto_6
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v6

    if-eq v5, v6, :cond_18

    const/16 v22, 0x1

    .line 175
    .local v22, "darkChanging":Z
    :goto_7
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v6

    if-eq v5, v6, :cond_19

    const/16 v31, 0x1

    .line 176
    .local v31, "topInsetChanging":Z
    :goto_8
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->screenOn:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->isScreenOn()Z

    move-result v6

    if-eq v5, v6, :cond_1a

    const/16 v30, 0x1

    .line 177
    .local v30, "screenOnChanging":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    .line 178
    .local v32, "wasAdded":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    move/from16 v23, v0

    .line 179
    .local v23, "hasDelays":Z
    if-nez v34, :cond_1b

    if-nez v35, :cond_1b

    if-nez v29, :cond_1b

    if-nez v20, :cond_1b

    if-nez v24, :cond_1b

    if-nez v31, :cond_1b

    if-nez v22, :cond_1b

    .line 180
    move/from16 v25, v30

    .line 181
    :goto_a
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 182
    .local v28, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->getHitRect(Landroid/graphics/Rect;)V

    .line 185
    if-nez v32, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasScreenOnEvent:Z

    if-eqz v5, :cond_1e

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v27, 0x0

    .line 187
    .local v27, "noAnimation":Z
    :goto_b
    const-wide/16 v10, 0x0

    .line 188
    .local v10, "delay":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 189
    .local v8, "duration":J
    if-eqz v23, :cond_1

    if-nez v25, :cond_2

    :cond_1
    if-eqz v32, :cond_3

    .line 190
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v12

    add-long v10, v6, v12

    .line 193
    :cond_3
    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasScreenOnEvent:Z

    if-eqz v5, :cond_1f

    .line 203
    :cond_4
    :goto_c
    if-eqz v34, :cond_6

    .line 204
    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v5, :cond_20

    :cond_5
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 207
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    .line 212
    :cond_6
    :goto_d
    if-eqz v35, :cond_7

    .line 213
    if-eqz v27, :cond_21

    .line 214
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 221
    :cond_7
    :goto_e
    if-eqz v29, :cond_8

    .line 222
    if-eqz v27, :cond_22

    .line 223
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    .line 224
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    .line 231
    :cond_8
    :goto_f
    if-eqz v20, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_23

    .line 232
    :goto_10
    if-eqz v27, :cond_24

    .line 233
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 240
    :cond_9
    :goto_11
    if-eqz v24, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    if-eqz v5, :cond_a

    .line 241
    if-eqz v27, :cond_25

    .line 242
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 249
    :cond_a
    :goto_12
    if-eqz v31, :cond_b

    .line 250
    if-eqz v27, :cond_26

    .line 251
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 258
    :cond_b
    :goto_13
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    if-eqz v5, :cond_c

    if-eqz v32, :cond_27

    :cond_c
    const/4 v5, 0x0

    :goto_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 262
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    if-eqz v5, :cond_d

    if-eqz v27, :cond_29

    :cond_d
    const/4 v5, 0x0

    :goto_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v10, v11}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 265
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 268
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    if-eqz v5, :cond_e

    .line 269
    if-eqz v32, :cond_2a

    .line 268
    :cond_e
    const/4 v15, 0x0

    :goto_16
    move-object/from16 v13, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 271
    if-eqz v32, :cond_f

    .line 272
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    .line 274
    :cond_f
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/systemui/statusbar/SpeedBumpView;

    if-eqz v5, :cond_10

    move-object/from16 v14, p1

    .line 275
    check-cast v14, Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 276
    add-long v16, v10, v8

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v15, p2

    .line 275
    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    .line 161
    :cond_10
    return-void

    .line 163
    .end local v4    # "alpha":F
    .end local v8    # "duration":J
    .end local v10    # "delay":J
    .end local v20    # "alphaChanging":Z
    .end local v22    # "darkChanging":Z
    .end local v23    # "hasDelays":Z
    .end local v24    # "heightChanging":Z
    .end local v27    # "noAnimation":Z
    .end local v28    # "rect":Landroid/graphics/Rect;
    .end local v29    # "scaleChanging":Z
    .end local v30    # "screenOnChanging":Z
    .end local v31    # "topInsetChanging":Z
    .end local v32    # "wasAdded":Z
    .end local v33    # "wasVisible":Z
    .end local v34    # "yTranslationChanging":Z
    .end local v35    # "zTranslationChanging":Z
    :cond_11
    const/16 v33, 0x0

    .restart local v33    # "wasVisible":Z
    goto/16 :goto_0

    .line 166
    .restart local v4    # "alpha":F
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    goto/16 :goto_1

    .line 169
    :cond_13
    const/16 v34, 0x0

    .restart local v34    # "yTranslationChanging":Z
    goto/16 :goto_2

    .line 170
    :cond_14
    const/16 v35, 0x0

    .restart local v35    # "zTranslationChanging":Z
    goto/16 :goto_3

    .line 171
    :cond_15
    const/16 v29, 0x0

    .restart local v29    # "scaleChanging":Z
    goto/16 :goto_4

    .line 172
    :cond_16
    const/16 v20, 0x0

    .restart local v20    # "alphaChanging":Z
    goto/16 :goto_5

    .line 173
    :cond_17
    const/16 v24, 0x0

    .restart local v24    # "heightChanging":Z
    goto/16 :goto_6

    .line 174
    :cond_18
    const/16 v22, 0x0

    .restart local v22    # "darkChanging":Z
    goto/16 :goto_7

    .line 175
    :cond_19
    const/16 v31, 0x0

    .restart local v31    # "topInsetChanging":Z
    goto/16 :goto_8

    .line 176
    :cond_1a
    const/16 v30, 0x0

    .restart local v30    # "screenOnChanging":Z
    goto/16 :goto_9

    .line 179
    .restart local v23    # "hasDelays":Z
    .restart local v32    # "wasAdded":Z
    :cond_1b
    const/16 v25, 0x1

    .local v25, "isDelayRelevant":Z
    goto/16 :goto_a

    .line 185
    .end local v25    # "isDelayRelevant":Z
    .restart local v28    # "rect":Landroid/graphics/Rect;
    :cond_1c
    const/16 v27, 0x1

    .restart local v27    # "noAnimation":Z
    goto/16 :goto_b

    .line 186
    .end local v27    # "noAnimation":Z
    :cond_1d
    const/16 v27, 0x1

    .restart local v27    # "noAnimation":Z
    goto/16 :goto_b

    .line 185
    .end local v27    # "noAnimation":Z
    :cond_1e
    const/16 v27, 0x0

    .restart local v27    # "noAnimation":Z
    goto/16 :goto_b

    .line 194
    .restart local v8    # "duration":J
    .restart local v10    # "delay":J
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 195
    const/16 v34, 0x1

    .line 196
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v26, v0

    .line 197
    .local v26, "longerDurationFactor":F
    move/from16 v0, v26

    float-to-double v6, v0

    const-wide v12, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v26, v0

    .line 199
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v26

    float-to-long v6, v5

    .line 198
    const-wide/16 v12, 0x202

    add-long v8, v12, v6

    goto/16 :goto_c

    .line 204
    .end local v26    # "longerDurationFactor":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasScreenOnEvent:Z

    if-nez v5, :cond_5

    .line 205
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    goto/16 :goto_d

    :cond_21
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 216
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_e

    .line 226
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startScaleAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    goto/16 :goto_f

    .line 231
    :cond_23
    if-eqz v30, :cond_9

    goto/16 :goto_10

    :cond_24
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 235
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_11

    :cond_25
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 244
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_12

    :cond_26
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 253
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_13

    .line 259
    :cond_27
    if-eqz v27, :cond_28

    const/4 v5, 0x0

    goto/16 :goto_14

    :cond_28
    const/4 v5, 0x1

    goto/16 :goto_14

    .line 262
    :cond_29
    const/4 v5, 0x1

    goto/16 :goto_15

    .line 269
    :cond_2a
    if-eqz v27, :cond_2b

    const/4 v5, 0x0

    :goto_17
    move v15, v5

    goto/16 :goto_16

    :cond_2b
    const/4 v5, 0x1

    goto :goto_17
.end method

.method private startAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 705
    return-void
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 357
    const v12, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 358
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f0f000f

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 359
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 360
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    const v12, 0x7f0f0009

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 364
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v12, :cond_2

    .line 366
    if-eqz v7, :cond_1

    .line 369
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 370
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 371
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 372
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 373
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 375
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 376
    return-void

    .line 379
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 380
    return-void

    .line 384
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 385
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 392
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 394
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 395
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_3

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 398
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 409
    const v12, 0x7f0f0009

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 411
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 356
    return-void

    .line 396
    :cond_4
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 416
    const v12, 0x7f0f0014

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 417
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f0f000e

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 418
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    .line 419
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    const v12, 0x7f0f0008

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 423
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v12, :cond_2

    .line 425
    if-eqz v7, :cond_1

    .line 428
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 429
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 430
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 431
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 432
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f0014

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 433
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 434
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 435
    return-void

    .line 438
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 439
    return-void

    .line 443
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 444
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 452
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 453
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_3

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 456
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 467
    const v12, 0x7f0f0008

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f0014

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 469
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f0f000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 415
    return-void

    .line 454
    :cond_4
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method private startScaleAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V
    .locals 21
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J

    .prologue
    .line 653
    const v16, 0x7f0f0012

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 654
    .local v13, "previousStartValue":Ljava/lang/Float;
    const v16, 0x7f0f000c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 655
    .local v12, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    .line 656
    .local v7, "newEndValue":F
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-nez v16, :cond_0

    .line 657
    return-void

    .line 659
    :cond_0
    const v16, 0x7f0f0006

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    .line 660
    .local v11, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 662
    if-eqz v11, :cond_1

    .line 665
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 666
    .local v15, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v14, v7, v16

    .line 667
    .local v14, "relativeDiff":F
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v10, v16, v14

    .line 668
    .local v10, "newStartValue":F
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 669
    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 670
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f0f0012

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 671
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f0f000c

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 672
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 673
    return-void

    .line 676
    .end local v10    # "newStartValue":F
    .end local v14    # "relativeDiff":F
    .end local v15    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    .line 677
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    .line 682
    :cond_2
    sget-object v16, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 684
    .local v5, "holderX":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleY()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 685
    .local v6, "holderY":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 686
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    .line 688
    .local v8, "newDuration":J
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    new-instance v16, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 700
    const v16, 0x7f0f0006

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f0f0012

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 702
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f0f000c

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 652
    return-void
.end method

.method private startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 600
    const v14, 0x7f0f0010

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 601
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0f000a

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 602
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 603
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    const v14, 0x7f0f0004

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 607
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v14, :cond_2

    .line 609
    if-eqz v9, :cond_1

    .line 612
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 613
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 614
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 615
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 616
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f0010

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 617
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 618
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 619
    return-void

    .line 622
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 623
    return-void

    .line 627
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 627
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 629
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 630
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 631
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_3

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 635
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 637
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 645
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 646
    const v14, 0x7f0f0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f0010

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 648
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 599
    return-void

    .line 633
    :cond_4
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method private startZTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 548
    const v14, 0x7f0f0011

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 549
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f0f000b

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 550
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    .line 551
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 552
    return-void

    .line 554
    :cond_0
    const v14, 0x7f0f0005

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 555
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    .line 557
    if-eqz v9, :cond_1

    .line 560
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 561
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 562
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 563
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 564
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f0011

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 565
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 566
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 567
    return-void

    .line 570
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 574
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 575
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 574
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 576
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 578
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_3

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 582
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 584
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 593
    const v14, 0x7f0f0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 594
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f0011

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 595
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0f000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 547
    return-void

    .line 580
    :cond_4
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .prologue
    .line 847
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 848
    .local v1, "startOverScrollAmount":F
    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    .line 849
    return-void

    .line 851
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 852
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 853
    const/4 v3, 0x1

    aput p1, v2, v3

    .line 852
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 854
    .local v0, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 855
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 864
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 865
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 875
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 876
    if-eqz p2, :cond_1

    .line 877
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 846
    :goto_0
    return-void

    .line 879
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 884
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 885
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 883
    :cond_0
    return-void

    .line 884
    .end local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    .restart local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 7
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/4 v6, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 117
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 118
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 119
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 120
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 121
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 125
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 126
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 131
    invoke-direct {p0, v0, v3, p2, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;I)V

    goto :goto_1

    .line 133
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 137
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 113
    return-void
.end method
