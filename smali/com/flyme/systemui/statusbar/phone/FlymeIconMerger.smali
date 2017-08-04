.class public Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;
.super Landroid/widget/LinearLayout;
.source "FlymeIconMerger.java"


# instance fields
.field private mMaxShowSize:I

.field private mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mMoreViewWidth:I

.field private mNotifyView:Landroid/view/View;

.field private mOngoingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f10001b

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMaxShowSize:I

    .line 39
    return-void
.end method

.method private getCanShowSize()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMaxShowSize:I

    .line 131
    .local v0, "canShowSize":I
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mNotifyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mNotifyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    add-int/lit8 v0, v0, -0x1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mOngoingView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mOngoingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 135
    add-int/lit8 v0, v0, -0x1

    .line 137
    :cond_1
    return v0
.end method

.method private getVisibleChildrenSize()I
    .locals 5

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "visibleChildren":I
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildCount()I

    move-result v0

    .line 121
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return v2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getVisibleChildrenSize()I

    move-result v4

    .line 51
    .local v4, "childSize":I
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getCanShowSize()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 52
    .local v12, "showSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 53
    .local v8, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildCount()I

    move-result v2

    .line 54
    .local v2, "allChildCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_1

    const/4 v10, 0x1

    .line 56
    .local v10, "oldShowMore":Z
    :goto_0
    new-array v5, v4, [I

    .line 57
    .local v5, "childrenWidth":[I
    const/4 v7, 0x0

    .line 58
    .local v7, "index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 61
    const/16 v17, -0x1

    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 62
    .local v16, "wmSpec":I
    const/16 v17, -0x1

    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 63
    .local v14, "whSpec":I
    move/from16 v0, v16

    invoke-virtual {v3, v0, v14}, Landroid/view/View;->measure(II)V

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    aput v17, v5, v7

    .line 65
    add-int/lit8 v7, v7, 0x1

    .line 58
    .end local v14    # "whSpec":I
    .end local v16    # "wmSpec":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childrenWidth":[I
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v10    # "oldShowMore":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "oldShowMore":Z
    goto :goto_0

    .line 68
    .restart local v5    # "childrenWidth":[I
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    :cond_2
    if-le v4, v12, :cond_6

    .line 69
    if-nez v10, :cond_3

    .line 70
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    move/from16 v17, v0

    sub-int v8, v8, v17

    .line 72
    :cond_3
    const/4 v9, 0x1

    .line 73
    .local v9, "newShowMore":Z
    add-int/lit8 v12, v12, -0x1

    .line 104
    :goto_2
    const/4 v11, 0x0

    .line 105
    .local v11, "realWidth":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v12, :cond_4

    .line 106
    aget v17, v5, v6

    add-int v11, v11, v17

    .line 107
    if-ge v8, v11, :cond_b

    .line 108
    aget v17, v5, v6

    sub-int v11, v11, v17

    .line 112
    :cond_4
    if-eq v10, v9, :cond_5

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v18, v0

    if-eqz v9, :cond_c

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 115
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->setMeasuredDimension(II)V

    .line 49
    return-void

    .line 75
    .end local v9    # "newShowMore":Z
    .end local v11    # "realWidth":I
    :cond_6
    const/4 v13, 0x0

    .line 76
    .local v13, "size":I
    const/4 v15, 0x0

    .line 77
    .local v15, "width":I
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    move/from16 v17, v0

    add-int v8, v8, v17

    .line 78
    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_8

    .line 79
    aget v17, v5, v6

    add-int v15, v15, v17

    .line 80
    if-gt v15, v8, :cond_8

    .line 81
    add-int/lit8 v13, v13, 0x1

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 86
    :cond_8
    if-ne v13, v4, :cond_9

    .line 87
    const/4 v9, 0x0

    .restart local v9    # "newShowMore":Z
    goto :goto_2

    .line 89
    .end local v9    # "newShowMore":Z
    :cond_9
    const/4 v9, 0x1

    .line 90
    .restart local v9    # "newShowMore":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    move/from16 v17, v0

    sub-int v8, v8, v17

    .line 91
    const/4 v13, 0x0

    .line 92
    const/4 v15, 0x0

    .line 93
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_a

    .line 94
    aget v17, v5, v6

    add-int v15, v15, v17

    .line 95
    if-gt v15, v8, :cond_a

    .line 96
    add-int/lit8 v13, v13, 0x1

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 101
    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_2

    .line 105
    .end local v13    # "size":I
    .end local v15    # "width":I
    .restart local v11    # "realWidth":I
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 113
    :cond_c
    const/16 v17, 0x8

    goto :goto_4
.end method

.method public setNotifyView(Landroid/view/View;)V
    .locals 0
    .param p1, "mNotifyView"    # Landroid/view/View;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mNotifyView:Landroid/view/View;

    .line 25
    return-void
.end method

.method public setOngoingView(Landroid/view/View;)V
    .locals 0
    .param p1, "mOngoingView"    # Landroid/view/View;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mOngoingView:Landroid/view/View;

    .line 21
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    .line 30
    instance-of v2, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    .line 31
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 32
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 33
    .local v1, "wmSpec":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 34
    .local v0, "whSpec":I
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->measure(II)V

    .line 35
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    .line 29
    .end local v0    # "whSpec":I
    .end local v1    # "wmSpec":I
    :cond_0
    return-void
.end method
