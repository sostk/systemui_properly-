.class final Lde/greenrobot/event/HandlerPoster;
.super Landroid/os/Handler;
.source "HandlerPoster.java"


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private handlerActive:Z

.field private final maxMillisInsideHandleMessage:I

.field private final queue:Lde/greenrobot/event/PendingPostQueue;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V
    .locals 1
    .param p1, "eventBus"    # Lde/greenrobot/event/EventBus;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "maxMillisInsideHandleMessage"    # I

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lde/greenrobot/event/HandlerPoster;->eventBus:Lde/greenrobot/event/EventBus;

    .line 33
    iput p3, p0, Lde/greenrobot/event/HandlerPoster;->maxMillisInsideHandleMessage:I

    .line 34
    new-instance v0, Lde/greenrobot/event/PendingPostQueue;

    invoke-direct {v0}, Lde/greenrobot/event/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    .line 35
    return-void
.end method


# virtual methods
.method enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 3
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
    iget-object v1, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V

    .line 41
    iget-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    return-void

    .line 42
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z

    .line 43
    invoke-virtual {p0}, Lde/greenrobot/event/HandlerPoster;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/greenrobot/event/HandlerPoster;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string/jumbo v2, "Could not send handler message"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 56
    .local v2, "started":J
    :cond_0
    iget-object v1, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;

    move-result-object v0

    .line 57
    .local v0, "pendingPost":Lde/greenrobot/event/PendingPost;
    if-eqz v0, :cond_1

    .line 67
    :goto_0
    iget-object v1, p0, Lde/greenrobot/event/HandlerPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 69
    .local v4, "timeInMethod":J
    iget v1, p0, Lde/greenrobot/event/HandlerPoster;->maxMillisInsideHandleMessage:I

    int-to-long v8, v1

    cmp-long v1, v4, v8

    if-gez v1, :cond_3

    move v1, v6

    :goto_1
    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lde/greenrobot/event/HandlerPoster;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/greenrobot/event/HandlerPoster;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    iput-boolean v6, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z

    return-void

    .line 58
    .end local v4    # "timeInMethod":J
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    iget-object v1, p0, Lde/greenrobot/event/HandlerPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 65
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    .end local v0    # "pendingPost":Lde/greenrobot/event/PendingPost;
    .end local v2    # "started":J
    :catchall_1
    move-exception v1

    .line 78
    iput-boolean v7, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z

    throw v1

    .line 62
    .restart local v0    # "pendingPost":Lde/greenrobot/event/PendingPost;
    .restart local v2    # "started":J
    :cond_2
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z

    .line 63
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    iput-boolean v7, p0, Lde/greenrobot/event/HandlerPoster;->handlerActive:Z

    return-void

    .restart local v4    # "timeInMethod":J
    :cond_3
    move v1, v7

    .line 69
    goto :goto_1

    .line 71
    :cond_4
    :try_start_5
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string/jumbo v6, "Could not send handler message"

    invoke-direct {v1, v6}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method
