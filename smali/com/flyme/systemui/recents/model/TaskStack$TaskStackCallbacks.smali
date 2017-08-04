.class public interface abstract Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskStackCallbacks"
.end annotation


# virtual methods
.method public abstract onStackTaskAdded(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;)V
.end method

.method public abstract onStackTaskRemoved(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;Lcom/flyme/systemui/recents/model/Task;)V
.end method

.method public abstract onStackUnfiltered(Lcom/flyme/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation
.end method
