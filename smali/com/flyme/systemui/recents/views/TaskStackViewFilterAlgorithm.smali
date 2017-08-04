.class public Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"


# instance fields
.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

.field mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flyme/systemui/recents/views/ViewPool",
            "<",
            "Lcom/flyme/systemui/recents/views/TaskView;",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/ViewPool;)V
    .locals 0
    .param p1, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;
    .param p2, "stackView"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/systemui/recents/RecentsConfiguration;",
            "Lcom/flyme/systemui/recents/views/TaskStackView;",
            "Lcom/flyme/systemui/recents/views/ViewPool",
            "<",
            "Lcom/flyme/systemui/recents/views/TaskView;",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "viewPool":Lcom/flyme/systemui/recents/views/ViewPool;, "Lcom/flyme/systemui/recents/views/ViewPool<Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 36
    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/flyme/systemui/recents/views/TaskStackView;

    .line 37
    iput-object p3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/flyme/systemui/recents/views/ViewPool;

    .line 34
    return-void
.end method
