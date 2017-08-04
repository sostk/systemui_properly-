.class public Lcom/meizu/common/util/ListViewUtils;
.super Ljava/lang/Object;
.source "ListViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x12c

.field private static final DELAY_ANIMATION:I = 0x21


# instance fields
.field private mAlInterpolator:Landroid/view/animation/Interpolator;

.field mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrInterpolator:Landroid/view/animation/Interpolator;

.field private mUpInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const v5, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "sdkApi":I
    const/16 v1, 0x15

    .line 50
    if-ge v0, v1, :cond_0

    .line 55
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mTrInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mAlInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mUpInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mTrInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mAlInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/util/ListViewUtils;->mUpInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/util/ListViewUtils;
    .param p1, "x1"    # Landroid/widget/ListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/util/ListViewUtils;->animateRemoval(Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/util/ListViewUtils;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/ListViewUtils;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mUpInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private animateRemoval(Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
    .locals 12
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "viewToRemove"    # Landroid/view/View;
    .param p3, "onListViewFadeListener"    # Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "adapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 125
    .local v7, "pos":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v9

    if-lt v7, v9, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "firstVisiblePosition":I
    const/4 v3, 0x0

    .line 129
    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 138
    if-nez p3, :cond_3

    .line 144
    :goto_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 145
    .local v6, "observer":Landroid/view/ViewTreeObserver;
    new-instance v9, Lcom/meizu/common/util/ListViewUtils$2;

    invoke-direct {v9, p0, p1, v0, p3}, Lcom/meizu/common/util/ListViewUtils$2;-><init>(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Ljava/util/ArrayList;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V

    invoke-virtual {v6, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 199
    return-void

    .line 126
    .end local v2    # "firstVisiblePosition":I
    .end local v3    # "i":I
    .end local v6    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 130
    .restart local v2    # "firstVisiblePosition":I
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "child":Landroid/view/View;
    if-ne v1, p2, :cond_2

    .line 129
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_2
    add-int v8, v2, v3

    .line 133
    .local v8, "position":I
    int-to-long v4, v8

    .line 134
    .local v4, "itemId":J
    iget-object v9, p0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 139
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "itemId":J
    .end local v8    # "position":I
    :cond_3
    invoke-interface {p3}, Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;->onEndListViewFadedOut()V

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 141
    .restart local v8    # "position":I
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public fadeOutItemView(Landroid/widget/ListView;IILcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;Landroid/widget/BaseAdapter;)V
    .locals 21
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "onListViewFadeListener"    # Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;
    .param p5, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    const/4 v12, 0x0

    .line 72
    .local v12, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    .line 73
    .local v8, "firstVisiblePosition":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v10, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move/from16 v15, p2

    .local v15, "position":I
    :goto_0
    move/from16 v0, p3

    if-le v15, v0, :cond_0

    .line 92
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    .local v16, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 94
    new-instance v2, Lcom/meizu/common/util/ListViewUtils$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/meizu/common/util/ListViewUtils$1;-><init>(Lcom/meizu/common/util/ListViewUtils;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;IILandroid/widget/ListView;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    return-void

    .line 75
    .end local v16    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    sub-int v2, v15, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 76
    .local v20, "view":Landroid/view/View;
    if-nez v20, :cond_1

    .line 74
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 77
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    .local v17, "startAlphaKey":Landroid/animation/Keyframe;
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 78
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    .line 79
    .local v13, "endAlphaKey":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/util/ListViewUtils;->mAlInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v2}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    .local v18, "startTranKey":Landroid/animation/Keyframe;
    const/high16 v2, 0x3f800000    # 1.0f

    .line 81
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    .line 82
    .local v14, "endTranKey":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/util/ListViewUtils;->mTrInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v2}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    .line 83
    new-array v3, v3, [Landroid/animation/Keyframe;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .local v9, "alphaValuesHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    .line 84
    new-array v3, v3, [Landroid/animation/Keyframe;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .local v19, "tranValuesHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x2

    .line 85
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v19, v2, v3

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .local v11, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    .line 86
    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    mul-int/lit8 v2, v12, 0x21

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 88
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method
