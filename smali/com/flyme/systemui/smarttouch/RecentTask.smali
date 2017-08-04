.class public Lcom/flyme/systemui/smarttouch/RecentTask;
.super Ljava/lang/Object;
.source "RecentTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field private currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

.field final handler:Landroid/os/Handler;

.field private recordTaskMap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;",
            ">;"
        }
    .end annotation
.end field

.field shouldDealWithHome:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    .line 35
    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->handler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriTo"    # I

    .prologue
    .line 294
    if-gez p1, :cond_0

    .line 295
    sget v0, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_enter:I

    .line 296
    .local v0, "enter":I
    sget v1, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_exit:I

    .line 301
    .local v1, "exit":I
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 298
    .end local v0    # "enter":I
    .end local v1    # "exit":I
    :cond_0
    sget v0, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_enter:I

    .line 299
    .restart local v0    # "enter":I
    sget v1, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_exit:I

    .restart local v1    # "exit":I
    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method


# virtual methods
.method final loadRecentTask(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 45
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 46
    .local v10, "size":I
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 48
    .local v14, "thisRecordTasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;>;"
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v16, "android.intent.category.HOME"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 49
    const/16 v16, 0x0

    .line 48
    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 50
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_b

    .line 53
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 55
    .local v4, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v5, Landroid/content/Intent;

    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 56
    .local v5, "intent":Landroid/content/Intent;
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_0

    .line 57
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    if-eqz v1, :cond_4

    .line 66
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    .line 66
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 68
    if-nez v2, :cond_3

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 73
    :cond_4
    const-string/jumbo v15, "com.meizu.setup"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 75
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_5
    const-string/jumbo v15, "com.android.phone"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 78
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_6
    const-string/jumbo v15, "android"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 81
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :cond_7
    iget v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v15, :cond_8

    const-string/jumbo v15, "android.intent.action.MAIN"

    iget-object v0, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 91
    :cond_8
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "task$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 92
    .local v11, "task":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    iget-object v15, v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 93
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v11    # "task":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    :cond_a
    new-instance v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;-><init>(Lcom/flyme/systemui/smarttouch/RecentTask;Landroid/content/Intent;)V

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    .end local v4    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v12    # "task$iterator":Ljava/util/Iterator;
    :cond_b
    const/4 v7, 0x0

    .line 102
    .local v7, "needRefresh":Z
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 103
    .local v13, "thisIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    if-eqz v15, :cond_e

    .line 116
    :cond_c
    const/4 v7, 0x1

    .line 118
    :cond_d
    :goto_3
    if-eqz v7, :cond_15

    .line 119
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 120
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v10

    .line 124
    const/4 v15, 0x1

    if-le v10, v15, :cond_16

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "task$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 126
    .restart local v11    # "task":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15, v11}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 127
    .local v3, "index":I
    add-int/lit8 v15, v10, -0x1

    if-ne v3, v15, :cond_11

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    add-int/lit8 v16, v3, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iput-object v15, v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    goto :goto_4

    .line 104
    .end local v3    # "index":I
    .end local v11    # "task":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    .end local v12    # "task$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 105
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;>;"
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 106
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_10

    .line 107
    const/4 v7, 0x1

    .line 108
    goto :goto_3

    .line 110
    :cond_10
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v0, v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v15, v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 111
    const/4 v7, 0x1

    .line 112
    goto/16 :goto_3

    .line 129
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;>;"
    .restart local v3    # "index":I
    .restart local v11    # "task":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    .restart local v12    # "task$iterator":Ljava/util/Iterator;
    :cond_11
    if-nez v3, :cond_12

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iput-object v15, v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    goto :goto_4

    .line 132
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    add-int/lit8 v16, v3, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iput-object v15, v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    add-int/lit8 v16, v3, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iput-object v15, v11, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    goto/16 :goto_4

    .line 136
    .end local v3    # "index":I
    .end local v11    # "task":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 140
    .end local v12    # "task$iterator":Ljava/util/Iterator;
    :cond_14
    :goto_5
    const-string/jumbo v15, "SmartTouch"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "refresh task size : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_15
    return-void

    .line 137
    :cond_16
    const/4 v15, 0x1

    if-ne v10, v15, :cond_14

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    goto :goto_5
.end method

.method final recent(Landroid/app/ActivityManager;Ljava/util/List;I)Z
    .locals 12
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p3, "oriTo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 218
    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    const-string/jumbo v8, "recent"

    invoke-static {v7, v8}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    const/4 v6, 0x0

    .line 220
    .local v6, "toTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 221
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "taskInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 222
    .local v3, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v7, v7, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    move-object v6, v3

    .line 229
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v4    # "taskInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "toTask":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    if-nez v6, :cond_2

    return v10

    .line 231
    :cond_2
    iget v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-lez v7, :cond_3

    .line 232
    const-string/jumbo v7, "SmartTouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "move task to : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v9, v9, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v8, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    invoke-static {v8, p3}, Lcom/flyme/systemui/smarttouch/RecentTask;->createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v11, v8}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 234
    return v11

    .line 236
    :cond_3
    const-string/jumbo v7, "SmartTouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "new task to : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v9, v9, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v5, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 240
    .local v5, "toIntent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 241
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 242
    const-string/jumbo v8, "android.intent.action.MAIN"

    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 256
    :cond_4
    const/high16 v7, 0x10100000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    :goto_0
    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    invoke-static {v8, p3}, Lcom/flyme/systemui/smarttouch/RecentTask;->createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 260
    return v11

    .line 243
    :cond_5
    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 245
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v7, v7, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    .line 244
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 246
    if-eqz v5, :cond_6

    .line 247
    const/high16 v7, 0x200000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :goto_1
    const-string/jumbo v7, "start launcherer activity"

    invoke-static {v7}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 261
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "toIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "Unable to launch recent task"

    invoke-static {v7}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string/jumbo v7, "SmartTouch"

    const-string/jumbo v8, "new task error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v10

    .line 250
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "toIntent":Landroid/content/Intent;
    :cond_6
    :try_start_1
    iget-object v5, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 251
    const/high16 v7, 0x10100000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 264
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "toIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "other error"

    invoke-static {v7}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method final recentL()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 145
    const-string/jumbo v3, "SmartTouch"

    const-string/jumbo v4, "switch task forward"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string/jumbo v3, "forward"

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 149
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, -0x2

    .line 148
    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/smarttouch/RecentTask;->refreshIfNeed(Ljava/util/List;)V

    .line 153
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    if-nez v3, :cond_0

    .line 154
    return v6

    .line 157
    :cond_0
    iget-boolean v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    if-eqz v3, :cond_1

    .line 158
    iput-boolean v6, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    .line 173
    :goto_0
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 176
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/flyme/systemui/smarttouch/RecentTask;->recent(Landroid/app/ActivityManager;Ljava/util/List;I)Z

    move-result v3

    return v3

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    if-nez v3, :cond_2

    .line 161
    return v6

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    .line 165
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v1, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 167
    .local v1, "recordTask":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    :goto_1
    if-nez v1, :cond_4

    .line 168
    return v6

    .line 166
    .end local v1    # "recordTask":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    :cond_3
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v1, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->toward:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .restart local v1    # "recordTask":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    goto :goto_1

    .line 170
    :cond_4
    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    goto :goto_0
