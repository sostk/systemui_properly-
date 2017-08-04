.class Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayStartSwapTwoViewsPos"
.end annotation


# instance fields
.field private mDragView:Landroid/view/View;

.field private mDropView:Landroid/view/View;

.field private mHostView:Landroid/view/ViewGroup;

.field private mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

.field private mSwapDelay:J

.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/ViewGroup;Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "swapViewsPositionListener"    # Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;
    .param p4, "host"    # Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    .line 987
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    .line 988
    new-instance v0, Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-direct {v0, p4}, Lcom/flyme/systemui/qs/SwapAnimationController;-><init>(Lcom/flyme/systemui/qs/SwapAnimationController$ISwappableViewHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    .line 989
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-virtual {v0, p3}, Lcom/flyme/systemui/qs/SwapAnimationController;->addListener(Lcom/flyme/systemui/qs/SwapAnimationController$ISwapViewsPositionListener;)V

    .line 985
    return-void
.end method


# virtual methods
.method public cancleSwap()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/SwapAnimationController;->cancelAnimator()V

    .line 1038
    return-void
.end method

.method public isSwapping()Z
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/SwapAnimationController;->isSwapping()Z

    move-result v0

    return v0
.end method

.method public prepareMyself()Z
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public removeMyself()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1020
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/qs/SwapAnimationController;->swap(Landroid/view/View;Landroid/view/View;)V

    .line 1026
    return-void
.end method

.method public setSwapDelay(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 994
    iget-wide v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 995
    iput-wide p1, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    .line 992
    :cond_0
    return-void
.end method

.method public setSwapDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapAnimationController:Lcom/flyme/systemui/qs/SwapAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/flyme/systemui/qs/SwapAnimationController;->setDuration(J)V

    .line 999
    return-void
.end method

.method public swap(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "dropView"    # Landroid/view/View;

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->removeMyself()V

    .line 1009
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    .line 1010
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-wide v2, p0, Lcom/android/systemui/qs/QSPanel$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1004
    return-void
.end method
