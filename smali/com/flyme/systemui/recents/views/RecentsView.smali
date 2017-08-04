.class public Lcom/flyme/systemui/recents/views/RecentsView;
.super Landroid/widget/RelativeLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
.implements Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;,
        Lcom/flyme/systemui/recents/views/RecentsView$ClearCallBack;
    }
.end annotation


# instance fields
.field cacheTaskStackBounds:Landroid/graphics/Rect;

.field mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mClearAllFinishRunnable:Ljava/lang/Runnable;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

.field mDuringClearAll:Z

.field mExtendView:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field mIntercept:Z

.field mInterceptForClearAll:Z

.field mInterceptForExtend:Z

.field private mMainView:Landroid/view/View;

.field mSearchBar:Landroid/view/View;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTaskViewClearAll:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->cacheTaskStackBounds:Landroid/graphics/Rect;

    .line 832
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mDuringClearAll:Z

    .line 1092
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    .line 1093
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    .line 1094
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mIntercept:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 383
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->cacheTaskStackBounds:Landroid/graphics/Rect;

    .line 832
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mDuringClearAll:Z

    .line 1092
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    .line 1093
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    .line 1094
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mIntercept:Z

    .line 125
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 123
    return-void
.end method

.method private animateStackViewClear(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/RecentsView$ClearCallBack;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 11
    .param p1, "cardRemoveTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    .param p2, "stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p3, "callBack"    # Lcom/flyme/systemui/recents/views/RecentsView$ClearCallBack;
    .param p4, "targetTask"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 990
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 992
    if-eqz p4, :cond_0

    .line 993
    invoke-virtual {p2, p4}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v6

    .line 994
    .local v6, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    if-nez v6, :cond_0

    .line 995
    iget-object v8, p2, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v8, p4, p4}, Lcom/flyme/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    check-cast v6, Lcom/flyme/systemui/recents/views/TaskView;

    .line 996
    .restart local v6    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v8, p2, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v9, p2, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 997
    iget-object v8, p2, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/flyme/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;I)V

    .line 1001
    .end local v6    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_0
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    new-array v5, v8, [Lcom/flyme/systemui/recents/views/TaskView;

    .line 1002
    .local v5, "taskViews":[Lcom/flyme/systemui/recents/views/TaskView;
    const/4 v0, 0x0

    .line 1003
    .local v0, "existLockCard":Z
    const/4 v3, 0x0

    .line 1004
    .local v3, "target":Lcom/flyme/systemui/recents/views/TaskView;
    const/4 v1, 0x0

    .end local v3    # "target":Lcom/flyme/systemui/recents/views/TaskView;
    .local v1, "i":I
    :goto_0
    array-length v8, v5

    if-ge v1, v8, :cond_3

    .line 1005
    invoke-virtual {p2, v1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/recents/views/TaskView;

    aput-object v8, v5, v1

    .line 1006
    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v4

    .line 1007
    .local v4, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v8, v4, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v8, :cond_2

    .line 1008
    aget-object v3, v5, v1

    .line 1004
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    :cond_2
    iget-boolean v8, v4, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    if-eqz v8, :cond_1

    .line 1010
    const/4 v0, 0x1

    goto :goto_1

    .line 1015
    .end local v4    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_3
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v9, v9, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v2, v8, v9

    .line 1016
    .local v2, "offscreenTranslationY":I
    if-eqz v3, :cond_4

    if-eqz v0, :cond_8

    .line 1017
    :cond_4
    array-length v8, v5

    add-int/lit8 v1, v8, -0x1

    :goto_2
    if-ltz v1, :cond_c

    .line 1018
    aget-object v7, v5, v1

    .line 1019
    .local v7, "view":Lcom/flyme/systemui/recents/views/TaskView;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1020
    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->optiShadow()V

    .line 1021
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1022
    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v8

    iget-boolean v8, v8, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v8, :cond_6

    .line 1017
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1024
    :cond_6
    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v8

    iget-boolean v8, v8, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    if-eqz v8, :cond_7

    .line 1026
    invoke-virtual {p2, v7, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->startLockedCardAnimaiton(Landroid/view/View;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_3

    .line 1029
    :cond_7
    int-to-float v8, v2

    invoke-virtual {p2, v7, v8, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->startDismissCardAnimaiton(Landroid/view/View;FLcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_3

    .line 1034
    .end local v7    # "view":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_8
    array-length v8, v5

    add-int/lit8 v1, v8, -0x1

    :goto_4
    if-ltz v1, :cond_c

    .line 1035
    aget-object v7, v5, v1

    .line 1036
    .restart local v7    # "view":Lcom/flyme/systemui/recents/views/TaskView;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1037
    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->optiShadow()V

    .line 1038
    if-ne v7, v3, :cond_a

    .line 1039
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1043
    :goto_5
    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v8

    iget-boolean v8, v8, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v8, :cond_b

    .line 1044
    const-wide/16 v8, 0x50

    invoke-virtual {p2, v7, p1, v8, v9}, Lcom/flyme/systemui/recents/views/TaskStackView;->startLaunchTaskAnimationForTarget(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;J)V

    .line 1045
    invoke-virtual {p2, v7}, Lcom/flyme/systemui/recents/views/TaskStackView;->mirror(Lcom/flyme/systemui/recents/views/TaskView;)V

    .line 1034
    :cond_9
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1041
    :cond_a
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/flyme/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    goto :goto_5

    .line 1048
    :cond_b
    int-to-float v8, v2

    invoke-virtual {p2, v7, v8, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->startDismissCardAnimaiton(Landroid/view/View;FLcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_6

    .line 1054
    .end local v7    # "view":Lcom/flyme/systemui/recents/views/TaskView;
    :cond_c
    invoke-interface {p3, v3, v0}, Lcom/flyme/systemui/recents/views/RecentsView$ClearCallBack;->onCallback(Lcom/flyme/systemui/recents/views/TaskView;Z)V

    .line 1056
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 989
    return-void
.end method


# virtual methods
.method public bindClearAll(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V
    .locals 1
    .param p1, "clearAll"    # Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->setClickable(Z)V

    .line 357
    new-instance v0, Lcom/flyme/systemui/recents/views/RecentsView$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/views/RecentsView$1;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1099
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 1100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1101
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1103
    .local v5, "y":F
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    .line 1104
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    .line 1105
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1106
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    invoke-virtual {p0, v4, v5, v6, v8}, Lcom/flyme/systemui/recents/views/RecentsView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    .line 1111
    :goto_0
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    if-eqz v6, :cond_2

    .line 1129
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    if-eqz v6, :cond_4

    .line 1130
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mTaskViewClearAll:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getX()F

    move-result v6

    neg-float v6, v6

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mTaskViewClearAll:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getY()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1131
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mTaskViewClearAll:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v6, p1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 1108
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_1
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mTaskViewClearAll:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {p0, v4, v5, v6, v8}, Lcom/flyme/systemui/recents/views/RecentsView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    goto :goto_0

    .line 1112
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 1113
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 1114
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1115
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v6, :cond_3

    move-object v3, v0

    .line 1116
    check-cast v3, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 1117
    .local v3, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1118
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mIntercept:Z

    .line 1119
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForClearAll:Z

    .line 1120
    iput-boolean v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    goto :goto_1

    .line 1113
    .end local v3    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1132
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_4
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mInterceptForExtend:Z

    if-eqz v6, :cond_5

    .line 1133
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    neg-float v6, v6

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1134
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 1135
    :cond_5
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mIntercept:Z

    if-eqz v6, :cond_6

    .line 1136
    const/4 v6, 0x1

    return v6

    .line 1138
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6
.end method

.method public launchFirstTask()Z
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    .line 292
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 293
    invoke-virtual {p0, v9}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 294
    .local v7, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_0

    move-object v1, v7

    .line 295
    check-cast v1, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 296
    .local v1, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    .line 297
    .local v3, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 301
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 303
    .local v11, "taskCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    if-lez v11, :cond_0

    .line 304
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/recents/model/Task;

    .line 305
    .local v4, "task":Lcom/flyme/systemui/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v2

    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    move-object v0, p0

    move v6, v5

    .line 306
    invoke-virtual/range {v0 .. v6}, Lcom/flyme/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V

    .line 307
    return v5

    .line 292
    .end local v1    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v10    # "j":I
    .end local v11    # "taskCount":I
    .end local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 312
    .end local v7    # "child":Landroid/view/View;
    :cond_1
    return v6
.end method

.method public launchHomeTask()Z
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    .line 233
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 234
    invoke-virtual {p0, v9}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 235
    .local v7, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_1

    move-object v1, v7

    .line 236
    check-cast v1, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 237
    .local v1, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    .line 238
    .local v3, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 239
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/recents/model/Task;

    .line 241
    .local v4, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v0, v4, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v1, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v2

    .line 243
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    if-nez v2, :cond_0

    .line 244
    iget-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v0, v4, v4}, Lcom/flyme/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 245
    .restart local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v11, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v11}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 246
    iget-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, v0, v6}, Lcom/flyme/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;I)V

    :cond_0
    move-object v0, p0

    .line 248
    invoke-virtual/range {v0 .. v6}, Lcom/flyme/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V

    .line 249
    return v5

    .line 233
    .end local v1    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 254
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    return v6
.end method

.method public launchPreviousTask()Z
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    .line 263
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 264
    invoke-virtual {p0, v9}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 265
    .local v7, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_1

    move-object v1, v7

    .line 266
    check-cast v1, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 267
    .local v1, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    .line 268
    .local v3, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 271
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/recents/model/Task;

    .line 273
    .local v4, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v0, v4, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v1, v4}, Lcom/flyme/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/flyme/systemui/recents/model/Task;)Lcom/flyme/systemui/recents/views/TaskView;

    move-result-object v2

    .line 275
    .local v2, "tv":Lcom/flyme/systemui/recents/views/TaskView;
    if-nez v2, :cond_0

    .line 276
    iget-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    invoke-virtual {v0, v4, v4}, Lcom/flyme/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    check-cast v2, Lcom/flyme/systemui/recents/views/TaskView;

    .line 277
    .restart local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    iget-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v11, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v11}, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransformDependOnProgress(FLcom/flyme/systemui/recents/views/TaskViewTransform;)Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .line 278
    iget-object v0, v1, Lcom/flyme/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/flyme/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, v0, v6}, Lcom/flyme/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/flyme/systemui/recents/views/TaskViewTransform;I)V

    :cond_0
    move-object v0, p0

    .line 280
    invoke-virtual/range {v0 .. v6}, Lcom/flyme/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V

    .line 281
    return v5

    .line 263
    .end local v1    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/flyme/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 286
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    return v6
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 671
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 433
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->requestLayout()V

    .line 434
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onClearAll()V
    .locals 15

    .prologue
    .line 837
    iget-boolean v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mDuringClearAll:Z

    if-eqz v11, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mDuringClearAll:Z

    .line 842
    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/flyme/systemui/recents/RecentsConfiguration;->isMistaskEnter:Z

    .line 843
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v11

    new-instance v12, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v11, v12}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 846
    const/4 v10, 0x0

    .line 847
    .local v10, "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v2

    .line 848
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 849
    invoke-virtual {p0, v5}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 850
    .local v1, "child":Landroid/view/View;
    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v1, v11, :cond_3

    move-object v10, v1

    .line 851
    check-cast v10, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 855
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_1
    move-object v6, v10

    .line 856
    .local v6, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    const/4 v11, -0x1

    const/4 v12, -0x1

    filled-new-array {v11, v12}, [I

    move-result-object v7

    .line 858
    .local v7, "targetID":[I
    if-eqz v6, :cond_2

    iget-object v11, v6, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    if-nez v11, :cond_4

    .line 859
    :cond_2
    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v11}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onDismissRecentsToFocusedTaskOrHome()V

    .line 860
    return-void

    .line 848
    .end local v6    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    .end local v7    # "targetID":[I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v10    # "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    .restart local v6    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    .restart local v7    # "targetID":[I
    :cond_4
    iget-object v11, v6, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_2

    .line 862
    iget-object v11, v6, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 865
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    new-instance v3, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/flyme/systemui/recents/views/RecentsView$8;

    invoke-direct {v12, p0}, Lcom/flyme/systemui/recents/views/RecentsView$8;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;)V

    const/4 v13, 0x0

    .line 881
    const/4 v14, 0x0

    .line 865
    invoke-direct {v3, v11, v13, v12, v14}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 882
    .local v3, "completedTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    const/4 v4, 0x0

    .line 883
    .local v4, "goalTask":Lcom/flyme/systemui/recents/model/Task;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/recents/model/Task;

    .line 884
    .local v8, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v11, v8, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    if-nez v11, :cond_5

    iget-boolean v11, v8, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v11, :cond_6

    .line 885
    :cond_5
    move-object v4, v8

    .line 887
    .end local v4    # "goalTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_6
    if-eqz v4, :cond_7

    .line 888
    iget-object v11, v4, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v11, v11, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v12, 0x0

    aput v11, v7, v12

    .line 889
    iget-object v11, v4, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v11, :cond_7

    .line 890
    iget-object v11, v4, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flyme/systemui/recents/model/Task;

    iget-object v11, v11, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v11, v11, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v12, 0x1

    aput v11, v7, v12

    .line 895
    :cond_7
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 896
    new-instance v0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/flyme/systemui/recents/views/RecentsView$9;

    invoke-direct {v12, p0, v7, v3}, Lcom/flyme/systemui/recents/views/RecentsView$9;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;[ILcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    const/4 v13, 0x0

    .line 941
    const/4 v14, 0x0

    .line 896
    invoke-direct {v0, v11, v13, v12, v14}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 942
    .local v0, "cardRemoveTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 943
    new-instance v11, Lcom/flyme/systemui/recents/views/RecentsView$10;

    invoke-direct {v11, p0, v6}, Lcom/flyme/systemui/recents/views/RecentsView$10;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/views/TaskStackView;)V

    invoke-direct {p0, v0, v6, v11, v4}, Lcom/flyme/systemui/recents/views/RecentsView;->animateStackViewClear(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/RecentsView$ClearCallBack;Lcom/flyme/systemui/recents/model/Task;)V

    .line 981
    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v11, :cond_8

    .line 982
    iget-object v11, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v11, v0}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onClearAll(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 986
    :goto_1
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 836
    return-void

    .line 984
    :cond_8
    const-string/jumbo v11, "recents.RecentsView"

    const-string/jumbo v12, "!!! error : callback is null !!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 420
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 421
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p3

    .line 423
    invoke-virtual {v0, p2, p3, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 420
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 391
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 392
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 393
    .local v2, "height":I
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/flyme/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 394
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/RecentsView;->cacheTaskStackBounds:Landroid/graphics/Rect;

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 395
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/RecentsView;->cacheTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 400
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 401
    invoke-virtual {p0, v8}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 402
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move-object v9, v6

    .line 403
    check-cast v9, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 405
    .local v9, "tsv":Lcom/flyme/systemui/recents/views/TaskStackView;
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->cacheTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/flyme/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 406
    invoke-virtual {v9, p1, p2}, Lcom/flyme/systemui/recents/views/TaskStackView;->measure(II)V

    .line 400
    .end local v9    # "tsv":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 409
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 389
    return-void
.end method

.method public onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 5
    .param p1, "monitor"    # Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 1071
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1072
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 1074
    check-cast v3, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 1075
    .local v3, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1, p2, p3}, Lcom/flyme/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 1071
    .end local v3    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1068
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onRecentsHidden()V
    .locals 5

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 681
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 682
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 683
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 684
    check-cast v3, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 685
    .local v3, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    .line 681
    .end local v3    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;)V
    .locals 11
    .param p1, "stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;

    .prologue
    const/4 v10, 0x0

    .line 734
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    new-instance v8, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 735
    invoke-virtual {p2}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v6

    .line 737
    .local v6, "task":Lcom/flyme/systemui/recents/model/Task;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v1, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v7, v6, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 740
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 741
    const/high16 v7, 0x10200000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 742
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v8, 0x7f05007f

    const v9, 0x7f050080

    invoke-static {v7, v8, v9}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 743
    .local v5, "opts":Landroid/app/ActivityOptions;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .local v4, "intent":Landroid/content/Intent;
    const v7, 0x10208000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string/jumbo v7, "MobEventUtils"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    new-instance v0, Lcom/flyme/systemui/recents/views/RecentsView$5;

    invoke-direct {v0, p0, v6, v5, v4}, Lcom/flyme/systemui/recents/views/RecentsView$5;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/model/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 814
    .local v0, "animationCompeleted":Ljava/lang/Runnable;
    new-instance v3, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 815
    new-instance v8, Lcom/flyme/systemui/recents/views/RecentsView$6;

    invoke-direct {v8, p0, v0}, Lcom/flyme/systemui/recents/views/RecentsView$6;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Ljava/lang/Runnable;)V

    .line 814
    invoke-direct {v3, v7, v10, v8, v10}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 821
    .local v3, "compeletedTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p2, v7}, Lcom/flyme/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 823
    new-instance v7, Lcom/flyme/systemui/recents/views/RecentsView$7;

    invoke-direct {v7, p0, p1, p2, v3}, Lcom/flyme/systemui/recents/views/RecentsView$7;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-static {v7, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V

    .line 733
    return-void
.end method

.method public onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V
    .locals 8
    .param p1, "stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/flyme/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p5, "needAnimation"    # Z
    .param p6, "isTouchToExit"    # Z

    .prologue
    const/4 v7, 0x0

    .line 512
    if-nez p4, :cond_0

    .line 513
    const-string/jumbo v4, "recents.RecentsView"

    const-string/jumbo v5, "onTaskViewClicked : task is null (task is removed)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 515
    :cond_0
    iget-object v4, p4, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    if-nez v4, :cond_4

    .line 516
    iget-object v4, p4, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_1

    .line 517
    const-string/jumbo v4, "recents.RecentsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTaskViewClicked : task.group is null (task is removed) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 518
    iget-object v6, p4, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v6

    .line 517
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->isMistaskEnter:Z

    if-eqz v4, :cond_2

    .line 525
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p4, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v5, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->isMistaskEnter:Z

    .line 528
    :cond_2
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 530
    :try_start_0
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    iget-object v5, p4, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p4, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetClickAppInRecents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_1
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v4, :cond_3

    .line 536
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked()V

    .line 539
    :cond_3
    new-instance v0, Lcom/flyme/systemui/recents/views/RecentsView$2;

    invoke-direct {v0, p0, p4}, Lcom/flyme/systemui/recents/views/RecentsView$2;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/model/Task;)V

    .line 595
    .local v0, "animationCompeleted":Ljava/lang/Runnable;
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 598
    new-instance v1, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 599
    new-instance v5, Lcom/flyme/systemui/recents/views/RecentsView$3;

    invoke-direct {v5, p0, v0}, Lcom/flyme/systemui/recents/views/RecentsView$3;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Ljava/lang/Runnable;)V

    .line 598
    invoke-direct {v1, v4, v7, v5, v7}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 605
    .local v1, "compeletedTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4}, Lcom/flyme/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 610
    new-instance v3, Lcom/flyme/systemui/recents/views/RecentsView$4;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/flyme/systemui/recents/views/RecentsView$4;-><init>(Lcom/flyme/systemui/recents/views/RecentsView;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 618
    .local v3, "r":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    invoke-static {v3, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V

    .line 511
    .end local v1    # "compeletedTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    .end local v3    # "r":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :goto_2
    return-void

    .line 521
    .end local v0    # "animationCompeleted":Ljava/lang/Runnable;
    :cond_4
    const-string/jumbo v4, "recents.RecentsView"

    const-string/jumbo v5, "onTaskViewClicked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 596
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "animationCompeleted":Ljava/lang/Runnable;
    :cond_5
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public onTaskViewDismissed(Lcom/flyme/systemui/recents/model/Task;)V
    .locals 11
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 641
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 642
    .local v3, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/flyme/systemui/recents/model/Task;Z)V

    .line 645
    const/4 v6, 0x0

    .line 646
    .local v6, "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 647
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 648
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 649
    .local v0, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v7, :cond_1

    move-object v6, v0

    .line 650
    check-cast v6, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 654
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_0
    move-object v5, v6

    .line 656
    .local v5, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    iget-object v7, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v7, :cond_2

    .line 657
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 658
    move v4, v2

    .line 659
    .local v4, "locI":I
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/model/Task;

    iget-object v10, v5, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v9, v7, v10}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskByTask(Landroid/content/Context;Lcom/flyme/systemui/recents/model/Task;Ljava/util/List;)V

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 647
    .end local v4    # "locI":I
    .end local v5    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "view":Lcom/flyme/systemui/recents/views/TaskStackView;
    .restart local v5    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_2
    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    iget-object v9, v5, Lcom/flyme/systemui/recents/views/TaskStackView;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v8, p1, v9}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskByTask(Landroid/content/Context;Lcom/flyme/systemui/recents/model/Task;Ljava/util/List;)V

    .line 665
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    iget-object v7, p1, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    :goto_2
    invoke-static {v8, v7}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearSingle(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    new-instance v8, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskRemoveEvent;

    invoke-direct {v8}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskRemoveEvent;-><init>()V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 637
    return-void

    .line 665
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_2
.end method

.method public setCallbacks(Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 132
    return-void
.end method

.method public setDebugOverlay(Lcom/flyme/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/flyme/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

    .line 139
    return-void
.end method

.method public setExtendView(Landroid/view/View;)V
    .locals 0
    .param p1, "extendView"    # Landroid/view/View;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mExtendView:Landroid/view/View;

    .line 1087
    return-void
.end method

.method public setMainView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mMainView:Landroid/view/View;

    .line 726
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 375
    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 150
    .local v3, "numStacks":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v7, "stackViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/views/TaskStackView;>;"
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 152
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_0

    .line 155
    check-cast v0, Lcom/flyme/systemui/recents/views/TaskStackView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v4, 0x0

    .line 161
    .local v4, "numTaskStacksToKeep":I
    iget-object v10, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v10, :cond_2

    .line 162
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 164
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    :goto_1
    if-lt v2, v4, :cond_3

    .line 165
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/flyme/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 170
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    .line 171
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 173
    .local v8, "tsv":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {v8}, Lcom/flyme/systemui/recents/views/TaskStackView;->reset()V

    .line 174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v10}, Lcom/flyme/systemui/recents/views/TaskStackView;->setStack(Lcom/flyme/systemui/recents/model/TaskStack;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    .end local v8    # "tsv":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_4
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v2, v3, :cond_5

    .line 180
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flyme/systemui/recents/model/TaskStack;

    .line 181
    .local v5, "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    new-instance v6, Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v5}, Lcom/flyme/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/flyme/systemui/recents/model/TaskStack;)V

    .line 182
    .local v6, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {v6, p0}, Lcom/flyme/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 183
    invoke-virtual {p0, v6}, Lcom/flyme/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 187
    .end local v5    # "stack":Lcom/flyme/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_5
    iget-object v10, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/flyme/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v10, :cond_7

    .line 188
    add-int/lit8 v2, v1, -0x1

    :goto_4
    if-ltz v2, :cond_7

    .line 189
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 190
    .local v9, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v9, v10, :cond_6

    move-object v6, v9

    .line 191
    check-cast v6, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 192
    .restart local v6    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    iget-object v10, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v6, v10}, Lcom/flyme/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/flyme/systemui/recents/views/DebugOverlayView;)V

    .line 188
    .end local v6    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 198
    .end local v9    # "v":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->requestLayout()V

    .line 146
    return-void
.end method

.method public setTaskViewClearAll(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V
    .locals 0
    .param p1, "taskViewClearAll"    # Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mTaskViewClearAll:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    .line 1083
    return-void
.end method

.method public setWorkHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mWorkHandler:Landroid/os/Handler;

    .line 722
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 321
    iget-object v4, p1, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 322
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 323
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 324
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 326
    check-cast v3, Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 327
    .local v3, "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/flyme/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 323
    .end local v3    # "stackView":Lcom/flyme/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 333
    iget-object v4, p0, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 318
    return-void
.end method
