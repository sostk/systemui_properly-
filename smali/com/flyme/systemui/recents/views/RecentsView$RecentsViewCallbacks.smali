.class public interface abstract Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.super Ljava/lang/Object;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsViewCallbacks"
.end annotation


# virtual methods
.method public abstract onAllTaskViewsDismissed()V
.end method

.method public abstract onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V
.end method

.method public abstract onClearAll(Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end method

.method public abstract onDismissRecentsToFocusedTaskOrHome()V
.end method

.method public abstract onExitToHomeAnimationTriggered()V
.end method

.method public abstract onTaskLaunchFailed()V
.end method

.method public abstract onTaskViewClicked()V
.end method