.end method

.method final recentR()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    const-string/jumbo v3, "SmartTouch"

    const-string/jumbo v4, "switch task back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string/jumbo v3, "back"

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/RecentTask;->log(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->context:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 186
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, -0x2

    .line 185
    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/smarttouch/RecentTask;->refreshIfNeed(Ljava/util/List;)V

    .line 190
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    if-nez v3, :cond_0

    .line 191
    return v6

    .line 194
    :cond_0
    iget-boolean v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->shouldDealWithHome:Z

    if-eqz v3, :cond_1

    .line 195
    return v6

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    if-nez v3, :cond_2

    .line 198
    return v6

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    .line 202
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 203
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v1, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 204
    .local v1, "recordTask":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    :goto_0
    if-nez v1, :cond_4

    .line 205
    return v6

    .line 203
    .end local v1    # "recordTask":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    :cond_3
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    iget-object v1, v3, Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;->back:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .restart local v1    # "recordTask":Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;
    goto :goto_0

    .line 207
    :cond_4
    iput-object v1, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    .line 210
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/RecentTask;->currentTask:Lcom/flyme/systemui/smarttouch/RecentTask$RecordTask;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0, v0, v2, v7}, Lcom/flyme/systemui/smarttouch/RecentTask;->recent(Landroid/app/ActivityManager;Ljava/util/List;I)Z

    .line 214
    return v7
.end method

.method final refreshIfNeed(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/RecentTask;->loadRecentTask(Ljava/util/List;)V

    .line 39
    return-void
.end method
