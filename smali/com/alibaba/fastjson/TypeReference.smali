.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    .local v0, "superClass":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 44
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 18
    .param p1, "actualTypeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 52
    .local v11, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 54
    .local v10, "superClass":Ljava/lang/reflect/Type;
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .end local v10    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v4, v13, v14

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 55
    .local v4, "argType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 56
    .local v9, "rawType":Ljava/lang/reflect/Type;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .local v5, "argTypes":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "actualIndex":I
    const/4 v8, 0x0

    .line 59
    .local v8, "i":I
    :goto_0
    array-length v13, v5

    if-lt v8, v13, :cond_1

    .line 68
    :goto_1
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    .line 91
    :cond_0
    new-instance v13, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {v13, v5, v11, v9}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 93
    :goto_2
    return-void

    .line 60
    :cond_1
    aget-object v13, v5, v8

    instance-of v13, v13, Ljava/lang/reflect/TypeVariable;

    if-nez v13, :cond_2

    .line 59
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "actualIndex":I
    .local v2, "actualIndex":I
    aget-object v13, p1, v1

    aput-object v13, v5, v8

    .line 62
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v2, v13, :cond_3

    move v1, v2

    .end local v2    # "actualIndex":I
    .restart local v1    # "actualIndex":I
    goto :goto_3

    .end local v1    # "actualIndex":I
    .restart local v2    # "actualIndex":I
    :cond_3
    move v1, v2

    .line 63
    .end local v2    # "actualIndex":I
    .restart local v1    # "actualIndex":I
    goto :goto_1

    .line 68
    :cond_4
    array-length v13, v5

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 69
    sget-object v13, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v13, v11}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ConcurrentMap;

    .line 70
    .local v7, "classCache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;>;"
    if-eqz v7, :cond_5

    .line 75
    :goto_4
    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ConcurrentMap;

    .line 76
    .local v12, "typeCached":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;"
    if-eqz v12, :cond_6

    :goto_5
    const/4 v13, 0x0

    .line 81
    aget-object v3, p1, v13

    .line 83
    .local v3, "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-interface {v12, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    .line 84
    .local v6, "cachedType":Ljava/lang/reflect/Type;
    if-eqz v6, :cond_7

    .line 89
    :goto_6
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    goto :goto_2

    .line 71
    .end local v3    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .end local v6    # "cachedType":Ljava/lang/reflect/Type;
    .end local v12    # "typeCached":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;"
    :cond_5
    sget-object v13, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v15, 0x10

    const/high16 v16, 0x3f400000    # 0.75f

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-interface {v13, v11, v14}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v13, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v13, v11}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "classCache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;>;"
    check-cast v7, Ljava/util/concurrent/ConcurrentMap;

    .restart local v7    # "classCache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;>;"
    goto :goto_4

    .line 77
    .restart local v12    # "typeCached":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;"
    :cond_6
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v14, 0x10

    const/high16 v15, 0x3f400000    # 0.75f

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-interface {v7, v4, v13}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v7, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "typeCached":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;"
    check-cast v12, Ljava/util/concurrent/ConcurrentMap;

    .restart local v12    # "typeCached":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;>;"
    goto :goto_5

    .line 85
    .restart local v3    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local v6    # "cachedType":Ljava/lang/reflect/Type;
    :cond_7
    invoke-interface {v12, v3, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v12, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "cachedType":Ljava/lang/reflect/Type;
    check-cast v6, Ljava/lang/reflect/Type;

    .restart local v6    # "cachedType":Ljava/lang/reflect/Type;
    goto :goto_6
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
