.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegement;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegement;,
        Lcom/alibaba/fastjson/JSONPath$Segement;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    }
.end annotation


# static fields
.field private static CACHE_SIZE:I

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x400

    .line 36
    sput v0, Lcom/alibaba/fastjson/JSONPath;->CACHE_SIZE:I

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializeConfig"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p3, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string/jumbo v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 57
    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 343
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 344
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 358
    if-eqz p0, :cond_1

    .line 362
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 363
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    if-eqz v0, :cond_2

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 359
    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    const-string/jumbo v2, "jsonpath can not be null"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    sget v2, Lcom/alibaba/fastjson/JSONPath;->CACHE_SIZE:I

    if-ge v1, v2, :cond_0

    .line 366
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    goto :goto_0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 329
    if-eqz p0, :cond_0

    .line 333
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 334
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 330
    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 338
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 339
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1996
    if-eq p0, p1, :cond_1

    .line 2000
    if-nez p0, :cond_2

    .line 2001
    :cond_0
    return v2

    .line 1997
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2000
    :cond_2
    if-eqz p1, :cond_0

    .line 2004
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 2008
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_4

    .line 2016
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2005
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2009
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_5

    .line 2013
    return v2

    .line 2010
    :cond_5
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 14
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    .prologue
    .line 2021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2022
    .local v2, "clazzA":Ljava/lang/Class;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v7

    .line 2024
    .local v7, "isIntA":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2025
    .local v3, "clazzB":Ljava/lang/Class;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v8

    .line 2027
    .local v8, "isIntB":Z
    instance-of v9, p0, Ljava/math/BigDecimal;

    if-nez v9, :cond_5

    .line 2035
    :cond_0
    if-nez v7, :cond_6

    .line 2048
    :cond_1
    if-nez v8, :cond_9

    .line 2058
    :cond_2
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v5

    .line 2059
    .local v5, "isDoubleA":Z
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v6

    .line 2061
    .local v6, "isDoubleB":Z
    if-nez v5, :cond_a

    :cond_3
    if-nez v5, :cond_c

    :cond_4
    if-nez v6, :cond_d

    .line 2066
    :goto_0
    const/4 v9, 0x0

    return v9

    .end local v5    # "isDoubleA":Z
    .end local v6    # "isDoubleB":Z
    :cond_5
    move-object v4, p0

    .line 2028
    check-cast v4, Ljava/math/BigDecimal;

    .line 2030
    .local v4, "decimalA":Ljava/math/BigDecimal;
    if-eqz v8, :cond_0

    .line 2031
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v9

    return v9

    .line 2036
    .end local v4    # "decimalA":Ljava/math/BigDecimal;
    :cond_6
    if-nez v8, :cond_7

    .line 2040
    instance-of v9, p1, Ljava/math/BigInteger;

    if-eqz v9, :cond_1

    move-object v1, p0

    .line 2041
    check-cast v1, Ljava/math/BigInteger;

    .line 2042
    .local v1, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 2044
    .local v0, "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    return v9

    .line 2037
    .end local v0    # "bigIntA":Ljava/math/BigInteger;
    .end local v1    # "bigIntB":Ljava/math/BigInteger;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_1
    return v9

    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 2049
    :cond_9
    instance-of v9, p0, Ljava/math/BigInteger;

    if-eqz v9, :cond_2

    move-object v0, p0

    .line 2050
    check-cast v0, Ljava/math/BigInteger;

    .line 2051
    .restart local v0    # "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 2053
    .restart local v1    # "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    return v9

    .line 2061
    .end local v0    # "bigIntA":Ljava/math/BigInteger;
    .end local v1    # "bigIntB":Ljava/math/BigInteger;
    .restart local v5    # "isDoubleA":Z
    .restart local v6    # "isDoubleB":Z
    :cond_a
    if-eqz v6, :cond_3

    .line 2062
    :cond_b
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_e

    const/4 v9, 0x1

    :goto_3
    return v9

    .line 2061
    :cond_c
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_d
    if-nez v7, :cond_b

    goto :goto_0

    :cond_e
    const/4 v9, 0x0

    .line 2062
    goto :goto_3
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 319
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Float;

    .line 2070
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    .line 2074
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 6
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    const-string/jumbo v3, "/"

    .line 391
    invoke-static {v2, v3, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 397
    return-object v1

    .line 394
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 23
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 427
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 440
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 442
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v20

    if-nez v20, :cond_a

    .line 456
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 457
    :cond_0
    return-void

    .line 403
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void

    .line 407
    :cond_2
    return-void

    :cond_3
    move-object/from16 v17, p2

    .line 413
    check-cast v17, Ljava/util/Map;

    .line 415
    .local v17, "map":Ljava/util/Map;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_5

    .line 424
    return-void

    .line 415
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "entryObj":Ljava/lang/Object;
    move-object v7, v9

    .line 416
    check-cast v7, Ljava/util/Map$Entry;

    .line 417
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 419
    .local v14, "key":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const-string/jumbo v21, "/"

    .line 420
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 421
    .local v18, "path":Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_0

    .line 420
    .end local v18    # "path":Ljava/lang/String;
    :cond_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "entryObj":Ljava/lang/Object;
    .end local v14    # "key":Ljava/lang/Object;
    .end local v17    # "map":Ljava/util/Map;
    :cond_7
    move-object/from16 v5, p2

    .line 428
    check-cast v5, Ljava/util/Collection;

    .local v5, "collection":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 431
    .local v11, "i":I
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_8

    .line 437
    return-void

    .line 431
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "item":Ljava/lang/Object;
    const-string/jumbo v21, "/"

    .line 432
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 433
    .restart local v18    # "path":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 434
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 432
    .end local v18    # "path":Ljava/lang/String;
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 443
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    .local v16, "len":I
    const/4 v11, 0x0

    .line 445
    .restart local v11    # "i":I
    :goto_4
    move/from16 v0, v16

    if-lt v11, v0, :cond_b

    .line 453
    return-void

    .line 446
    :cond_b
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "item":Ljava/lang/Object;
    const-string/jumbo v20, "/"

    .line 448
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 449
    .restart local v18    # "path":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 450
    add-int/lit8 v11, v11, 0x1

    .line 445
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 448
    .end local v18    # "path":Ljava/lang/String;
    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 456
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    .end local v16    # "len":I
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v20

    if-nez v20, :cond_0

    .line 460
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v19

    .line 461
    .local v19, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 480
    return-void

    :cond_e
    move-object/from16 v13, v19

    .line 462
    check-cast v13, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 465
    .local v13, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 466
    .local v10, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_f
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_10

    .line 477
    return-void

    .line 466
    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 467
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 469
    .local v15, "key":Ljava/lang/String;
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    const-string/jumbo v21, "/"

    .line 470
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 471
    .restart local v18    # "path":Ljava/lang/String;
    :goto_7
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 476
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 475
    .local v6, "e":Ljava/lang/Exception;
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "toJSON error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 470
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "key":Ljava/lang/String;
    :cond_11
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto :goto_7
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 381
    .local v1, "object":Ljava/lang/Object;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 382
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "root"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 354
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 348
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 349
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 324
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 17
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 148
    if-nez p2, :cond_1

    .line 149
    :cond_0
    return-void

    .line 148
    :cond_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-eqz v14, :cond_0

    .line 152
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 158
    move-object/from16 v3, p1

    .local v3, "currentObject":Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "parentObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 160
    .end local v9    # "parentObject":Ljava/lang/Object;
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v14, v14

    if-lt v5, v14, :cond_3

    .line 167
    move-object v11, v3

    .line 169
    .local v11, "result":Ljava/lang/Object;
    if-eqz v11, :cond_5

    .line 173
    instance-of v14, v11, Ljava/util/Collection;

    if-nez v14, :cond_6

    .line 181
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 184
    .local v12, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-nez v14, :cond_8

    .line 195
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unsupported array put operation. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 153
    .end local v3    # "currentObject":Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void

    .line 161
    .restart local v3    # "currentObject":Ljava/lang/Object;
    .restart local v5    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-eq v5, v14, :cond_4

    .line 164
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v14, v0, v1, v3}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_4
    move-object v9, v3

    .restart local v9    # "parentObject":Ljava/lang/Object;
    goto :goto_1

    .line 170
    .end local v9    # "parentObject":Ljava/lang/Object;
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_5
    new-instance v14, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "value not found in path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    move-object v2, v11

    .line 174
    check-cast v2, Ljava/util/Collection;

    .line 175
    .local v2, "collection":Ljava/util/Collection;
    move-object/from16 v0, p2

    array-length v15, v0

    const/4 v14, 0x0

    :goto_2
    if-lt v14, v15, :cond_7

    .line 178
    return-void

    .line 175
    :cond_7
    aget-object v13, p2, v14

    .line 176
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 185
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v13    # "value":Ljava/lang/Object;
    .restart local v12    # "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    invoke-static {v11}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .line 186
    .local v7, "length":I
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p2

    array-length v15, v0

    add-int/2addr v15, v7

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "descArray":Ljava/lang/Object;
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 188
    invoke-static {v11, v14, v4, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    .line 189
    :goto_3
    move-object/from16 v0, p2

    array-length v14, v0

    if-lt v5, v14, :cond_9

    .line 193
    move-object v8, v4

    .line 198
    .local v8, "newResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aget-object v6, v14, v15

    .line 199
    .local v6, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v14, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v14, :cond_a

    .line 205
    instance-of v14, v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v14, :cond_b

    .line 210
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v14}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v14

    .line 190
    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v8    # "newResult":Ljava/lang/Object;
    :cond_9
    add-int v14, v7, v5

    aget-object v15, p2, v5

    invoke-static {v4, v14, v15}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .restart local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v8    # "newResult":Ljava/lang/Object;
    :cond_a
    move-object v10, v6

    .line 200
    check-cast v10, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 201
    .local v10, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v9, v8}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void

    .line 206
    .end local v10    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_b
    check-cast v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v9, v8}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 93
    move-object v0, p1

    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 101
    const/4 v2, 0x1

    return v2

    .line 88
    .end local v0    # "currentObject":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    return v3

    .line 95
    .restart local v0    # "currentObject":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    return v3
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "currentObject":Ljava/lang/Object;
    if-eq v0, p2, :cond_0

    .line 112
    if-eqz v0, :cond_1

    .line 116
    instance-of v3, v0, Ljava/lang/Iterable;

    if-nez v3, :cond_2

    .line 128
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 109
    :cond_0
    return v5

    .line 113
    :cond_1
    return v4

    .line 117
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    .end local v0    # "currentObject":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 125
    return v4

    .line 119
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    return v5
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2167
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 2171
    move-object/from16 v0, p1

    instance-of v14, v0, Ljava/util/Map;

    if-nez v14, :cond_1

    .line 2186
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2188
    .local v4, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v3

    .line 2189
    .local v3, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-nez v3, :cond_4

    .line 2213
    move-object/from16 v0, p1

    instance-of v14, v0, Ljava/util/List;

    if-nez v14, :cond_7

    .line 2222
    return-void

    .line 2168
    .end local v3    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v4    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void

    :cond_1
    move-object/from16 v12, p1

    .line 2172
    check-cast v12, Ljava/util/Map;

    .line 2174
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2180
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 2183
    return-void

    .line 2175
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2176
    .local v13, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2177
    return-void

    .line 2180
    .end local v13    # "val":Ljava/lang/Object;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 2181
    .restart local v13    # "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 2191
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v13    # "val":Ljava/lang/Object;
    .restart local v3    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .restart local v4    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v8

    .line 2192
    .local v8, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-nez v8, :cond_5

    .line 2203
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 2204
    .local v9, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-nez v15, :cond_6

    .line 2207
    return-void

    .line 2194
    .end local v9    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2195
    .restart local v13    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2201
    return-void

    .line 2200
    .end local v13    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 2197
    .local v7, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getFieldValue error."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2207
    .end local v7    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v8    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_1
    move-exception v5

    .line 2209
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "jsonpath error, path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", segement "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 2197
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_2
    move-exception v6

    .line 2199
    .local v6, "ex":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getFieldValue error."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 2204
    .end local v6    # "ex":Ljava/lang/IllegalAccessException;
    .restart local v9    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 2205
    .restart local v13    # "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .end local v8    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v9    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v13    # "val":Ljava/lang/Object;
    :cond_7
    move-object/from16 v11, p1

    .line 2214
    check-cast v11, Ljava/util/List;

    .local v11, "list":Ljava/util/List;
    const/4 v10, 0x0

    .line 2216
    .local v10, "i":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lt v10, v14, :cond_8

    .line 2220
    return-void

    .line 2217
    :cond_8
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 2218
    .restart local v13    # "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2216
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 79
    move-object v0, p1

    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 83
    return-object v0

    .line 74
    .end local v0    # "currentObject":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 81
    .restart local v0    # "currentObject":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method evalSize(Ljava/lang/Object;)I
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;

    .prologue
    const/4 v5, -0x1

    .line 2301
    if-eqz p1, :cond_0

    .line 2305
    instance-of v4, p1, Ljava/util/Collection;

    if-nez v4, :cond_1

    .line 2309
    instance-of v4, p1, [Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 2313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2317
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_4

    .line 2328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2330
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v0, :cond_7

    .line 2335
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 2302
    .end local v0    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_0
    return v5

    .line 2306
    :cond_1
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "currentObject":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    return v4

    .line 2310
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "currentObject":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    array-length v4, p1

    return v4

    .line 2314
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    return v4

    :cond_4
    const/4 v1, 0x0

    .line 2320
    .local v1, "count":I
    check-cast p1, Ljava/util/Map;

    .end local p1    # "currentObject":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2325
    return v1

    .line 2320
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2321
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 2322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2331
    .end local v1    # "count":I
    .end local v3    # "value":Ljava/lang/Object;
    .restart local v0    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_7
    return v5

    .line 2335
    :catch_0
    move-exception v2

    .line 2337
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "evalSize error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1877
    if-eqz p1, :cond_0

    .line 1881
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_1

    .line 1897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1913
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1878
    :cond_0
    return-object v4

    :cond_1
    move-object v1, p1

    .line 1882
    check-cast v1, Ljava/util/List;

    .line 1884
    .local v1, "list":Ljava/util/List;
    if-gez p2, :cond_2

    .line 1890
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 1893
    return-object v4

    .line 1885
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_3

    .line 1888
    return-object v4

    .line 1886
    :cond_3
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1891
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1898
    .end local v1    # "list":Ljava/util/List;
    :cond_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1900
    .local v0, "arrayLenth":I
    if-gez p2, :cond_6

    .line 1906
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v0, :cond_8

    .line 1909
    return-object v4

    .line 1901
    :cond_6
    if-lt p2, v0, :cond_7

    .line 1904
    return-object v4

    .line 1902
    :cond_7
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1907
    :cond_8
    add-int v2, v0, p2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .prologue
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2291
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 2292
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v2, :cond_0

    .line 2296
    .end local v0    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :goto_0
    return-object v0

    .restart local v0    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_0
    move-object v0, v1

    .line 2293
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 18
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "strictMode"    # Z

    .prologue
    .line 2079
    if-eqz p1, :cond_2

    .line 2083
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/util/Map;

    if-nez v15, :cond_3

    .line 2094
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2096
    .local v4, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v3

    .line 2097
    .local v3, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-nez v3, :cond_6

    .line 2105
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/util/List;

    if-nez v15, :cond_7

    .line 2123
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/Enum;

    if-nez v15, :cond_a

    .line 2134
    :cond_0
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/util/Calendar;

    if-nez v15, :cond_c

    .line 2162
    :cond_1
    new-instance v15, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "jsonpath error, path "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", segement "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v15

    .end local v3    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v4    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v15, 0x0

    .line 2080
    return-object v15

    :cond_3
    move-object/from16 v12, p1

    .line 2084
    check-cast v12, Ljava/util/Map;

    .line 2085
    .local v12, "map":Ljava/util/Map;
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2087
    .local v14, "val":Ljava/lang/Object;
    if-eqz v14, :cond_5

    .line 2091
    :cond_4
    :goto_0
    return-object v14

    :cond_5
    const-string/jumbo v15, "size"

    .line 2087
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2088
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_0

    .line 2099
    .end local v12    # "map":Ljava/util/Map;
    .end local v14    # "val":Ljava/lang/Object;
    .restart local v3    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .restart local v4    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    return-object v15

    :catch_0
    move-exception v6

    .line 2101
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "jsonpath error, path "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", segement "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v11, p1

    .line 2106
    check-cast v11, Ljava/util/List;

    .local v11, "list":Ljava/util/List;
    const-string/jumbo v15, "size"

    .line 2108
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 2112
    new-instance v8, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v8, v15}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .local v8, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 2114
    .local v9, "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lt v9, v15, :cond_9

    .line 2120
    return-object v8

    .line 2109
    .end local v8    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v9    # "i":I
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    .line 2115
    .restart local v8    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v9    # "i":I
    :cond_9
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 2116
    .local v13, "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v10

    .line 2117
    .local v10, "itemValue":Ljava/lang/Object;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v8    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v9    # "i":I
    .end local v10    # "itemValue":Ljava/lang/Object;
    .end local v11    # "list":Ljava/util/List;
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_a
    move-object/from16 v5, p1

    .line 2124
    check-cast v5, Ljava/lang/Enum;

    .local v5, "e":Ljava/lang/Enum;
    const-string/jumbo v15, "name"

    .line 2125
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "ordinal"

    .line 2129
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2130
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    .line 2126
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .end local v5    # "e":Ljava/lang/Enum;
    :cond_c
    move-object/from16 v7, p1

    .line 2135
    check-cast v7, Ljava/util/Calendar;

    .local v7, "e":Ljava/util/Calendar;
    const-string/jumbo v15, "year"

    .line 2137
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string/jumbo v15, "month"

    .line 2141
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    const-string/jumbo v15, "day"

    .line 2145
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string/jumbo v15, "hour"

    .line 2149
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string/jumbo v15, "minute"

    .line 2153
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string/jumbo v15, "second"

    .line 2157
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v15, 0xd

    .line 2158
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    :cond_d
    const/4 v15, 0x1

    .line 2138
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    :cond_e
    const/4 v15, 0x2

    .line 2142
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    :cond_f
    const/4 v15, 0x5

    .line 2146
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    :cond_10
    const/16 v15, 0xb

    .line 2150
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15

    :cond_11
    const/16 v15, 0xc

    .line 2154
    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    return-object v15
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1975
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1977
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 1979
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-nez v0, :cond_0

    .line 1987
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 1992
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 1981
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    .line 1983
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "jsonpath error, path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v3, p1

    .line 1988
    check-cast v3, Ljava/util/Map;

    .line 1989
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    if-nez v1, :cond_0

    const-string/jumbo v1, "*"

    .line 64
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 70
    .end local v0    # "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    :goto_0
    return-void

    .line 61
    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 65
    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Segement;

    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 214
    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 220
    move-object v0, p1

    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "parentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 222
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 233
    .end local v3    # "parentObject":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v3, :cond_4

    .line 237
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v5, v6

    .line 238
    .local v2, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v5, :cond_5

    .line 243
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v5, :cond_6

    .line 247
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 215
    .end local v0    # "currentObject":Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_1
    return v6

    .line 223
    .restart local v0    # "currentObject":Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v3    # "parentObject":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_3

    .line 227
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v5, v5, v1

    invoke-interface {v5, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_3
    move-object v3, v0

    goto :goto_1

    .line 234
    .end local v3    # "parentObject":Ljava/lang/Object;
    :cond_4
    return v6

    .restart local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_5
    move-object v4, v2

    .line 239
    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 240
    .local v4, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v4, p0, v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 244
    .end local v4    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_6
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-virtual {v2, p0, v3}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1950
    instance-of v3, p2, Ljava/util/List;

    if-nez v3, :cond_0

    .line 1969
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1970
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported set operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v1, p2

    .line 1951
    check-cast v1, Ljava/util/List;

    .line 1952
    .local v1, "list":Ljava/util/List;
    if-gez p3, :cond_1

    .line 1958
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int v2, v3, p3

    .line 1960
    .local v2, "newIndex":I
    if-ltz v2, :cond_3

    .line 1964
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1966
    .end local v2    # "newIndex":I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1953
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_2

    .line 1956
    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1954
    :cond_2
    return v4

    .line 1961
    .restart local v2    # "newIndex":I
    :cond_3
    return v4
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 9
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 2263
    instance-of v6, p1, Ljava/util/Map;

    if-nez v6, :cond_0

    .line 2268
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v0, 0x0

    .line 2271
    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v6, :cond_2

    .line 2275
    .end local v0    # "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :goto_0
    if-nez v0, :cond_3

    .line 2285
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 2264
    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    check-cast p1, Ljava/util/Map;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2265
    .local v3, "origin":Ljava/lang/Object;
    if-nez v3, :cond_1

    :goto_1
    return v4

    :cond_1
    move v4, v5

    goto :goto_1

    .end local v3    # "origin":Ljava/lang/Object;
    .restart local v0    # "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    .line 2272
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    goto :goto_0

    .line 2276
    .end local v0    # "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_3
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 2277
    .local v2, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v2, :cond_4

    .line 2281
    invoke-virtual {v2, p1, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2282
    return v5

    .line 2278
    :cond_4
    return v4
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x0

    .line 251
    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 257
    move-object v1, p1

    .local v1, "currentObject":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "parentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 259
    .end local v6    # "parentObject":Ljava/lang/Object;
    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v10, v10

    if-lt v2, v10, :cond_2

    .line 299
    :cond_0
    if-eqz v6, :cond_8

    .line 303
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v3, v10, v11

    .line 304
    .local v3, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v10, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v10, :cond_9

    .line 310
    instance-of v10, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v10, :cond_a

    .line 314
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v10}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10

    .line 252
    .end local v1    # "currentObject":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_1
    return v12

    .line 265
    .restart local v1    # "currentObject":Ljava/lang/Object;
    .restart local v2    # "i":I
    :cond_2
    move-object v6, v1

    .line 266
    .restart local v6    # "parentObject":Ljava/lang/Object;
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v9, v10, v2

    .line 267
    .local v9, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-interface {v9, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_3

    .line 259
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 270
    .local v5, "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-lt v2, v10, :cond_4

    .end local v5    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_2
    const/4 v4, 0x0

    .line 275
    .local v4, "newObj":Ljava/lang/Object;
    instance-of v10, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v10, :cond_5

    .line 277
    instance-of v10, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v10, :cond_6

    .line 281
    .end local v4    # "newObj":Ljava/lang/Object;
    :goto_3
    if-eqz v4, :cond_0

    .line 282
    instance-of v10, v9, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v10, :cond_7

    .line 287
    instance-of v10, v9, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v10, :cond_0

    move-object v0, v9

    .line 288
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .line 289
    .local v0, "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    invoke-virtual {v0, p0, v6, v4}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    move-object v1, v4

    goto :goto_1

    .line 271
    .end local v0    # "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    .restart local v5    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    add-int/lit8 v11, v2, 0x1

    aget-object v5, v10, v11

    .local v5, "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    goto :goto_2

    .line 276
    .end local v5    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v4    # "newObj":Ljava/lang/Object;
    :cond_5
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    .end local v4    # "newObj":Ljava/lang/Object;
    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .restart local v4    # "newObj":Ljava/lang/Object;
    goto :goto_3

    .line 278
    :cond_6
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    .end local v4    # "newObj":Ljava/lang/Object;
    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .restart local v4    # "newObj":Ljava/lang/Object;
    goto :goto_3

    .end local v4    # "newObj":Ljava/lang/Object;
    :cond_7
    move-object v7, v9

    .line 283
    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 284
    .local v7, "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v7, p0, v6, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    move-object v1, v4

    goto :goto_1

    .line 300
    .end local v6    # "parentObject":Ljava/lang/Object;
    .end local v7    # "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    .end local v9    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_8
    return v12

    .restart local v3    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_9
    move-object v8, v3

    .line 305
    check-cast v8, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 306
    .local v8, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v8, p0, v6, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    const/4 v10, 0x1

    return v10

    .line 311
    .end local v8    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_a
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v3    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-virtual {v3, p0, v6, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    return v10
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 1918
    instance-of v3, p2, Ljava/util/List;

    if-nez v3, :cond_0

    .line 1928
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1929
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1945
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported set operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v2, p2

    .line 1919
    check-cast v2, Ljava/util/List;

    .line 1920
    .local v2, "list":Ljava/util/List;
    if-gez p3, :cond_1

    .line 1923
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p3

    invoke-interface {v2, v3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1925
    :goto_0
    return v4

    .line 1921
    :cond_1
    invoke-interface {v2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1930
    .end local v2    # "list":Ljava/util/List;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1932
    .local v0, "arrayLenth":I
    if-gez p3, :cond_4

    .line 1937
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1942
    :cond_3
    :goto_1
    return v4

    .line 1933
    :cond_4
    if-ge p3, v0, :cond_3

    .line 1934
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 1938
    :cond_5
    add-int v3, v0, p3

    invoke-static {p2, v3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2226
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_0

    .line 2231
    instance-of v4, p1, Ljava/util/List;

    if-nez v4, :cond_1

    .line 2241
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v0, 0x0

    .line 2244
    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v4, :cond_4

    .line 2248
    .end local v0    # "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :goto_0
    if-nez v0, :cond_5

    .line 2258
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 2227
    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    check-cast p1, Ljava/util/Map;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    return v7

    .line 2232
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/util/List;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2238
    return v7

    .line 2232
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2233
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 2236
    invoke-virtual {p0, v2, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "element":Ljava/lang/Object;
    .restart local v0    # "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_4
    move-object v0, v1

    .line 2245
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    goto :goto_0

    .line 2249
    .end local v0    # "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_5
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 2250
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v3, :cond_6

    .line 2254
    invoke-virtual {v3, p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2255
    return v7

    .line 2251
    :cond_6
    return v6
.end method

.method public size(Ljava/lang/Object;)I
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 138
    move-object v0, p1

    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 139
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    return v2

    .end local v0    # "currentObject":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    .line 133
    return v2

    .line 140
    .restart local v0    # "currentObject":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
