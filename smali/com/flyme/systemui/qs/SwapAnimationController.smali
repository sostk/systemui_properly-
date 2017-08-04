.class public Lcom/flyme/systemui/qs/SwapAnimationController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwapAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;,
        Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;
    }
.end annotation


# instance fields
.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mFirstAnimator:Landroid/animation/ValueAnimator;

.field private mFirstView:Landroid/view/View;

.field private mFirstViewX:Landroid/animation/PropertyValuesHolder;

.field private mFirstViewY:Landroid/animation/PropertyValuesHolder;

.field private mSecondAnimator:Landroid/animation/ValueAnimator;

.field private mSecondView:Landroid/view/View;

.field private mSecondViewX:Landroid/animation/PropertyValuesHolder;

.field private mSecondViewY:Landroid/animation/PropertyValuesHolder;

.field private mSwapAnimator:Landroid/animation/Animator;

.field private mViewHost:Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V
    .locals 2
    .param p1, "host"    # Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 45
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mViewHost:Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;

    .line 44
    return-void
.end method

.method private createAnimator(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 17
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-direct/range {p0 .. p1}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v5

    .line 81
    .local v5, "firstLeftTop":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v9

    .line 82
    .local v9, "secondLeftTop":Landroid/graphics/Point;
    iget v13, v9, Landroid/graphics/Point;->x:I

    iget v14, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v13, v14

    .line 83
    .local v2, "deltaX":I
    iget v13, v9, Landroid/graphics/Point;->y:I

    iget v14, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v13, v14

    .line 85
    .local v3, "deltaY":I
    const-string/jumbo v13, "translationX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    int-to-float v15, v2

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewX:Landroid/animation/PropertyValuesHolder;

    .line 86
    .local v6, "firstViewX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "translationY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    int-to-float v15, v3

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewY:Landroid/animation/PropertyValuesHolder;

    .line 87
    .local v7, "firstViewY":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstAnimator:Landroid/animation/ValueAnimator;

    .line 88
    .local v4, "firstAnimator":Landroid/animation/ValueAnimator;
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    const-string/jumbo v13, "translationX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    neg-int v15, v2

    int-to-float v15, v15

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewX:Landroid/animation/PropertyValuesHolder;

    .line 92
    .local v10, "secondViewX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "translationY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    neg-int v15, v3

    int-to-float v15, v15

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewY:Landroid/animation/PropertyValuesHolder;

    .line 93
    .local v11, "secondViewY":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondAnimator:Landroid/animation/ValueAnimator;

    .line 94
    .local v8, "secondAnimator":Landroid/animation/ValueAnimator;
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 98
    .local v12, "set":Landroid/animation/AnimatorSet;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 99
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    return-object v12
.end method

.method private getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mViewHost:Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;

    invoke-interface {v0, p1}, Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;->getSwappableChildLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private updateAnimatorValues(Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 105
    .local v2, "firstLeftTop":Landroid/graphics/Point;
    invoke-direct {p0, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    .line 106
    .local v3, "secondLeftTop":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int v0, v4, v5

    .line 107
    .local v0, "deltaX":I
    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int v1, v4, v5

    .line 109
    .local v1, "deltaY":I
    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewX:Landroid/animation/PropertyValuesHolder;

    new-array v5, v11, [F

    aput v8, v5, v9

    int-to-float v6, v0

    aput v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 110
    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstViewY:Landroid/animation/PropertyValuesHolder;

    new-array v5, v11, [F

    aput v8, v5, v9

    int-to-float v6, v1

    aput v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 111
    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstAnimator:Landroid/animation/ValueAnimator;

    iget-wide v6, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewX:Landroid/animation/PropertyValuesHolder;

    new-array v5, v11, [F

    aput v8, v5, v9

    neg-int v6, v0

    int-to-float v6, v6

    aput v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 114
    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondViewY:Landroid/animation/PropertyValuesHolder;

    new-array v5, v11, [F

    aput v8, v5, v9

    neg-int v6, v1

    int-to-float v6, v6

    aput v6, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 115
    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondAnimator:Landroid/animation/ValueAnimator;

    iget-wide v6, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    return-void
.end method


# virtual methods
.method public addListener(Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public cancelAnimator()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 70
    :cond_0
    return-void
.end method

.method public isSwapping()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mAnimatorListeners:Ljava/util/List;

    .line 156
    .local v0, "animatorListeners":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "swapViewsPositionListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;

    .line 158
    .local v1, "swapViewsPositionListener":Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;
    iget-object v3, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    iget-object v4, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    invoke-interface {v1, v3, v4}, Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;->onSwapEnd(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 154
    .end local v1    # "swapViewsPositionListener":Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;
    .end local v2    # "swapViewsPositionListener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    iget-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 171
    iget-object v1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid argument:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-wide v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 137
    iput-wide p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mDuration:J

    .line 131
    :cond_1
    return-void
.end method

.method public swap(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/SwapAnimationController;->cancelAnimator()V

    .line 59
    iput-object p1, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mFirstView:Landroid/view/View;

    .line 60
    iput-object p2, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSecondView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->createAnimator(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->updateAnimatorValues(Landroid/view/View;Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/qs/SwapAnimationController;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 54
    return-void
.end method
