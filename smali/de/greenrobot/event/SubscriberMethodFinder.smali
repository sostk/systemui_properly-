.class Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# static fields
.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final skipMethodVerificationForClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "skipMethodVerificationForClassesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    .line 47
    if-nez p1, :cond_1

    .line 52
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 49
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v2, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "key":Ljava/lang/String;
    sget-object v21, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v21

    .line 58
    :try_start_0
    sget-object v20, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 59
    .local v18, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-nez v18, :cond_1

    .line 63
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object/from16 v3, p1

    .line 65
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v5, "eventTypesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v11, "methodKeyBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-nez v3, :cond_2

    .line 118
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_c

    .line 122
    sget-object v21, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v21

    .line 123
    :try_start_1
    sget-object v20, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    return-object v18

    .line 59
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "eventTypesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "methodKeyBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_0
    move-exception v20

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 61
    .restart local v18    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_1
    return-object v18

    .line 68
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "eventTypesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "methodKeyBuilder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .local v16, "name":Ljava/lang/String;
    const-string/jumbo v20, "java."

    .line 69
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "javax."

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string/jumbo v20, "android."

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    .line 76
    .local v13, "methods":[Ljava/lang/reflect/Method;
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-lt v6, v8, :cond_3

    .line 116
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 76
    :cond_3
    aget-object v9, v2, v6

    .line 77
    .local v9, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .local v12, "methodName":Ljava/lang/String;
    const-string/jumbo v20, "onEvent"

    .line 78
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 76
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    .line 80
    .local v15, "modifiers":I
    and-int/lit8 v20, v15, 0x1

    if-nez v20, :cond_7

    .line 110
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 111
    sget-object v20, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Skipping method (not public, static or abstract): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 80
    :cond_7
    and-int/lit16 v0, v15, 0x1448

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 81
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 82
    .local v17, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const-string/jumbo v20, "onEvent"

    .line 83
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "modifierString":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_8

    const-string/jumbo v20, "MainThread"

    .line 87
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string/jumbo v20, "BackgroundThread"

    .line 89
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "Async"

    .line 91
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 97
    new-instance v20, Lde/greenrobot/event/EventBusException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Illegal onEvent method, check for typos: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 86
    :cond_8
    sget-object v19, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    .local v19, "threadMode":Lde/greenrobot/event/ThreadMode;
    :goto_3
    const/16 v20, 0x0

    .line 100
    aget-object v4, v17, v20

    .local v4, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    .line 101
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 v20, 0x3e

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, "methodKey":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 107
    new-instance v20, Lde/greenrobot/event/SubscriberMethod;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1, v4}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 88
    .end local v4    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "methodKey":Ljava/lang/String;
    .end local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_9
    sget-object v19, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    .restart local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .line 90
    .end local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_a
    sget-object v19, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    .restart local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .line 92
    .end local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_b
    sget-object v19, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    .restart local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .line 119
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .end local v14    # "modifierString":Ljava/lang/String;
    .end local v15    # "modifiers":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v19    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_c
    new-instance v20, Lde/greenrobot/event/EventBusException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Subscriber "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " has no public methods called "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "onEvent"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 124
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20
.end method
