.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownLength:I

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mExpandedOnStart:Z

.field private mFirstChildMaxHeight:I

.field private mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

.field private mInnerHeight:I

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mIsSmallScreen:Z

.field private mLayoutHeight:I

.field private mMaxNotificationHeight:I

.field private mNotificationScreenOnOffsetY:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mRoundedRectCornerRadius:I

.field private mScaleDimmed:Z

.field mScreenOn:Z

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

.field private mTopPadding:I

.field private mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mTopStackPeekSize:I

.field private mTopStackSlowDownLength:I

.field private mTopStackTotalSize:I

.field private mZBasicHeight:I

.field private mZDistanceBetweenElements:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScreenOn:Z

    .line 79
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationScreenOnOffsetY:I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    .line 81
    return-void
.end method

.method private findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 821
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 822
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 823
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 825
    return-object v0

    .line 822
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 501
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 502
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 503
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    return v2

    .line 504
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 505
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 506
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    return v2

    .line 508
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    if-nez p1, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    const v1, 0x7f0b03cf

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    const v1, 0x7f0b03d0

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const v1, 0x7f0b038d

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f0b038e

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    const v1, 0x7f0b03c8

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    const v1, 0x7f0b03c9

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    const v1, 0x7f0b03ce

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    .line 123
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    const v1, 0x7f0b03cb

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    const v1, 0x7f0b03cc

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    const v1, 0x7f0b03e8

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mRoundedRectCornerRadius:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    const v1, 0x7f0b03d2

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 133
    const/16 v1, 0x1e0

    .line 132
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    const v1, 0x7f0b02d2

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationScreenOnOffsetY:I

    .line 108
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 4
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 813
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 814
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 815
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMaxExpandHeightInitialized()Z

    move-result v1

    return v1

    .line 817
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private mzUpdatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 10
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 866
    const/4 v6, 0x0

    .line 868
    .local v6, "yPositionInScrollView":F
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 869
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 870
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 871
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 872
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    const/4 v8, 0x0

    iput v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 873
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v2

    .line 875
    .local v2, "childHeight":I
    int-to-float v8, v2

    .line 874
    add-float/2addr v8, v6

    .line 876
    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v9, v9

    .line 874
    add-float v7, v8, v9

    .line 877
    .local v7, "yPositionInScrollViewAfterElement":F
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v8, v8

    sub-float v8, v6, v8

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v9, v9

    add-float v5, v8, v9

    .line 879
    .local v5, "scrollOffset":F
    iput v5, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 880
    const/16 v8, 0x8

    iput v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 882
    move v6, v7

    .line 884
    iget v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 887
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScreenOn:Z

    if-nez v8, :cond_0

    .line 888
    iget v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationScreenOnOffsetY:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 889
    const v8, 0x3ccccccd    # 0.025f

    iput v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 892
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 869
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "childHeight":I
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v5    # "scrollOffset":F
    .end local v7    # "yPositionInScrollViewAfterElement":F
    :cond_1
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 282
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 283
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 284
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 285
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isScreenOn()Z

    move-result v9

    .line 286
    .local v9, "screenOn":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 287
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v10, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 288
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 289
    iget-object v10, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 290
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 291
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    .line 292
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    .line 293
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    .line 294
    iput-boolean v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->screenOn:Z

    .line 295
    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 296
    .local v8, "isActivatedChild":Z
    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    :cond_0
    iput v11, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    .line 299
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 288
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 295
    .end local v8    # "isActivatedChild":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isActivatedChild":Z
    goto :goto_1

    .line 281
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_3
    return-void
.end method

.method private updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_1

    .line 773
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 777
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    .line 770
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    goto :goto_0

    .line 783
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateFirstChildMaxSizeToMaxHeight()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 793
    new-instance v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    .line 792
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 787
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateInnerHeight()V
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    .line 745
    return-void
.end method

.method private updatePadding(Z)V
    .locals 6
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 87
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    if-eqz v0, :cond_0

    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    .line 87
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    .line 91
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 90
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    .line 94
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 95
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    sub-int/2addr v2, v3

    .line 92
    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    .line 99
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v2

    .line 97
    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 86
    return-void

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    goto :goto_0
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .locals 6
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "speedBumpIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 194
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 195
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 196
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 197
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    .line 201
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    if-lt v3, p3, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 201
    goto :goto_1

    .line 193
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_1
    return-void
.end method

.method private updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 341
    .local v1, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 342
    .local v0, "childCount":I
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 344
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 345
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 346
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 347
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v4

    .line 348
    .local v4, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 349
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v4    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method


# virtual methods
.method public getBottomStackSlowDownLength()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 5
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 149
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 151
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 152
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 153
    iput v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    .line 154
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 155
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 156
    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 157
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v1

    .line 159
    .local v1, "bottomOverScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    .line 163
    .local v2, "scrollY":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 164
    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 166
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 177
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mzUpdatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 185
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    .line 143
    return-void
.end method

.method public notifyChildrenChanged(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v0, :cond_0

    .line 842
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 840
    :cond_0
    return-void
.end method

.method public onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2
    .param p1, "currentState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 764
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    .line 765
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    .line 766
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 767
    .local v0, "hostView":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    .line 763
    return-void
.end method

.method public onExpansionStopped()V
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 831
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    .line 855
    :cond_0
    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    .line 851
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 836
    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0
    .param p1, "layoutHeight"    # I

    .prologue
    .line 736
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    .line 737
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateInnerHeight()V

    .line 735
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .param p1, "topPadding"    # I

    .prologue
    .line 741
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    .line 742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateInnerHeight()V

    .line 740
    return-void
.end method

.method public shouldScaleDimmed()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    return v0
.end method

.method public updateIsSmallScreen(I)V
    .locals 2
    .param p1, "panelHeight"    # I

    .prologue
    .line 758
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 759
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 758
    add-int/2addr v0, v1

    .line 759
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 758
    add-int/2addr v0, v1

    .line 760
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    .line 758
    add-int/2addr v0, v1

    .line 757
    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    .line 756
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
