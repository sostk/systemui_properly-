.class final Lde/greenrobot/event/PendingPostQueue;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field private head:Lde/greenrobot/event/PendingPost;

.field private tail:Lde/greenrobot/event/PendingPost;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enqueue(Lde/greenrobot/event/PendingPost;)V
    .locals 2
    .param p1, "pendingPost"    # Lde/greenrobot/event/PendingPost;

    .prologue
    monitor-enter p0

    .line 8
    if-eqz p1, :cond_0

    .line 11
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;

    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Head present, but no tail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be enqueued"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;

    iput-object p1, v0, Lde/greenrobot/event/PendingPost;->next:Lde/greenrobot/event/PendingPost;

    .line 13
    iput-object p1, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 20
    return-void

    .line 15
    :cond_2
    :try_start_2
    iput-object p1, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;

    iput-object p1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized poll()Lde/greenrobot/event/PendingPost;
    .locals 2

    .prologue
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;

    .line 24
    .local v0, "pendingPost":Lde/greenrobot/event/PendingPost;
    iget-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-object v0

    .line 25
    :cond_1
    :try_start_1
    iget-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;

    iget-object v1, v1, Lde/greenrobot/event/PendingPost;->next:Lde/greenrobot/event/PendingPost;

    iput-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;

    .line 26
    iget-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lde/greenrobot/event/PendingPostQueue;->tail:Lde/greenrobot/event/PendingPost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "pendingPost":Lde/greenrobot/event/PendingPost;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized poll(I)Lde/greenrobot/event/PendingPost;
    .locals 2
    .param p1, "maxMillisToWait"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/PendingPostQueue;->head:Lde/greenrobot/event/PendingPost;

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 35
    :cond_0
    int-to-long v0, p1

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
