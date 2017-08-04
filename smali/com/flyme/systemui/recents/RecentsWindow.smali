.class public abstract Lcom/flyme/systemui/recents/RecentsWindow;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.implements Lcom/flyme/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/RecentsWindow$1;,
        Lcom/flyme/systemui/recents/RecentsWindow$2;,
        Lcom/flyme/systemui/recents/RecentsWindow$3;,
        Lcom/flyme/systemui/recents/RecentsWindow$4;
    }
.end annotation


# static fields
.field static mInstance:Lcom/flyme/systemui/recents/RecentsWindow;


# instance fields
.field final DEFAULT_LENGTH:F

.field canScroll:Z

.field private contentView:Landroid/view/View;

.field enterAnimation:Landroid/animation/ValueAnimator;

.field isDuringDismis:Z

.field lastComputeTime:J

.field final launchHomeRunnable:Ljava/lang/Runnable;

.field mClearAllView:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field private mContext:Landroid/content/Context;

.field mDebugOverlay:Lcom/flyme/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field public mInitPosition:F

.field private mMainViewGroup:Landroid/view/ViewGroup;

.field mP:F

.field mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mTouchInterpolator:Landroid/view/animation/Interpolator;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkHandlerThread:Landroid/os/HandlerThread;

.field realPosition:F

.field scrollRunnable:Ljava/lang/Runnable;

.field shouldSkipCompute:Z

.field touchLength:F

.field touchMergeTop:F

