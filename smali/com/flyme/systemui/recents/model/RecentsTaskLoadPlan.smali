.class public Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field mActivityInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;",
            "Lcom/flyme/systemui/recents/model/ActivityInfoHandle;",
            ">;"
        }
    .end annotation
.end field

.field mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/flyme/systemui/recents/model/TaskStack;

.field mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "recents.TaskLoadPlan"

    sput-object v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flyme/systemui/recents/RecentsConfiguration;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;
    .param p3, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    .line 75
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 77
    iput-object p3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 74
    return-void
.end method


# virtual methods
.method public asyncLoadMem()V
    .locals 5

    .prologue
    .line 334
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 335
    .local v1, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 336
    :cond_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/flyme/systemui/recents/model/Task;

    .line 339
    .local v2, "tasks":[Lcom/flyme/systemui/recents/model/Task;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 340
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/recents/model/Task;

    aput-object v3, v2, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_2
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v4, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->initWhiteList(Landroid/content/Context;)V

    .line 346
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;

    invoke-direct {v4, p0, v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;-><init>(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;[Lcom/flyme/systemui/recents/model/Task;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 333
    return-void
.end method

.method declared-synchronized executePlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/flyme/systemui/recents/model/RecentsTaskLoader;Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;)V
    .locals 24
    .param p1, "opts"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    .prologue
    monitor-enter p0

    .line 248
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v2, :cond_0

    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 260
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v23

    .line 261
    .local v23, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 264
    .local v22, "taskCount":I
    add-int/lit8 v19, v22, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_5

    .line 265
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemui/recents/model/Task;

    .line 267
    .local v6, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-boolean v9, v6, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 269
    .local v9, "isRunningTask":Z
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v2, :cond_2

    if-eqz v9, :cond_2

    .line 264
    :cond_1
    :goto_1
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 273
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    const/4 v7, 0x1

    .line 275
    .local v7, "isVisibleTask":Z
    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    move/from16 v0, v19

    if-gt v0, v2, :cond_4

    const/4 v8, 0x1

    .line 276
    .local v8, "isVisibleThumbnail":Z
    :goto_3
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->realExecutePlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/flyme/systemui/recents/model/RecentsTaskLoader;Landroid/content/res/Resources;Lcom/flyme/systemui/recents/model/Task;ZZZZ)V

    .line 277
    iget-object v2, v6, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 278
    const/16 v20, 0x0

    .local v20, "j":I
    iget-object v2, v6, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v21

    .local v21, "n":I
    if-lez v21, :cond_1

    .line 279
    iget-object v2, v6, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flyme/systemui/recents/model/Task;

    const/16 v18, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v5

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v18}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->realExecutePlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/flyme/systemui/recents/model/RecentsTaskLoader;Landroid/content/res/Resources;Lcom/flyme/systemui/recents/model/Task;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v7    # "isVisibleTask":Z
    .end local v8    # "isVisibleThumbnail":Z
    .end local v9    # "isRunningTask":Z
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v21    # "n":I
    .end local v22    # "taskCount":I
    .end local v23    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 273
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "task":Lcom/flyme/systemui/recents/model/Task;
    .restart local v9    # "isRunningTask":Z
    .restart local v19    # "i":I
    .restart local v22    # "taskCount":I
    .restart local v23    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "isVisibleTask":Z
    goto :goto_2

    .line 275
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "isVisibleThumbnail":Z
    goto :goto_3

    .end local v6    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v7    # "isVisibleTask":Z
    .end local v8    # "isVisibleThumbnail":Z
    .end local v9    # "isRunningTask":Z
    :cond_5
    monitor-exit p0

    .line 247
    return-void
.end method

.method public getRawTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    return-object v0
.end method

.method public getSpaceNode()Lcom/flyme/systemui/recents/model/SpaceNode;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/flyme/systemui/recents/model/SpaceNode;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/SpaceNode;-><init>()V

    .line 371
    .local v0, "node":Lcom/flyme/systemui/recents/model/SpaceNode;
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/SpaceNode;->setStack(Lcom/flyme/systemui/recents/model/TaskStack;)V

    .line 372
    return-object v0
.end method

.method public getTaskStack()Lcom/flyme/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method declared-synchronized preloadPlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoader;ZLcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 41
    .param p1, "loader"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "opts"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    monitor-enter p0

    .line 102
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 103
    new-instance v3, Lcom/flyme/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/flyme/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 107
    .local v35, "res":Landroid/content/res/Resources;
    new-instance v32, Ljava/util/LinkedList;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedList;-><init>()V

    .line 108
    .local v32, "loadedTasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flyme/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v3, :cond_0

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v40

    .line 112
    .local v40, "taskCount":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_7

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v30

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 116
    .local v38, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Lcom/flyme/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v38

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 117
    move-object/from16 v0, v38

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v38

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 116
    invoke-direct/range {v2 .. v9}, Lcom/flyme/systemui/recents/model/Task$TaskKey;-><init>(ILandroid/content/Intent;IJJ)V

    .line 120
    .local v2, "taskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v26

    .line 122
    .local v26, "cnKey":Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;
    const/16 v29, 0x0

    .line 123
    .local v29, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;

    .line 125
    .local v8, "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    const/16 v29, 0x1

    .line 131
    :goto_1
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v8}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityLabel(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Lcom/flyme/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, "activityLabel":Ljava/lang/String;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object v4, v2

    move-object/from16 v7, v35

    .line 133
    invoke-virtual/range {v3 .. v9}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/flyme/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 135
    .local v15, "activityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/RecentsConfiguration;)I

    move-result v16

    .line 138
    .local v16, "activityColor":I
    if-nez v29, :cond_1

    iget-object v3, v8, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_3

    .line 143
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v19

    .line 145
    :goto_2
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_4

    .line 146
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v20

    .line 148
    :goto_3
    const/16 v21, -0x1

    .line 149
    .local v21, "splitGroupId":I
    const/16 v37, 0x0

    .line 151
    .local v37, "splitMode":I
    new-instance v9, Lcom/flyme/systemui/recents/model/Task;

    move-object/from16 v0, v38

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v4, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    if-eq v3, v4, :cond_5

    const/4 v11, 0x1

    .line 152
    :goto_4
    move-object/from16 v0, v38

    iget v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v38

    iget v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 153
    add-int/lit8 v3, v40, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_6

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v3, Lcom/flyme/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    move/from16 v18, v0

    .line 156
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v25, v0

    .line 154
    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 155
    const/16 v24, 0x0

    move-object v10, v2

    .line 151
    invoke-direct/range {v9 .. v25}, Lcom/flyme/systemui/recents/model/Task;-><init>(Lcom/flyme/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;IIZZLandroid/app/ActivityManager$TaskDescription;)V

    .line 164
    .local v9, "task":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 127
    .end local v8    # "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v14    # "activityLabel":Ljava/lang/String;
    .end local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "activityColor":I
    .end local v21    # "splitGroupId":I
    .end local v37    # "splitMode":I
    :cond_2
    new-instance v8, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v8}, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v8    # "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    goto/16 :goto_1

    .line 144
    .restart local v14    # "activityLabel":Ljava/lang/String;
    .restart local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "activityColor":I
    :cond_3
    const/16 v19, 0x0

    .local v19, "icon":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 147
    .end local v19    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    const/16 v20, 0x0

    .local v20, "iconFilename":Ljava/lang/String;
    goto :goto_3

    .line 151
    .end local v20    # "iconFilename":Ljava/lang/String;
    .restart local v21    # "splitGroupId":I
    .restart local v37    # "splitMode":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 153
    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 167
    .end local v2    # "taskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .end local v8    # "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    .end local v14    # "activityLabel":Ljava/lang/String;
    .end local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "activityColor":I
    .end local v21    # "splitGroupId":I
    .end local v26    # "cnKey":Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;
    .end local v29    # "hadCachedActivityInfo":Z
    .end local v37    # "splitMode":I
    .end local v38    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_7
    if-eqz p3, :cond_b

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->prepareForEnter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_b

    .line 169
    :try_start_1
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v33

    .line 170
    .local v33, "lockManager":Lcom/flyme/systemui/recents/model/LockTaskManager;
    invoke-static {}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->getManager()Lcom/flyme/systemui/recents/model/SecretTaskManager;

    move-result-object v36

    .line 171
    .local v36, "secretManager":Lcom/flyme/systemui/recents/model/SecretTaskManager;
    const-string/jumbo v3, "recents_init_data_secret_lock"

    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    const/16 v30, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v34

    .local v34, "n":I
    :goto_6
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    .line 173
    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flyme/systemui/recents/model/Task;

    .line 174
    .restart local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->prepareForEnter:Z

    if-eqz v3, :cond_8

    iget-object v3, v9, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->isSecretivePkg(Ljava/lang/String;)Z

    move-result v3

    :goto_7
    iput-boolean v3, v9, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    .line 175
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->prepareForEnter:Z

    if-eqz v3, :cond_9

    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    iget-object v3, v9, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/model/LockTaskManager;->isPackageLocked(Ljava/lang/String;)Z

    move-result v3

    :goto_8
    iput-boolean v3, v9, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 174
    :cond_8
    const/4 v3, 0x0

    goto :goto_7

    .line 175
    :cond_9
    const/4 v3, 0x0

    goto :goto_8

    .line 178
    .end local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_a
    const-wide/16 v4, 0x8

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 186
    .end local v33    # "lockManager":Lcom/flyme/systemui/recents/model/LockTaskManager;
    .end local v34    # "n":I
    .end local v36    # "secretManager":Lcom/flyme/systemui/recents/model/SecretTaskManager;
    :cond_b
    new-instance v28, Landroid/util/SparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    .line 187
    .local v28, "firstFindSplitActivity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 188
    .local v31, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/model/Task;>;"
    const/4 v9, 0x0

    .line 189
    :cond_c
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 190
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flyme/systemui/recents/model/Task;

    .line 191
    .restart local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    .line 192
    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/flyme/systemui/recents/model/Task;

    .line 193
    .local v39, "target":Lcom/flyme/systemui/recents/model/Task;
    if-nez v39, :cond_d

    .line 194
    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .end local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v28    # "firstFindSplitActivity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/flyme/systemui/recents/model/Task;>;"
    .end local v30    # "i":I
    .end local v31    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/model/Task;>;"
    .end local v32    # "loadedTasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flyme/systemui/recents/model/Task;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v39    # "target":Lcom/flyme/systemui/recents/model/Task;
    .end local v40    # "taskCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 177
    .restart local v30    # "i":I
    .restart local v32    # "loadedTasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flyme/systemui/recents/model/Task;>;"
    .restart local v35    # "res":Landroid/content/res/Resources;
    .restart local v40    # "taskCount":I
    :catchall_1
    move-exception v3

    .line 178
    const-wide/16 v4, 0x8

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 177
    throw v3

    .line 196
    .restart local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    .restart local v28    # "firstFindSplitActivity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/flyme/systemui/recents/model/Task;>;"
    .restart local v31    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/recents/model/Task;>;"
    .restart local v39    # "target":Lcom/flyme/systemui/recents/model/Task;
    :cond_d
    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitMode:I

    if-eqz v3, :cond_e

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-nez v3, :cond_e

    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitMode:I

    move-object/from16 v0, v39

    iget v4, v0, Lcom/flyme/systemui/recents/model/Task;->splitMode:I

    if-eq v3, v4, :cond_e

    .line 197
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    .line 198
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-boolean v3, v9, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    if-eqz v3, :cond_e

    .line 200
    const/4 v3, 0x1

    move-object/from16 v0, v39

    iput-boolean v3, v0, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    .line 203
    :cond_e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 207
    .end local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    .end local v39    # "target":Lcom/flyme/systemui/recents/model/Task;
    :cond_f
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 208
    :cond_10
    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 209
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flyme/systemui/recents/model/Task;

    .line 210
    .restart local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    iget v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    iget-object v3, v9, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-nez v3, :cond_10

    .line 211
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 215
    .end local v9    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_11
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 216
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/flyme/systemui/recents/model/Task;

    .line 217
    .local v27, "first":Lcom/flyme/systemui/recents/model/Task;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    iput-boolean v3, v0, Lcom/flyme/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 218
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iput-boolean v3, v0, Lcom/flyme/systemui/recents/model/Task;->isOccludesLaunchTarget:Z

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 220
    const/4 v3, 0x1

    move-object/from16 v0, v27

    iput-boolean v3, v0, Lcom/flyme/systemui/recents/model/Task;->isHomeStack:Z

    .line 224
    .end local v27    # "first":Lcom/flyme/systemui/recents/model/Task;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/flyme/systemui/recents/model/TaskStack;->setTasks(Ljava/util/List;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/flyme/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {v3, v4}, Lcom/flyme/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Lcom/flyme/systemui/recents/RecentsConfiguration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 97
    return-void
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 3
    .param p1, "isTopTaskHome"    # Z

    .prologue
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 85
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 84
    invoke-virtual {v0, v1, v2, p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 83
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public realExecutePlan(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/flyme/systemui/recents/model/RecentsTaskLoader;Landroid/content/res/Resources;Lcom/flyme/systemui/recents/model/Task;ZZZZ)V
    .locals 10
    .param p1, "opts"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoader;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p5, "isVisibleTask"    # Z
    .param p6, "isVisibleThumbnail"    # Z
    .param p7, "isRunningTask"    # Z
    .param p8, "isSplited"    # Z

    .prologue
    .line 289
    iget-object v1, p4, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    .line 292
    .local v1, "taskKey":Lcom/flyme/systemui/recents/model/Task$TaskKey;
    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v8

    .line 294
    .local v8, "cnKey":Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;
    const/4 v9, 0x0

    .line 295
    .local v9, "hadCachedActivityInfo":Z
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;

    .line 297
    .local v5, "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    const/4 v9, 0x1

    .line 302
    :goto_0
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 303
    iget-object v0, p4, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 305
    iget-object v2, p4, Lcom/flyme/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 306
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v4, p3

    .line 305
    invoke-virtual/range {v0 .. v6}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/flyme/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p4, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 309
    :cond_0
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v0, :cond_1

    if-eqz p6, :cond_1

    if-eqz p8, :cond_4

    .line 328
    :cond_1
    :goto_1
    if-nez v9, :cond_2

    iget-object v0, v5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    return-void

    .line 299
    .end local v5    # "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    :cond_3
    new-instance v5, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v5}, Lcom/flyme/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v5    # "infoHandle":Lcom/flyme/systemui/recents/model/ActivityInfoHandle;
    goto :goto_0

    .line 310
    :cond_4
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->skipRunningThumbnail:Z

    if-eqz v0, :cond_7

    move/from16 v0, p7

    :goto_2
    if-nez v0, :cond_1

    .line 312
    iget-object v0, p4, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    if-eqz p7, :cond_1

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 316
    const/4 v2, 0x1

    .line 315
    invoke-virtual {p2, v1, v0, v2}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/flyme/systemui/recents/model/Task$TaskKey;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Z)Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    move-result-object v7

    .line 317
    .local v7, "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-eqz v7, :cond_1

    .line 318
    iget-object v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p4, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 319
    iget v0, p4, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/flyme/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    if-eq v0, v2, :cond_6

    iget v0, p4, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    const v2, -0x101011

    if-ne v0, v2, :cond_1

    .line 320
    :cond_6
    iget v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    invoke-virtual {p4, v0}, Lcom/flyme/systemui/recents/model/Task;->updateColorPrimary(I)V

    goto :goto_1

    .line 310
    .end local v7    # "bitmapWithColor":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method
