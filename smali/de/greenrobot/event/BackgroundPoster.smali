.class final Lde/greenrobot/event/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private volatile executorRunning:Z

.field private final queue:Lde/greenrobot/event/PendingPostQueue;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 1
    .param p1, "eventBus"    # Lde/greenrobot/event/EventBus;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lde/greenrobot/event/BackgroundPoster;->eventBus:Lde/greenrobot/event/EventBus;

    .line 34
    new-instance v0, Lde/greenrobot/event/PendingPostQueue;

    invoke-direct {v0}, Lde/greenrobot/event/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    .line 35
    return-void
.end method


# virtual methods
.method public enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {p1, p2}, Lde/greenrobot/event/PendingPost;->obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;

    move-result-object v0

    .line 39
    .local v0, "pendingPost":Lde/greenrobot/event/PendingPost;
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V

    .line 41
    iget-boolean v1, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    if-eqz v1, :cond_0

    .line 45
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    .line 43
    iget-object v1, p0, Lde/greenrobot/event/BackgroundPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1}, Lde/greenrobot/event/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    :goto_0
    :try_start_0
    iget-object v2, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lde/greenrobot/event/PendingPostQueue;->poll(I)Lde/greenrobot/event/PendingPost;

    move-result-object v1

    .line 54
    .local v1, "pendingPost":Lde/greenrobot/event/PendingPost;
    if-eqz v1, :cond_0

    .line 64
    :goto_1
    iget-object v2, p0, Lde/greenrobot/event/BackgroundPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 65
    .end local v1    # "pendingPost":Lde/greenrobot/event/PendingPost;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v2, "Event"

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was interruppted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    iput-boolean v5, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    .line 72
    return-void

    .line 55
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "pendingPost":Lde/greenrobot/event/PendingPost;
    :cond_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :try_start_3
    iget-object v2, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v2}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 62
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    .end local v1    # "pendingPost":Lde/greenrobot/event/PendingPost;
    :catchall_1
    move-exception v2

    .line 70
    iput-boolean v5, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    throw v2

    .line 59
    .restart local v1    # "pendingPost":Lde/greenrobot/event/PendingPost;
    :cond_1
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    .line 60
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    iput-boolean v5, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    return-void
.end method