.field public touchPosition:F


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/recents/RecentsWindow;F)V
    .locals 0
    .param p1, "p"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/RecentsWindow;->setPosition(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/flyme/systemui/recents/RecentsWindow$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsWindow$1;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/flyme/systemui/recents/RecentsWindow$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsWindow$2;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    iput v5, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mInitPosition:F

    .line 319
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->DEFAULT_LENGTH:F

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->canScroll:Z

    .line 346
    new-instance v0, Lcom/flyme/systemui/recents/RecentsWindow$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsWindow$3;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->scrollRunnable:Ljava/lang/Runnable;

    .line 358
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mTouchInterpolator:Landroid/view/animation/Interpolator;

    .line 414
    iput v5, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mP:F

    .line 600
    new-instance v0, Lcom/flyme/systemui/recents/RecentsWindow$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsWindow$4;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->launchHomeRunnable:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    .line 139
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f040098

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    .line 140
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v1, 0x7f0f01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 136
    :cond_0
    return-void
.end method

.method private setPosition(F)V
    .locals 2
    .param p1, "p"    # F

    .prologue
    .line 522
    iput p1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mP:F

    .line 523
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$UpdateEnterAnimationP;

    invoke-direct {v1, p1}, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$UpdateEnterAnimationP;-><init>(F)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 521
    return-void
.end method


# virtual methods
.method computeRealPosition()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 379
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->shouldSkipCompute:Z

    if-eqz v1, :cond_0

    .line 380
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    iput v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    .line 381
    return v8

    .line 384
    :cond_0
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    iget v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 385
    iput-boolean v9, p0, Lcom/flyme/systemui/recents/RecentsWindow;->shouldSkipCompute:Z

    .line 386
    return v8

    .line 389
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 390
    .local v2, "time":J
    iget-wide v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->lastComputeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x5

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 391
    return v8

    .line 393
    :cond_2
    iput-wide v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->lastComputeTime:J

    .line 395
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    iget v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 396
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    iput v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    .line 397
    iput-boolean v9, p0, Lcom/flyme/systemui/recents/RecentsWindow;->shouldSkipCompute:Z

    .line 398
    return v8

    .line 400
    :cond_3
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    const v5, 0x3d4ccccd    # 0.05f

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 401
    .local v0, "max":F
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 402
    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    .line 403
    return v9

    .line 405
    :cond_4
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    iput v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->realPosition:F

    .line 406
    iput-boolean v9, p0, Lcom/flyme/systemui/recents/RecentsWindow;->shouldSkipCompute:Z

    .line 407
    return v8
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 2
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 580
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    return v1

    .line 583
    :cond_0
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHomeRaw(Z)Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .line 584
    return v1
.end method

.method dismissRecentsToHome(Z)Z
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 591
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 592
    .local v0, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHomeRaw(Z)Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .line 595
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToHomeRaw(Z)Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v3, 0x0

    .line 619
    if-eqz p1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/RecentsView;->launchHomeTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 621
    :cond_0
    new-instance v0, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    .line 622
    new-instance v2, Lcom/flyme/systemui/recents/RecentsWindow$10;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/recents/RecentsWindow$10;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    .line 621
    invoke-direct {v0, v1, v3, v2, v3}, Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 629
    .local v0, "exitTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    .line 630
    new-instance v2, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 629
    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/flyme/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 631
    return-object v0

    .line 634
    .end local v0    # "exitTrigger":Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->launchHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindow(Ljava/lang/Runnable;)V

    .line 635
    return-object v3
.end method

.method public final dismissStage()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->onDissmis()V

    .line 158
    return-void
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public final isShow()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public onAllTaskViewsDismissed()V
    .locals 6

    .prologue
    .line 700
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 702
    const/4 v0, 0x0

    .line 704
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 705
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 706
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    sget-boolean v3, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumed:Z

    if-eqz v3, :cond_0

    .line 712
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;

    invoke-direct {v4, v0}, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 716
    :goto_1
    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->launchHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V

    .line 699
    return-void

    .line 707
    :catch_0
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 709
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 714
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setImageCache(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onAlphaToExitWindow(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$11;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/recents/RecentsWindow$11;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    .line 720
    :cond_0
    return-void
.end method

.method public onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 743
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    if-nez v1, :cond_0

    .line 746
    new-instance v0, Lcom/flyme/systemui/recents/RecentsWindow$12;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/recents/RecentsWindow$12;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;Ljava/lang/Runnable;)V

    .line 764
    .local v0, "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V

    .line 765
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    .line 742
    .end local v0    # "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :cond_0
    return-void
.end method

.method public onAlphaToExitWindowWithAnimation()V
    .locals 4

    .prologue
    .line 771
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$13;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$13;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    .line 770
    :cond_0
    return-void
.end method

.method public onClearAll(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 1
    .param p1, "completedTrigger"    # Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 791
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mClearAllView:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->startClearAllAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 790
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 168
    sget-object v2, Lcom/flyme/systemui/recents/RecentsWindow;->mInstance:Lcom/flyme/systemui/recents/RecentsWindow;

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/flyme/systemui/recents/RecentsWindow;->mInstance:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/RecentsWindow;->onError()V

    .line 171
    :cond_0
    sput-object p0, Lcom/flyme/systemui/recents/RecentsWindow;->mInstance:Lcom/flyme/systemui/recents/RecentsWindow;

    .line 173
    const-string/jumbo v2, "recents.RecentsWindow"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 176
    .local v1, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/flyme/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 178
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v3, 0x7f0f01e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    .line 179
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v2, p0}, Lcom/flyme/systemui/recents/views/RecentsView;->setCallbacks(Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 180
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v3, 0x7f0f01e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 181
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v3, 0x7f0f01ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 183
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v3, 0x7f0f01ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mClearAllView:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    .line 184
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mClearAllView:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView;->setTaskViewClearAll(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V

    .line 185
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v4, 0x7f0f01f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView;->setExtendView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->inflateDebugOverlay()V

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 271
    const/4 v1, 0x0

    sput-object v1, Lcom/flyme/systemui/recents/RecentsWindow;->mInstance:Lcom/flyme/systemui/recents/RecentsWindow;

    .line 273
    const-string/jumbo v1, "recents.RecentsWindow"

    const-string/jumbo v2, "RecentsWindow: onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 283
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/systemui/recents/Recents;->onTrimMemory(I)V

    .line 270
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDismissRecentsToFocusedTaskOrHome()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToFocusedTaskOrHome(Z)Z

    .line 785
    return-void
.end method

.method public abstract onDissmis()V
.end method

.method protected onError()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    const-string/jumbo v2, "recents.RecentsWindow"

    const-string/jumbo v3, "!!! This log means Two recents onCreate !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 290
    .local v1, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    :goto_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 306
    iput-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandler:Landroid/os/Handler;

    .line 307
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v2, v4}, Lcom/flyme/systemui/recents/views/RecentsView;->setWorkHandler(Landroid/os/Handler;)V

    .line 309
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->onDestroy()V

    .line 286
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;

    .prologue
    .line 842
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToFocusedTaskOrHome(Z)Z

    .line 841
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;

    .prologue
    const/4 v2, 0x1

    .line 847
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mClearAllView:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHomeRaw(Z)Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->startExitRecentsAnimation(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 846
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityToOther;)V
    .locals 2
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityToOther;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 867
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$14;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$14;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 864
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$RequestFocus;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$RequestFocus;

    .prologue
    .line 852
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 854
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x9000600

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 858
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v2, v1, Landroid/view/MeizuLayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/MeizuLayoutParams;->flags:I

    .line 859
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 860
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    .line 859
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$TouchToExit;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$TouchToExit;

    .prologue
    .line 877
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/RecentsView;->launchFirstTask()Z

    .line 876
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;)V
    .locals 3
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;

    .prologue
    const/4 v2, 0x1

    .line 325
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/events/ui/EnterAnimationEvents$OnAnimationInited;->onlyOneCard:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mInitPosition:F

    .line 331
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    .line 342
    :goto_1
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->canScroll:Z

    .line 343
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 324
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mInitPosition:F

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->BOTTOM:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    if-ne v0, v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    .line 335
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    .line 336
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchMergeTop:F

    goto :goto_1

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    .line 339
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchMergeTop:F

    goto :goto_1
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownBeginEvent;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v1, 0x7f0f01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 882
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownEndEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/ui/TaskDragDownEvents$OnDragDownEndEvent;

    .prologue
    .line 887
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    const v1, 0x7f0f01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 886
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 658
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 663
    return-void
.end method

.method public abstract onShow()V
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 196
    const-string/jumbo v2, "recents.RecentsWindow"

    const-string/jumbo v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/flyme/systemui/recents/model/RunningScapture;->capture()Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 198
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 199
    .local v0, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 200
    .local v1, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/flyme/systemui/recents/FlymeRecents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 206
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->updateRecentsTasks()V

    .line 215
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mClearAllView:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView;->bindClearAll(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V

    .line 216
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "recensWorkThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandlerThread:Landroid/os/HandlerThread;

    .line 217
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandler:Landroid/os/Handler;

    .line 219
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView;->setWorkHandler(Landroid/os/Handler;)V

    .line 220
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView;->setMainView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->showStage()V

    .line 225
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->isMistaskEnter:Z

    .line 226
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->enterTime:J

    .line 227
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    new-instance v3, Lcom/flyme/systemui/recents/RecentsWindow$5;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/recents/RecentsWindow$5;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 237
    const-string/jumbo v4, "recents.RecentsWindow"

    const-string/jumbo v5, "onStop"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/flyme/systemui/recents/model/RunningScapture;->reset()V

    .line 240
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 241
    .local v2, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 242
    .local v3, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/flyme/systemui/recents/FlymeRecents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 245
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 248
    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 254
    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 255
    iput-object v6, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mWorkHandler:Landroid/os/Handler;

    .line 256
    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v6}, Lcom/flyme/systemui/recents/views/RecentsView;->setWorkHandler(Landroid/os/Handler;)V

    .line 258
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissStage()V

    .line 261
    :try_start_0
    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/flyme/systemui/recents/RecentsConfiguration;->isMistaskEnter:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-wide v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->enterTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 262
    .local v1, "isMistakEnter":Z
    :goto_0
    iget-object v4, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/flyme/systemui/recents/RecentsConfiguration;->tasksNum:I

    iget-object v6, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-object v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectEnterMultiTask(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "isMistakEnter":Z
    :goto_1
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->onDestroy()V

    .line 236
    return-void

    .line 261
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isMistakEnter":Z
    goto :goto_0

    .line 263
    .end local v1    # "isMistakEnter":Z
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onTaskLaunchFailed()V
    .locals 2

    .prologue
    .line 691
    const-string/jumbo v0, "recents.RecentsWindow"

    const-string/jumbo v1, "RecentsWindow: onTaskLaunchFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHomeRaw(Z)Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;

    .line 689
    return-void
.end method

.method public onTaskViewClicked()V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public final showStage()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsWindow;->onShow()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->isDuringDismis:Z

    .line 150
    return-void
.end method

.method public startEnterAnimation()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 417
    const-string/jumbo v0, "recents.RecentsWindow"

    const-string/jumbo v1, "startEnterAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    invoke-direct {v1, v4}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 421
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 425
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mP:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    .line 426
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mP:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 427
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$6;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$6;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$7;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$7;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 416
    return-void
.end method

.method public startExitAnimation()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 477
    const-string/jumbo v0, "recents.RecentsWindow"

    const-string/jumbo v1, "startExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 481
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 483
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mP:F

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    .line 484
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$8;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$8;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mP:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v2, 0x43af0000    # 350.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/recents/RecentsWindow$9;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsWindow$9;-><init>(Lcom/flyme/systemui/recents/RecentsWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 518
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->enterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 476
    return-void
.end method

.method public updateEnterStage(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 360
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->canScroll:Z

    if-nez v0, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 364
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchMergeTop:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchLength:F

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    .line 365
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mTouchInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    .line 371
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->shouldSkipCompute:Z

    if-nez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow;->scrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 359
    :goto_1
    return-void

    .line 367
    :cond_1
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mInitPosition:F

    sub-float/2addr v0, p1

    const/high16 v1, 0x44160000    # 600.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    .line 368
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->touchPosition:F

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow;->scrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method updateRecentsTasks()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 534
    .local v8, "time":J
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 535
    .local v3, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/flyme/systemui/recents/FlymeRecents;->consumeInstanceLoadPlan()Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 536
    .local v4, "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    new-instance v2, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 537
    .local v2, "loadOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v7, v2, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 538
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v7, v2, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 539
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 541
    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/flyme/systemui/recents/model/SpaceNode;

    move-result-object v5

    .line 542
    .local v5, "root":Lcom/flyme/systemui/recents/model/SpaceNode;
    invoke-virtual {v5}, Lcom/flyme/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .line 543
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/TaskStack;>;"
    invoke-virtual {v5}, Lcom/flyme/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v0

    .line 544
    .local v0, "hasTasks":Z
    if-eqz v0, :cond_0

    .line 547
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v7, v6}, Lcom/flyme/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 549
    :cond_0
    iget-object v11, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    if-eqz v0, :cond_3

    move v7, v10

    :goto_0
    iput-boolean v7, v11, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 552
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const/high16 v7, 0x10200000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v7, :cond_4

    .line 559
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-nez v7, :cond_1

    .line 560
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    .line 562
    :cond_1
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mRecentsView:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v7, v13}, Lcom/flyme/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 571
    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "load while activity create spend : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/systemui/recents/Constants;->pfmLog(Ljava/lang/String;)V

    .line 573
    iget-object v11, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v11, Lcom/flyme/systemui/recents/RecentsConfiguration;->tasksNum:I

    .line 530
    return-void

    .line 549
    .end local v1    # "homeIntent":Landroid/content/Intent;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 565
    .restart local v1    # "homeIntent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 566
    iget-object v7, p0, Lcom/flyme/systemui/recents/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
