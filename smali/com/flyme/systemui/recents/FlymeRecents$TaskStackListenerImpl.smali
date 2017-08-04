.class Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;
.super Landroid/app/ITaskStackListener$Stub;
.source "FlymeRecents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/FlymeRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 144
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v7, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-virtual {v7}, Lcom/flyme/systemui/recents/views/ContentView;->isShown()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v7, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    if-nez v7, :cond_3

    .line 145
    :cond_0
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-boolean v7, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mDuringEnterAnimaiton:Z

    if-nez v7, :cond_1

    .line 146
    new-instance v4, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl$1;

    invoke-direct {v4, p0}, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl$1;-><init>(Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;)V

    .line 159
    .local v4, "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    sget-boolean v7, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sDuringStart:Z

    if-eqz v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v7, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mMainViewGroup:Lcom/flyme/systemui/recents/views/ContentView;

    invoke-static {v4, v7}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V

    .line 165
    .end local v4    # "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :cond_1
    :goto_0
    return-void

    .line 162
    .restart local v4    # "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :cond_2
    invoke-virtual {v4}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->run()V

    goto :goto_0

    .line 167
    .end local v4    # "run":Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 168
    .local v8, "time":J
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 169
    .local v0, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iget v7, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v7, :cond_4

    .line 170
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 171
    .local v2, "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    .line 172
    .local v6, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v6}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 173
    .local v5, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v10, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    if-eqz v5, :cond_5

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iput v7, v10, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 175
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v7, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 176
    .local v3, "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v2, v3, v11}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadRawTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 177
    new-instance v1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 178
    .local v1, "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v2, v3, v12, v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 182
    iput v13, v1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 183
    iput v13, v1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 184
    iput-boolean v12, v1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 185
    iget-object v7, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v7, v7, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7, v3, v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 143
    .end local v1    # "launchOpts":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v2    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .end local v3    # "plan":Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .end local v5    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    :cond_4
    return-void

    .line 173
    .restart local v2    # "loader":Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .restart local v5    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    :cond_5
    const/4 v7, -0x1

    goto :goto_1
.end method
