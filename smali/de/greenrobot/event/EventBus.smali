.class public Lde/greenrobot/event/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/EventBus$2;,
        Lde/greenrobot/event/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUILDER:Lde/greenrobot/event/EventBusBuilder;

.field public static TAG:Ljava/lang/String;

.field static volatile defaultInstance:Lde/greenrobot/event/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncPoster:Lde/greenrobot/event/AsyncPoster;

.field private final backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lde/greenrobot/event/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInheritance:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final logNoSubscriberMessages:Z

.field private final logSubscriberExceptions:Z

.field private final mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

.field private final sendNoSubscriberEvent:Z

.field private final sendSubscriberExceptionEvent:Z

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lde/greenrobot/event/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwSubscriberException:Z

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Event"

    .line 42
    sput-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lde/greenrobot/event/EventBusBuilder;

    invoke-direct {v0}, Lde/greenrobot/event/EventBusBuilder;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->DEFAULT_BUILDER:Lde/greenrobot/event/EventBusBuilder;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lde/greenrobot/event/EventBus;->DEFAULT_BUILDER:Lde/greenrobot/event/EventBusBuilder;

    invoke-direct {p0, v0}, Lde/greenrobot/event/EventBus;-><init>(Lde/greenrobot/event/EventBusBuilder;)V

    .line 102
    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/EventBusBuilder;)V
    .locals 3
    .param p1, "builder"    # Lde/greenrobot/event/EventBusBuilder;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lde/greenrobot/event/EventBus$1;

    invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$1;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    .line 108
    new-instance v0, Lde/greenrobot/event/HandlerPoster;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lde/greenrobot/event/HandlerPoster;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    .line 109
    new-instance v0, Lde/greenrobot/event/BackgroundPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/BackgroundPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    .line 110
    new-instance v0, Lde/greenrobot/event/AsyncPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/AsyncPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    .line 111
    new-instance v0, Lde/greenrobot/event/SubscriberMethodFinder;

    iget-object v1, p1, Lde/greenrobot/event/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    invoke-direct {v0, v1}, Lde/greenrobot/event/SubscriberMethodFinder;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    .line 112
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    .line 113
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logNoSubscriberMessages:Z

    .line 114
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->sendSubscriberExceptionEvent:Z

    .line 115
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->sendNoSubscriberEvent:Z

    .line 116
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->throwSubscriberException:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->throwSubscriberException:Z

    .line 117
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->eventInheritance:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->eventInheritance:Z

    .line 118
    iget-object v0, p1, Lde/greenrobot/event/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 119
    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 479
    return-void

    .line 473
    :cond_0
    aget-object v2, v0, v1

    .line 474
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 473
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, v4}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    goto :goto_1
.end method

