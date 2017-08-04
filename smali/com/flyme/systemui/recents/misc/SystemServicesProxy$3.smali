.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskByTask(Landroid/content/Context;Lcom/flyme/systemui/recents/model/Task;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$task:Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Lcom/flyme/systemui/recents/model/Task;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p2, "val$task"    # Lcom/flyme/systemui/recents/model/Task;
    .param p4, "val$context"    # Landroid/content/Context;

    .prologue
    .line 341
    .local p3, "val$list":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/systemui/recents/model/Task;>;"
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$list:Ljava/util/List;

    iput-object p4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 345
    :try_start_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 346
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v5, v6, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap3(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;)V

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$list:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 352
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/recents/model/Task;

    .line 353
    .local v1, "locTask":Lcom/flyme/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    const-string/jumbo v5, "recents.Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : more than one card, we needn\'t kill this"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 355
    return-void

    .line 357
    :cond_0
    :try_start_1
    iget-object v5, v1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v5, :cond_1

    .line 358
    iget-object v5, v1, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flyme/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    const-string/jumbo v5, "recents.Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : more than one card, we needn\'t kill this"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 360
    return-void

    .line 351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 364
    .end local v1    # "locTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$context:Landroid/content/Context;

    invoke-static {v5, v6, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap0(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 365
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap2(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Z)V

    .line 366
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/flyme/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v7, v7, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killProcessPolicyByPkgName(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :cond_3
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 343
    return-void

    .line 368
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v5

    .line 369
    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 368
    throw v5
.end method
