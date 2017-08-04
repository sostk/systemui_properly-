.class interface abstract Lcom/flyme/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
.super Ljava/lang/Object;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskStackViewCallbacks"
.end annotation


# virtual methods
.method public abstract onAllTaskViewsDismissed()V
.end method

.method public abstract onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;)V
.end method

.method public abstract onTaskViewClicked(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;ZZ)V
.end method

.method public abstract onTaskViewDismissed(Lcom/flyme/systemui/recents/model/Task;)V
.end method
