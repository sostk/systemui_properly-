.class Lcom/flyme/systemui/recents/views/RecentsView$2$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

.field final synthetic val$task:Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$2;Lcom/flyme/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/views/RecentsView$2;
    .param p2, "val$task"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 547
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 548
    .local v5, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-static {v6}, Lcom/flyme/systemui/recents/views/RecentsView;->-get0(Lcom/flyme/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f05007f

    const v8, 0x7f050080

    invoke-static {v6, v7, v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 550
    .local v2, "launchOpts":Landroid/app/ActivityOptions;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v6, v6, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    if-eqz v6, :cond_0

    .line 552
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/flyme/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v4

    .line 554
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iput-boolean v9, v6, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 556
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 557
    .local v1, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    iget v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v6, v7, :cond_2

    iget v6, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v7, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    if-eq v6, v7, :cond_2

    .line 558
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    .line 564
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "n":I
    .end local v4    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v6, v6, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    if-eqz v6, :cond_3

    .line 566
    const-string/jumbo v6, "recents.RecentsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTaskViewClicked : moveTaskToFront ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 545
    :cond_1
    :goto_1
    return-void

    .line 555
    .restart local v0    # "i":I
    .restart local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v3    # "n":I
    .restart local v4    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "n":I
    .end local v4    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    const-string/jumbo v6, "recents.RecentsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTaskViewClicked : startActivityFromRecents ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    .line 572
    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 571
    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 575
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v6

    new-instance v7, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;

    invoke-direct {v7}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;-><init>()V

    invoke-virtual {v6, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 579
    const-string/jumbo v6, "recents.RecentsView"

    const-string/jumbo v7, "onTaskViewClicked : Dismiss the task and return to home if we fail to launch the task"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v6, v7}, Lcom/flyme/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/flyme/systemui/recents/model/Task;)V

    .line 583
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v6, :cond_1

    .line 584
    iget-object v6, p0, Lcom/flyme/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$2;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView$2;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v6, v6, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v6}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskLaunchFailed()V

    goto :goto_1
.end method
