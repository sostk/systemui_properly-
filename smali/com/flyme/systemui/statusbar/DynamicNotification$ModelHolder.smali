.class public Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;
.super Ljava/lang/Object;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelHolder"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field mLastRealtime:J

.field mModel:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;",
            ">;"
        }
    .end annotation
.end field

.field mSbnList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    .line 315
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mModel:Ljava/util/LinkedList;

    .line 316
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 313
    return-void
.end method


# virtual methods
.method public addModel(Landroid/service/notification/StatusBarNotification;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "model"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 352
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mModel:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 349
    return-void

    .line 354
    :catchall_0
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 354
    throw v0
.end method

.method public containModel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 362
    return v0

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 363
    throw v0
.end method

.method public getModel(Landroid/service/notification/StatusBarNotification;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 371
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 372
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mModel:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 373
    return-object v1

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    return-object v1

    .line 377
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    .line 378
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 377
    throw v1
.end method

.method public removeIfNeed()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4e20

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 321
    .local v2, "realtime":J
    iget-wide v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mLastRealtime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 322
    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mLastRealtime:J

    .line 325
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 327
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    :try_start_1
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 330
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mModel:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;>;"
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    .local v1, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    invoke-virtual {v4}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getCreateTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;>;"
    .end local v1    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_0
    move-exception v4

    .line 340
    :try_start_2
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 339
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    :catchall_1
    move-exception v4

    .line 345
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 344
    throw v4

    .line 340
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;>;"
    .restart local v1    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 342
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 345
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;>;"
    .end local v1    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    :cond_3
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 319
    return-void
.end method

.method public removeModel(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)V
    .locals 3
    .param p1, "model"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 385
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mModel:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 386
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 387
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mModel:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    return-void

    .line 390
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    .line 391
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 390
    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;->mSbnList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
