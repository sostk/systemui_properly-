.class Lcom/flyme/systemui/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field mFilter:Lcom/flyme/systemui/recents/model/TaskFilter;

.field mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTaskIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flyme/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private updateFilteredTaskIndices()V
    .locals 6

    .prologue
    .line 140
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 141
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 142
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 143
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    .line 144
    .local v1, "t":Lcom/flyme/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_0
    return-void
.end method

.method private updateFilteredTasks()V
    .locals 5

    .prologue
    .line 123
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/flyme/systemui/recents/model/TaskFilter;

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 126
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 127
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    .line 128
    .local v1, "t":Lcom/flyme/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/flyme/systemui/recents/model/TaskFilter;

    invoke-interface {v3, v1, v0}, Lcom/flyme/systemui/recents/model/TaskFilter;->acceptTask(Lcom/flyme/systemui/recents/model/Task;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/flyme/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    :cond_1
    iget-object v3, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    .line 122
    return-void
.end method


# virtual methods
.method contains(Lcom/flyme/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTasks()Ljava/util/ArrayList;
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
    .line 155
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasFilter()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/flyme/systemui/recents/model/TaskFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method indexOf(Lcom/flyme/systemui/recents/model/Task;)I
    .locals 2
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 108
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method remove(Lcom/flyme/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    .local v0, "removed":Z
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 98
    return v0

    .line 100
    .end local v0    # "removed":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method removeFilter()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/flyme/systemui/recents/model/TaskFilter;

    .line 77
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 75
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTaskIndices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/flyme/systemui/recents/model/TaskFilter;

    .line 67
    return-void
.end method

.method set(Ljava/util/List;)V
    .locals 1
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
    .line 88
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/systemui/recents/model/Task;>;"
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 87
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
