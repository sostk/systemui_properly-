.class public Lcom/flyme/systemui/recents/views/TaskViewClearAll;
.super Landroid/widget/FrameLayout;
.source "TaskViewClearAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/views/TaskViewClearAll$1;
    }
.end annotation


# static fields
.field private static MEM_OFFSET:J


# instance fields
.field clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

.field clearAllIconView:Landroid/widget/ImageView;

.field clearAllTextView:Landroid/widget/TextView;

.field goalP:F

.field goalS:Ljava/lang/String;

.field mClearAllRect:Landroid/graphics/RectF;

.field mDuringTaskRemoved:Z

.field mFirstSetText:Z

.field mServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field mUpdateMemCircleRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/recents/views/TaskViewClearAll;J)V
    .locals 1
    .param p1, "calculateReleaseMem"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->updateReleaseMemText(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->MEM_OFFSET:J

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mClearAllRect:Landroid/graphics/RectF;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mDuringTaskRemoved:Z

    .line 41
    new-instance v0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$1;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mUpdateMemCircleRunnable:Ljava/lang/Runnable;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mFirstSetText:Z

    .line 48
    return-void
.end method

.method private getMemP()F
    .locals 8

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 204
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 205
    .local v1, "meminfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 208
    sget-wide v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->MEM_OFFSET:J

    .line 209
    .local v2, "offset":J
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sub-long/2addr v4, v2

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sub-long/2addr v6, v2

    long-to-float v5, v6

    div-float/2addr v4, v5

    return v4
.end method

.method private updateReleaseMemText(J)V
    .locals 5
    .param p1, "calculateReleaseMem"    # J

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mFirstSetText:Z

    if-eqz v0, :cond_0

    .line 263
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mFirstSetText:Z

    .line 264
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 267
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0900c2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    invoke-direct {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getMemP()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->updateProgress(F)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->goalP:F

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->goalS:Ljava/lang/String;

    .line 77
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mUpdateMemCircleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;->getReleaseMem()J

    move-result-wide v0

    .line 235
    .local v0, "releaseMem":J
    new-instance v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;J)V

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;->getReleaseMem()J

    move-result-wide v0

    .line 225
    .local v0, "releaseMem":J
    new-instance v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;J)V

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskRemoveEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskRemoveEvent;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->startAnimationWhenTaskRemoved()V

    .line 248
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mUpdateMemCircleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mUpdateMemCircleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;

    .prologue
    .line 253
    iget-object v1, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->mTaskView:Lcom/flyme/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/TaskView;->getTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v0

    .line 254
    .local v0, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-object v1, v0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getCalculateReleaseMem()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->updateReleaseMemText(J)V

    .line 252
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, v0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/flyme/systemui/recents/events/ui/RecentsExtendEvents$LockEvent;->isLocked:Z

    invoke-virtual {v1, v2, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->updateCalculateReleaseMemWhileLockChange(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f0f01ee

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0f01ef

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0f01ed

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    .line 73
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 68
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 55
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 56
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    .line 57
    .local v1, "parentX":F
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    .line 58
    .local v2, "parentY":F
    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mClearAllRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getX()F

    move-result v6

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getY()F

    move-result v7

    add-float/2addr v7, v2

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mClearAllRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mClearAllRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 53
    return-void
.end method

.method public startAnimationWhenTaskRemoved()V
    .locals 4

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mDuringTaskRemoved:Z

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mDuringTaskRemoved:Z

    .line 215
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/views/TaskViewClearAll$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$5;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 212
    return-void
.end method

.method public startClearAllAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 5
    .param p1, "completedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mUpdateMemCircleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 124
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->getProgress()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 125
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskViewClearAll$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$2;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v1, Lcom/flyme/systemui/recents/views/TaskViewClearAll$3;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$3;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 119
    return-void
.end method

.method public startExitRecentsAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 4
    .param p1, "exitTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 109
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 111
    const-wide/16 v2, 0x0

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v1

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 104
    return-void
.end method

.method public updateMemCircle()V
    .locals 7

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->getMemP()F

    move-result v1

    .line 188
    .local v1, "localP":F
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->getProgress()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 189
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->getProgress()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3df5c28f    # 0.12f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    new-instance v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll$4;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAll$4;-><init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 186
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method
