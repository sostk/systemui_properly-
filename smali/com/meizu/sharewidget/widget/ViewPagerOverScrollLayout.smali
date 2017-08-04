.class public Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;
.super Landroid/widget/FrameLayout;
.source "ViewPagerOverScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;
    }
.end annotation


# static fields
.field private static final MAXOVERSCROLLRATE:F = 0.3f


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentPage:I

.field mHorizonalFlingRunnable:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

.field mMotionX:I

.field private mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

.field mOverscrollDistance:I

.field private mPositionOffset:F

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "OS"

    .line 19
    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->TAG:Ljava/lang/String;

    .line 31
    iput v3, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    .line 33
    iput v4, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    const v0, 0x3df5c28f    # 0.12f

    const v1, 0x3ea8f5c3    # 0.33f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    invoke-static {v0, v3, v1, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

    .line 48
    invoke-virtual {p0, v4}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->setOverScrollMode(I)V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p9}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method private updateIncrementalDelta(II)I
    .locals 9
    .param p1, "delta"    # I
    .param p2, "currentScoll"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 195
    iget v3, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    .line 196
    .local v3, "overscrollDistance":I
    move v2, p1

    .line 198
    .local v2, "incrementalDelta":I
    if-nez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    if-eqz v3, :cond_0

    .line 199
    mul-int v6, p2, v2

    if-ltz v6, :cond_2

    .line 219
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "coeff":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 202
    .local v1, "finalCoeff":F
    move v4, v2

    .line 203
    .local v4, "temp":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 204
    iget-object v6, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 205
    sub-float v1, v8, v1

    .line 206
    cmpg-float v6, v1, v5

    if-gez v6, :cond_3

    move v1, v5

    .line 207
    :cond_3
    int-to-float v5, v2

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 209
    if-gtz v4, :cond_4

    .line 212
    if-eqz v2, :cond_6

    .line 215
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v3, :cond_0

    const/4 v2, 0x0

    .line 216
    goto :goto_0

    .line 210
    :cond_4
    if-eqz v2, :cond_5

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    .line 212
    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 92
    .local v12, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 93
    .local v22, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v18

    .line 94
    .local v18, "itemcount":I
    packed-switch v12, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 96
    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    if-nez v2, :cond_1

    .line 100
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x1

    return v2

    .line 98
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    invoke-virtual {v2}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->endFling()V

    goto :goto_1

    .line 105
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_c

    .line 160
    :cond_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    goto :goto_0

    .line 106
    :cond_3
    const/4 v13, 0x0

    .line 107
    .local v13, "beginOverScroll":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    if-eqz v2, :cond_7

    :cond_4
    const/16 v16, 0x0

    .line 108
    .local v16, "isReachLeftBoundary":Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    add-int/lit8 v4, v18, -0x1

    if-eq v2, v4, :cond_8

    :cond_5
    const/16 v17, 0x0

    .line 110
    .local v17, "isReachRightBoundary":Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move/from16 v0, v22

    if-gt v0, v2, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move/from16 v0, v22

    if-lt v0, v2, :cond_b

    .line 114
    :goto_4
    if-eqz v13, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    sub-int v15, v22, v2

    .line 116
    .local v15, "incrementalDeltaX":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->updateIncrementalDelta(II)I

    move-result v15

    .line 118
    neg-int v3, v15

    .local v3, "overScrollDistance":I
    const/4 v4, 0x0

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 120
    move-object/from16 v19, p1

    .line 121
    .local v19, "last":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 122
    .local v14, "e":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v14}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 124
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    .line 125
    const/4 v2, 0x1

    return v2

    .line 107
    .end local v3    # "overScrollDistance":I
    .end local v14    # "e":Landroid/view/MotionEvent;
    .end local v15    # "incrementalDeltaX":I
    .end local v16    # "isReachLeftBoundary":Z
    .end local v17    # "isReachRightBoundary":Z
    .end local v19    # "last":Landroid/view/MotionEvent;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    .line 108
    .restart local v16    # "isReachLeftBoundary":Z
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    .line 110
    .restart local v17    # "isReachRightBoundary":Z
    :cond_9
    if-eqz v16, :cond_6

    .line 111
    :cond_a
    const/4 v13, 0x1

    goto :goto_4

    .line 110
    :cond_b
    if-nez v17, :cond_a

    goto :goto_4

    .line 129
    .end local v13    # "beginOverScroll":Z
    .end local v16    # "isReachLeftBoundary":Z
    .end local v17    # "isReachRightBoundary":Z
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    sub-int v15, v22, v2

    .line 130
    .restart local v15    # "incrementalDeltaX":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->updateIncrementalDelta(II)I

    move-result v15

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v21

    .line 133
    .local v21, "oldScroll":I
    sub-int v20, v21, v15

    .line 135
    .local v20, "newScroll":I
    neg-int v3, v15

    .line 136
    .restart local v3    # "overScrollDistance":I
    if-lez v20, :cond_e

    :cond_d
    if-gez v20, :cond_10

    :goto_5
    const/4 v15, 0x0

    .line 141
    :goto_6
    if-nez v3, :cond_11

    .line 144
    :goto_7
    if-nez v15, :cond_12

    .line 156
    :goto_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mMotionX:I

    .line 157
    const/4 v2, 0x1

    return v2

    .line 136
    :cond_e
    if-lez v21, :cond_d

    .line 137
    :cond_f
    move/from16 v0, v21

    neg-int v3, v0

    goto :goto_6

    .line 136
    :cond_10
    if-ltz v21, :cond_f

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_7

    .line 146
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-nez v2, :cond_13

    .line 151
    :goto_9
    move-object/from16 v19, p1

    .line 152
    .restart local v19    # "last":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 153
    .restart local v14    # "e":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v14}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 154
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_8

    .end local v14    # "e":Landroid/view/MotionEvent;
    .end local v19    # "last":Landroid/view/MotionEvent;
    :cond_13
    const/4 v2, 0x0

    .line 147
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->setScrollX(I)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->invalidateParentIfNeeded()V

    goto :goto_9

    .line 165
    .end local v3    # "overScrollDistance":I
    .end local v15    # "incrementalDeltaX":I
    .end local v20    # "newScroll":I
    .end local v21    # "oldScroll":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    if-eqz v2, :cond_14

    .line 169
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    invoke-virtual {v2}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->startSpringback()V

    .line 170
    const/4 v2, 0x1

    return v2

    .line 167
    :cond_14
    new-instance v2, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;-><init>(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    goto :goto_a

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 58
    invoke-virtual {p0, v3}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .end local v0    # "child":Landroid/view/View;
    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 63
    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$1;

    invoke-direct {v2, p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$1;-><init>(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ViewPagerOverScrollLayout only can host 1 elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ViewPagerOverScrollLayout only contain ViewPager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->onScrollChanged(IIII)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->setScrollX(I)V

    .line 183
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->invalidateParentIfNeeded()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 84
    int-to-float v0, p1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    .line 85
    return-void
.end method