.method public static getDefault()Lde/greenrobot/event/EventBus;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    return-object v0

    :cond_0
    const-class v1, Lde/greenrobot/event/EventBus;

    .line 77
    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_1

    .line 81
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    new-instance v0, Lde/greenrobot/event/EventBus;

    invoke-direct {v0}, Lde/greenrobot/event/EventBus;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private handleSubscriberException(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 507
    instance-of v1, p2, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-nez v1, :cond_1

    .line 517
    iget-boolean v1, p0, Lde/greenrobot/event/EventBus;->throwSubscriberException:Z

    if-nez v1, :cond_2

    .line 520
    iget-boolean v1, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    if-nez v1, :cond_3

    .line 524
    :goto_0
    iget-boolean v1, p0, Lde/greenrobot/event/EventBus;->sendSubscriberExceptionEvent:Z

    if-nez v1, :cond_4

    .line 530
    :cond_0
    :goto_1
    return-void

    .line 508
    :cond_1
    iget-boolean v1, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    if-eqz v1, :cond_0

    .line 510
    sget-object v1, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " threw an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p2

    .line 512
    check-cast v0, Lde/greenrobot/event/SubscriberExceptionEvent;

    .line 513
    .local v0, "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    sget-object v1, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initial event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lde/greenrobot/event/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " caused exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lde/greenrobot/event/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lde/greenrobot/event/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 518
    .end local v0    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    :cond_2
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string/jumbo v2, "Invoking subscriber failed"

    invoke-direct {v1, v2, p3}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 521
    :cond_3
    sget-object v1, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 525
    :cond_4
    new-instance v0, Lde/greenrobot/event/SubscriberExceptionEvent;

    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, v1}, Lde/greenrobot/event/SubscriberExceptionEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    .restart local v0    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    invoke-virtual {p0, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v3

    .line 456
    :try_start_0
    sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 457
    .local v1, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v1, :cond_0

    .line 467
    :goto_0
    monitor-exit v3

    return-object v1

    .line 458
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .restart local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 460
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-nez v0, :cond_1

    .line 465
    sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 467
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v2

    .line 468
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 461
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method private postSingleEvent(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lde/greenrobot/event/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 377
    .local v2, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 378
    .local v5, "subscriptionFound":Z
    iget-boolean v6, p0, Lde/greenrobot/event/EventBus;->eventInheritance:Z

    if-nez v6, :cond_2

    .line 386
    invoke-direct {p0, p1, p2, v2}, Lde/greenrobot/event/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v5

    .line 388
    .end local v5    # "subscriptionFound":Z
    :cond_0
    if-eqz v5, :cond_3

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 379
    .restart local v5    # "subscriptionFound":Z
    :cond_2
    invoke-direct {p0, v2}, Lde/greenrobot/event/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 380
    .local v3, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "countTypes":I
    const/4 v4, 0x0

    .line 381
    .end local v5    # "subscriptionFound":Z
    .local v4, "h":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 382
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 383
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 381
    .local v5, "subscriptionFound":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "countTypes":I
    .end local v3    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "h":I
    .end local v5    # "subscriptionFound":Z
    :cond_3
    iget-boolean v6, p0, Lde/greenrobot/event/EventBus;->logNoSubscriberMessages:Z

    if-nez v6, :cond_4

    .line 392
    :goto_2
    iget-boolean v6, p0, Lde/greenrobot/event/EventBus;->sendNoSubscriberEvent:Z

    if-eqz v6, :cond_1

    const-class v6, Lde/greenrobot/event/NoSubscriberEvent;

    if-eq v2, v6, :cond_1

    const-class v6, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eq v2, v6, :cond_1

    .line 394
    new-instance v6, Lde/greenrobot/event/NoSubscriberEvent;

    invoke-direct {v6, p0, p1}, Lde/greenrobot/event/NoSubscriberEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_4
    sget-object v6, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No subscribers registered for event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private postSingleEventForEventType(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lde/greenrobot/event/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lde/greenrobot/event/EventBus$PostingThreadState;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 401
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v4, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 403
    .local v3, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    monitor-exit p0

    .line 404
    if-nez v3, :cond_1

    .line 423
    :cond_0
    return v5

    .line 403
    .end local v3    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 404
    .restart local v3    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 421
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 405
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/Subscription;

    .line 406
    .local v2, "subscription":Lde/greenrobot/event/Subscription;
    iput-object p1, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 407
    iput-object v2, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "aborted":Z
    :try_start_1
    iget-boolean v4, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    invoke-direct {p0, v2, p1, v4}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    .line 411
    iget-boolean v0, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    .local v0, "aborted":Z
    iput-object v6, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 414
    iput-object v6, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 415
    iput-boolean v5, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    .line 417
    if-nez v0, :cond_2

    goto :goto_0

    .line 416
    .local v0, "aborted":Z
    :catchall_1
    move-exception v4

    .line 413
    iput-object v6, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 414
    iput-object v6, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 415
    iput-boolean v5, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    throw v4
.end method

.method private postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "isMainThread"    # Z

    .prologue
    .line 427
    sget-object v0, Lde/greenrobot/event/EventBus$2;->$SwitchMap$de$greenrobot$event$ThreadMode:[I

    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v2, v2, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 451
    :goto_0
    return-void

    .line 432
    :pswitch_1
    if-nez p3, :cond_0

    .line 435
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/HandlerPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 439
    :pswitch_2
    if-nez p3, :cond_1

    .line 442
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/BackgroundPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    :pswitch_3
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/AsyncPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized register(Ljava/lang/Object;ZI)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "sticky"    # Z
    .param p3, "priority"    # I

    .prologue
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 164
    .local v2, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    .line 167
    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/SubscriberMethod;

    .line 165
    .local v1, "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    invoke-direct {p0, p1, v1, p2, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .end local v2    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "subscriberMethod"    # Lde/greenrobot/event/SubscriberMethod;
    .param p3, "sticky"    # Z
    .param p4, "priority"    # I

    .prologue
    const/4 v8, 0x0

    .line 171
    iget-object v0, p2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 172
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 173
    .local v6, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    new-instance v2, Lde/greenrobot/event/Subscription;

    invoke-direct {v2, p1, p2, p4}, Lde/greenrobot/event/Subscription;-><init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;I)V

    .line 174
    .local v2, "newSubscription":Lde/greenrobot/event/Subscription;
    if-eqz v6, :cond_1

    .line 178
    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 187
    :goto_0
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v1, 0x0

    .line 188
    .local v1, "i":I
    :goto_1
    if-le v1, v3, :cond_3

    .line 195
    :goto_2
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 196
    .local v5, "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v5, :cond_6

    .line 200
    :goto_3
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    if-nez p3, :cond_7

    .line 213
    :cond_0
    :goto_4
    return-void

    .line 175
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v5    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_1
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v6    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 176
    .restart local v6    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    :cond_2
    new-instance v7, Lde/greenrobot/event/EventBusException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Subscriber "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " already registered to event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_3
    if-ne v1, v3, :cond_5

    .line 190
    :cond_4
    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 189
    :cond_5
    iget v9, v2, Lde/greenrobot/event/Subscription;->priority:I

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/greenrobot/event/Subscription;

    iget v7, v7, Lde/greenrobot/event/Subscription;->priority:I

    if-gt v9, v7, :cond_4

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .restart local v5    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .restart local v5    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v7, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 204
    :cond_7
    iget-object v9, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v9

    .line 205
    :try_start_0
    iget-object v7, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 206
    .local v4, "stickyEvent":Ljava/lang/Object;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v4, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    if-eq v7, v9, :cond_8

    move v7, v8

    :goto_5
    invoke-direct {p0, v2, v4, v7}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    goto :goto_4

    .line 206
    .end local v4    # "stickyEvent":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v4    # "stickyEvent":Ljava/lang/Object;
    :cond_8
    const/4 v7, 0x1

    .line 210
    goto :goto_5
.end method

.method private unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 222
    .local v3, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/Subscription;>;"
    if-nez v3, :cond_1

    .line 234
    :cond_0
    return-void

    .line 223
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .line 224
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/Subscription;

    .line 226
    .local v2, "subscription":Lde/greenrobot/event/Subscription;
    iget-object v4, v2, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    if-eq v4, p1, :cond_2

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v2, Lde/greenrobot/event/Subscription;->active:Z

    .line 228
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 230
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
    .locals 3
    .param p1, "pendingPost"    # Lde/greenrobot/event/PendingPost;

    .prologue
    .line 488
    iget-object v0, p1, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;

    .line 489
    .local v0, "event":Ljava/lang/Object;
    iget-object v1, p1, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;

    .line 490
    .local v1, "subscription":Lde/greenrobot/event/Subscription;
    invoke-static {p1}, Lde/greenrobot/event/PendingPost;->releasePendingPost(Lde/greenrobot/event/PendingPost;)V

    .line 491
    iget-boolean v2, v1, Lde/greenrobot/event/Subscription;->active:Z

    if-nez v2, :cond_0

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0, v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 6
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 498
    :try_start_0
    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v2, v2, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lde/greenrobot/event/EventBus;->handleSubscriberException(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 503
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public post(Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus$PostingThreadState;

    .line 252
    .local v1, "postingState":Lde/greenrobot/event/EventBus$PostingThreadState;
    iget-object v0, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 253
    .local v0, "eventQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-boolean v2, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    if-eqz v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v2, v5, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    .line 257
    iput-boolean v4, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 258
    iget-boolean v2, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    if-nez v2, :cond_2

    .line 262
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    iput-boolean v3, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 267
    iput-boolean v3, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    goto :goto_0

    :cond_1
    move v2, v4

    .line 256
    goto :goto_1

    .line 259
    :cond_2
    new-instance v2, Lde/greenrobot/event/EventBusException;

    const-string/jumbo v3, "Internal error. Abort state was not reset"

    invoke-direct {v2, v3}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x0

    .line 263
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lde/greenrobot/event/EventBus;->postSingleEvent(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v2

    .line 266
    iput-boolean v3, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 267
    iput-boolean v3, v1, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    throw v2
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 301
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {p0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 306
    return-void

    .line 303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 134
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 144
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 151
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 152
    return-void
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 239
    .local v2, "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v2, :cond_0

    .line 245
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Subscriber to unregister was not registered before: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 247
    return-void

    .line 240
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 240
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 241
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
