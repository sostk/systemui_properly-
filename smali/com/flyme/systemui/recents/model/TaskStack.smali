.class public Lcom/flyme/systemui/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# instance fields
.field mAffinitiesGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flyme/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/SparseArray;

    .line 162
    return-void
.end method


# virtual methods
.method public addGroup(Lcom/flyme/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/flyme/systemui/recents/model/TaskGrouping;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/SparseArray;

    iget v1, p1, Lcom/flyme/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    return-void
.end method

.method public createAffiliatedGroupings(Lcom/flyme/systemui/recents/RecentsConfiguration;)V
    .locals 16
    .param p1, "config"    # Lcom/flyme/systemui/recents/RecentsConfiguration;

    .prologue
    .line 440
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v13, "tasksMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/flyme/systemui/recents/model/Task$TaskKey;Lcom/flyme/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v14}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 442
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 443
    .local v10, "taskCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 444
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flyme/systemui/recents/model/Task;

    .line 446
    .local v9, "t":Lcom/flyme/systemui/recents/model/Task;
    iget v14, v9, Lcom/flyme/systemui/recents/model/Task;->taskAffiliation:I

    if-lez v14, :cond_0

    iget v1, v9, Lcom/flyme/systemui/recents/model/Task;->taskAffiliation:I

    .line 448
    .local v1, "affiliation":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 449
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/TaskStack;->getGroupWithAffiliation(I)Lcom/flyme/systemui/recents/model/TaskGrouping;

    move-result-object v5

    .line 454
    .local v5, "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    :goto_2
    invoke-virtual {v5, v9}, Lcom/flyme/systemui/recents/model/TaskGrouping;->addTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 455
    iget-object v14, v9, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "affiliation":I
    .end local v5    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    :cond_0
    iget-object v14, v9, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    const/high16 v15, 0x10000

    add-int v1, v15, v14

    .restart local v1    # "affiliation":I
    goto :goto_1

    .line 451
    :cond_1
    new-instance v5, Lcom/flyme/systemui/recents/model/TaskGrouping;

    invoke-direct {v5, v1}, Lcom/flyme/systemui/recents/model/TaskGrouping;-><init>(I)V

    .line 452
    .restart local v5    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/flyme/systemui/recents/model/TaskStack;->addGroup(Lcom/flyme/systemui/recents/model/TaskGrouping;)V

    goto :goto_2

    .line 458
    .end local v1    # "affiliation":I
    .end local v5    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .end local v9    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_2
    move-object/from16 v0, p1

    iget v8, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 459
    .local v8, "minAlpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 460
    .local v11, "taskGroupCount":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_5

    .line 461
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flyme/systemui/recents/model/TaskGrouping;

    .line 462
    .restart local v5    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    invoke-virtual {v5}, Lcom/flyme/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v10

    .line 464
    const/4 v14, 0x1

    if-gt v10, v14, :cond_4

    .line 460
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 466
    :cond_4
    iget-object v14, v5, Lcom/flyme/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flyme/systemui/recents/model/Task;

    iget v2, v14, Lcom/flyme/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 467
    .local v2, "affiliationColor":I
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    int-to-float v15, v10

    div-float v4, v14, v15

    .line 468
    .local v4, "alphaStep":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 469
    .local v3, "alpha":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v10, :cond_3

    .line 470
    iget-object v14, v5, Lcom/flyme/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flyme/systemui/recents/model/Task;

    .line 471
    .restart local v9    # "t":Lcom/flyme/systemui/recents/model/Task;
    const/4 v14, -0x1

    invoke-static {v2, v14, v3}, Lcom/flyme/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v14

    iput v14, v9, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    .line 473
    sub-float/2addr v3, v4

    .line 469
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 373
    .end local v2    # "affiliationColor":I
    .end local v3    # "alpha":F
    .end local v4    # "alphaStep":F
    .end local v5    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .end local v7    # "j":I
    .end local v9    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_5
    return-void
.end method

.method public findTaskWithId(I)Lcom/flyme/systemui/recents/model/Task;
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 306
    iget-object v4, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 307
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 308
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 309
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    .line 310
    .local v1, "task":Lcom/flyme/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_0

    .line 311
    return-object v1

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "task":Lcom/flyme/systemui/recents/model/Task;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getFrontMostTask()Lcom/flyme/systemui/recents/model/Task;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    return-object v0
.end method

.method public getGroupWithAffiliation(I)Lcom/flyme/systemui/recents/model/TaskGrouping;
    .locals 2
    .param p1, "affiliation"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/TaskGrouping;

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasFilteredTasks()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->hasFilter()Z

    move-result v0

    return v0
.end method

.method public indexOfTask(Lcom/flyme/systemui/recents/model/Task;)I
    .locals 1
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/flyme/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public removeGroup(Lcom/flyme/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/flyme/systemui/recents/model/TaskGrouping;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/SparseArray;

    iget v1, p1, Lcom/flyme/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 360
    return-void
.end method

.method public removeTask(Lcom/flyme/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, p1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->contains(Lcom/flyme/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, p1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->remove(Lcom/flyme/systemui/recents/model/Task;)Z

    .line 225
    iget-object v0, p1, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    .line 226
    .local v0, "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/model/TaskGrouping;->removeTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 227
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/model/TaskStack;->removeGroup(Lcom/flyme/systemui/recents/model/TaskGrouping;)V

    .line 231
    :cond_0
    iput-boolean v3, p1, Lcom/flyme/systemui/recents/model/Task;->lockToThisTask:Z

    .line 232
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v1

    .line 233
    .local v1, "newFrontMostTask":Lcom/flyme/systemui/recents/model/Task;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/flyme/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v2, :cond_1

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/flyme/systemui/recents/model/Task;->lockToThisTask:Z

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v2, p0, p1, v1}, Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;Lcom/flyme/systemui/recents/model/Task;)V

    .line 220
    .end local v0    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .end local v1    # "newFrontMostTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 206
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->reset()V

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 204
    return-void
.end method

.method public setCallbacks(Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 199
    return-void
.end method

.method public setTasks(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/systemui/recents/model/Task;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 245
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 246
    .local v5, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 247
    .local v4, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 248
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/model/Task;

    .line 250
    .local v2, "t":Lcom/flyme/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6, v2}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->remove(Lcom/flyme/systemui/recents/model/Task;)Z

    .line 252
    iget-object v0, v2, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    .line 253
    .local v0, "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    invoke-virtual {v0, v2}, Lcom/flyme/systemui/recents/model/TaskGrouping;->removeTask(Lcom/flyme/systemui/recents/model/Task;)V

    .line 254
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 255
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/model/TaskStack;->removeGroup(Lcom/flyme/systemui/recents/model/TaskGrouping;)V

    .line 258
    :cond_0
    iput-boolean v8, v2, Lcom/flyme/systemui/recents/model/Task;->lockToThisTask:Z

    .line 259
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v6, :cond_1

    .line 261
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v6, p0, v2, v7}, Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;Lcom/flyme/systemui/recents/model/Task;)V

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "group":Lcom/flyme/systemui/recents/model/TaskGrouping;
    .end local v2    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_2
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6, p1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 265
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/recents/model/Task;

    .line 266
    .restart local v2    # "t":Lcom/flyme/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v6, :cond_3

    .line 267
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v6, p0, v2}, Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/flyme/systemui/recents/model/TaskStack;Lcom/flyme/systemui/recents/model/Task;)V

    goto :goto_1

    .line 244
    .end local v2    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 481
    const-string/jumbo v0, "Tasks:\n"

    .line 482
    .local v0, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    .line 483
    .local v1, "t":Lcom/flyme/systemui/recents/model/Task;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    .end local v1    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_0
    return-object v0
.end method

.method public unfilterTasks()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    .local v0, "oldStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mTaskList:Lcom/flyme/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->removeFilter()V

    .line 342
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskStack;->mCb:Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v1, p0, v0}, Lcom/flyme/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackUnfiltered(Lcom/flyme/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V

    .line 337
    :cond_0
    return-void
.end method
