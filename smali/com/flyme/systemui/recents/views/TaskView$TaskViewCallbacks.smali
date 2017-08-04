.class interface abstract Lcom/flyme/systemui/recents/views/TaskView$TaskViewCallbacks;
.super Ljava/lang/Object;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskViewCallbacks"
.end annotation


# virtual methods
.method public abstract onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskView;)V
.end method

.method public abstract onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;Z)V
.end method

.method public abstract onTaskViewClipStateChanged(Lcom/flyme/systemui/recents/views/TaskView;)V
.end method

.method public abstract onTaskViewFocusChanged(Lcom/flyme/systemui/recents/views/TaskView;Z)V
.end method
