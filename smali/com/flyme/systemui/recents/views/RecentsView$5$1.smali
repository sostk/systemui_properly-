.class Lcom/flyme/systemui/recents/views/RecentsView$5$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$opts:Landroid/app/ActivityOptions;

.field final synthetic val$task:Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView$5;Lcom/flyme/systemui/recents/model/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/views/RecentsView$5;
    .param p2, "val$task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p3, "val$opts"    # Landroid/app/ActivityOptions;
    .param p4, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$opts:Landroid/app/ActivityOptions;

    iput-object p4, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 757
    :try_start_0
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 759
    .local v5, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    if-eqz v7, :cond_0

    .line 761
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v7, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v4

    .line 763
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    .line 764
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 765
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 766
    .local v2, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    iget v8, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v7, v8, :cond_3

    iget v7, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v8, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    if-eq v7, v8, :cond_3

    .line 767
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    .line 773
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "n":I
    .end local v4    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    const/4 v6, 0x0

    .line 774
    .local v6, "success":Z
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    if-eqz v7, :cond_4

    .line 776
    const-string/jumbo v7, "recents.RecentsView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStartMultiClick : moveTaskToFront ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v9, v9, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$opts:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v7, v8}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 779
    const/4 v6, 0x1

    .line 801
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 802
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$intent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$opts:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 754
    .end local v5    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .end local v6    # "success":Z
    :cond_2
    :goto_2
    return-void

    .line 764
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v3    # "n":I
    .restart local v4    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v5    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "n":I
    .end local v4    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v6    # "success":Z
    :cond_4
    const-string/jumbo v7, "recents.RecentsView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStartMultiClick : startActivityFromRecents ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v9, v9, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    .line 783
    iget-object v9, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v9, v9, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v10, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$opts:Landroid/app/ActivityOptions;

    .line 782
    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 785
    const/4 v6, 0x1

    goto :goto_1

    .line 787
    :cond_5
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    new-instance v8, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;

    invoke-direct {v8}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;-><init>()V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 791
    const-string/jumbo v7, "recents.RecentsView"

    const-string/jumbo v8, "onStartMultiClick : Dismiss the task and return to home if we fail to launch the task"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v8, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->val$task:Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v7, v8}, Lcom/flyme/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/flyme/systemui/recents/model/Task;)V

    .line 795
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_1

    .line 796
    iget-object v7, p0, Lcom/flyme/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/flyme/systemui/recents/views/RecentsView$5;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView$5;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/flyme/systemui/recents/views/RecentsView;->mCb:Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v7}, Lcom/flyme/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskLaunchFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 804
    .end local v5    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .end local v6    # "success":Z
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
