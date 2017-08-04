.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static compatibleWithFieldName:Z

.field public static compatibleWithJavaBean:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 75
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 79
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 82
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 85
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 926
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 929
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 964
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 3

    .prologue
    .line 933
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 14
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .prologue
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1044
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1047
    .local v1, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1048
    .local v3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1050
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v11

    .line 1051
    .local v11, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1052
    .local v9, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v11, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v12, 0x0

    .local v12, "orders":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1058
    .local v7, "typeName":Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v8, 0x0

    .line 1071
    .end local v7    # "typeName":Ljava/lang/String;
    .end local v12    # "orders":[Ljava/lang/String;
    .local v8, "features":I
    :goto_0
    if-nez v12, :cond_3

    .line 1074
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1075
    .local v13, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1077
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1078
    .local v10, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v13, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1080
    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1084
    :goto_2
    new-instance v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v4

    .line 1059
    .end local v8    # "features":I
    .end local v10    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v7    # "typeName":Ljava/lang/String;
    .restart local v12    # "orders":[Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v12

    .line 1060
    .local v12, "orders":[Ljava/lang/String;
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v7

    .line 1061
    .local v7, "typeName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    .end local v7    # "typeName":Ljava/lang/String;
    :goto_3
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .restart local v8    # "features":I
    goto :goto_0

    .end local v8    # "features":I
    .restart local v7    # "typeName":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 1062
    .local v7, "typeName":Ljava/lang/String;
    goto :goto_3

    .line 1071
    .end local v7    # "typeName":Ljava/lang/String;
    .end local v12    # "orders":[Ljava/lang/String;
    .restart local v8    # "features":I
    :cond_3
    array-length v0, v12

    if-eqz v0, :cond_0

    .line 1072
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    .restart local v13    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    goto :goto_1

    .line 1081
    .restart local v10    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4
    move-object v10, v9

    goto :goto_2
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v11, 0x0

    .line 594
    if-eqz p0, :cond_2

    .line 598
    if-eqz p1, :cond_3

    .line 602
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq p1, v10, :cond_4

    .line 606
    instance-of v10, p0, Ljava/util/Map;

    if-nez v10, :cond_5

    .line 619
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-nez v10, :cond_9

    .line 639
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 643
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_d

    .line 644
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v10

    return-object v10

    .line 595
    :cond_2
    return-object v11

    .line 599
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "clazz is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 603
    :cond_4
    return-object p0

    :cond_5
    const-class v10, Ljava/util/Map;

    .line 607
    if-eq p1, v10, :cond_7

    move-object v7, p0

    .line 611
    check-cast v7, Ljava/util/Map;

    .local v7, "map":Ljava/util/Map;
    const-class v10, Ljava/lang/Object;

    .line 612
    if-eq p1, v10, :cond_8

    .line 616
    :cond_6
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 608
    .end local v7    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    return-object p0

    .line 612
    .restart local v7    # "map":Ljava/util/Map;
    :cond_8
    sget-object v10, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 613
    return-object p0

    .line 620
    .end local v7    # "map":Ljava/util/Map;
    :cond_9
    instance-of v10, p0, Ljava/util/Collection;

    if-nez v10, :cond_a

    const-class v10, [B

    .line 634
    if-ne p1, v10, :cond_0

    .line 635
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v10

    return-object v10

    :cond_a
    move-object v2, p0

    .line 622
    check-cast v2, Ljava/util/Collection;

    .local v2, "collection":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 624
    .local v5, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 625
    .local v0, "array":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_b

    .line 631
    return-object v0

    .line 625
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 626
    .local v6, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v6, v11, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 627
    .local v9, "value":Ljava/lang/Object;
    invoke-static {v0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 628
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    .end local v6    # "item":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_c
    return-object p0

    :cond_d
    const-class v10, Ljava/lang/Boolean;

    .line 643
    if-eq p1, v10, :cond_1

    .line 647
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_f

    .line 648
    :cond_e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v10

    return-object v10

    :cond_f
    const-class v10, Ljava/lang/Byte;

    .line 647
    if-eq p1, v10, :cond_e

    .line 655
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_11

    .line 656
    :cond_10
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v10

    return-object v10

    :cond_11
    const-class v10, Ljava/lang/Short;

    .line 655
    if-eq p1, v10, :cond_10

    .line 659
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_13

    .line 660
    :cond_12
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v10

    return-object v10

    :cond_13
    const-class v10, Ljava/lang/Integer;

    .line 659
    if-eq p1, v10, :cond_12

    .line 663
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_15

    .line 664
    :cond_14
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v10

    return-object v10

    :cond_15
    const-class v10, Ljava/lang/Long;

    .line 663
    if-eq p1, v10, :cond_14

    .line 667
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_17

    .line 668
    :cond_16
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v10

    return-object v10

    :cond_17
    const-class v10, Ljava/lang/Float;

    .line 667
    if-eq p1, v10, :cond_16

    .line 671
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v10, :cond_19

    .line 672
    :cond_18
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v10

    return-object v10

    :cond_19
    const-class v10, Ljava/lang/Double;

    .line 671
    if-eq p1, v10, :cond_18

    const-class v10, Ljava/lang/String;

    .line 675
    if-eq p1, v10, :cond_1b

    const-class v10, Ljava/math/BigDecimal;

    .line 679
    if-eq p1, v10, :cond_1c

    const-class v10, Ljava/math/BigInteger;

    .line 683
    if-eq p1, v10, :cond_1d

    const-class v10, Ljava/util/Date;

    .line 687
    if-eq p1, v10, :cond_1e

    const-class v10, Ljava/sql/Date;

    .line 691
    if-eq p1, v10, :cond_1f

    const-class v10, Ljava/sql/Timestamp;

    .line 695
    if-eq p1, v10, :cond_20

    .line 699
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-nez v10, :cond_21

    const-class v10, Ljava/util/Calendar;

    .line 703
    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 719
    instance-of v10, p0, Ljava/lang/String;

    if-nez v10, :cond_24

    .line 733
    :cond_1a
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 676
    :cond_1b
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 680
    :cond_1c
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v10

    return-object v10

    .line 684
    :cond_1d
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v10

    return-object v10

    .line 688
    :cond_1e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v10

    return-object v10

    .line 692
    :cond_1f
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v10

    return-object v10

    .line 696
    :cond_20
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v10

    return-object v10

    .line 700
    :cond_21
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 704
    :cond_22
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .local v3, "date":Ljava/util/Date;
    const-class v10, Ljava/util/Calendar;

    .line 706
    if-eq p1, v10, :cond_23

    .line 710
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .local v1, "calendar":Ljava/util/Calendar;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 716
    return-object v1

    .line 707
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_23
    sget-object v10, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .restart local v1    # "calendar":Ljava/util/Calendar;
    goto :goto_1

    .line 713
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_24
    move-object v8, p0

    .line 720
    check-cast v8, Ljava/lang/String;

    .line 722
    .local v8, "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_26

    .line 725
    :cond_25
    return-object v11

    :cond_26
    const-string/jumbo v10, "null"

    .line 723
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    const-string/jumbo v10, "NULL"

    .line 724
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    const-class v10, Ljava/util/Currency;

    .line 728
    if-ne p1, v10, :cond_1a

    .line 729
    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v10

    return-object v10
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 18
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .local v11, "rawTye":Ljava/lang/reflect/Type;
    const-class v15, Ljava/util/Set;

    .line 796
    if-ne v11, v15, :cond_4

    .line 800
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    .line 802
    .local v7, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/Iterable;

    if-nez v15, :cond_5

    .end local v7    # "itemType":Ljava/lang/reflect/Type;
    :goto_0
    const-class v15, Ljava/util/Map;

    .line 821
    if-ne v11, v15, :cond_a

    .line 822
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v9, v15, v16

    .line 823
    .local v9, "keyType":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v14, v15, v16

    .line 825
    .local v14, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/util/Map;

    if-nez v15, :cond_b

    .line 839
    .end local v9    # "keyType":Ljava/lang/reflect/Type;
    .end local v14    # "valueType":Ljava/lang/reflect/Type;
    :goto_1
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_d

    .line 846
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    array-length v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 853
    :cond_3
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "can not cast to : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_4
    const-class v15, Ljava/util/HashSet;

    .line 796
    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/TreeSet;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/List;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/ArrayList;

    if-eq v11, v15, :cond_0

    goto :goto_0

    .restart local v7    # "itemType":Ljava/lang/reflect/Type;
    :cond_5
    const-class v15, Ljava/util/Set;

    .line 804
    if-ne v11, v15, :cond_7

    .line 805
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 812
    .local v3, "collection":Ljava/util/Collection;
    :goto_2
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_9

    .line 817
    return-object v3

    .end local v3    # "collection":Ljava/util/Collection;
    .end local v5    # "it":Ljava/util/Iterator;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    const-class v15, Ljava/util/HashSet;

    .line 804
    if-eq v11, v15, :cond_6

    const-class v15, Ljava/util/TreeSet;

    .line 806
    if-eq v11, v15, :cond_8

    .line 809
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_2

    .line 807
    .end local v3    # "collection":Ljava/util/Collection;
    :cond_8
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_2

    .line 813
    .end local p0    # "obj":Ljava/lang/Object;
    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 814
    .local v6, "item":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v3    # "collection":Ljava/util/Collection;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "itemType":Ljava/lang/reflect/Type;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_a
    const-class v15, Ljava/util/HashMap;

    .line 821
    if-eq v11, v15, :cond_1

    goto :goto_1

    .line 826
    .restart local v9    # "keyType":Ljava/lang/reflect/Type;
    .restart local v14    # "valueType":Ljava/lang/reflect/Type;
    :cond_b
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v10, "map":Ljava/util/Map;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_c

    .line 835
    return-object v10

    .line 828
    :cond_c
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 829
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v8

    .line 830
    .local v8, "key":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    .line 832
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v10, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "key":Ljava/lang/Object;
    .end local v9    # "keyType":Ljava/lang/reflect/Type;
    .end local v10    # "map":Ljava/util/Map;
    .end local v13    # "value":Ljava/lang/Object;
    .end local v14    # "valueType":Ljava/lang/reflect/Type;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_d
    move-object/from16 v12, p0

    .line 840
    check-cast v12, Ljava/lang/String;

    .line 841
    .local v12, "strVal":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x0

    .line 842
    return-object v15

    .line 847
    .end local v12    # "strVal":Ljava/lang/String;
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v2, v15, v16

    .line 848
    .local v2, "argType":Ljava/lang/reflect/Type;
    instance-of v15, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v15, :cond_3

    .line 849
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v15

    return-object v15
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 764
    if-eqz p0, :cond_0

    .line 768
    instance-of v1, p1, Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 772
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    .line 776
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 785
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_6

    .line 789
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_0
    return-object v2

    .line 769
    :cond_1
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 773
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    move-object v0, p0

    .line 777
    check-cast v0, Ljava/lang/String;

    .line 778
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 781
    :cond_4
    return-object v2

    :cond_5
    const-string/jumbo v1, "null"

    .line 779
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "NULL"

    .line 780
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 786
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_6
    return-object p0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 170
    if-eqz p0, :cond_0

    .line 174
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-nez v1, :cond_1

    .line 178
    instance-of v1, p0, Ljava/math/BigInteger;

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 171
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 175
    :cond_1
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 179
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 184
    .restart local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    return-object v2
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 191
    if-eqz p0, :cond_1

    .line 195
    instance-of v1, p0, Ljava/math/BigInteger;

    if-nez v1, :cond_2

    .line 199
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 200
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 192
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2

    .line 196
    :cond_2
    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 199
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 207
    :cond_4
    return-object v2

    :cond_5
    const-string/jumbo v1, "null"

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "NULL"

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 210
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 553
    if-eqz p0, :cond_0

    .line 557
    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 561
    instance-of v3, p0, Ljava/lang/Number;

    if-nez v3, :cond_2

    .line 565
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 585
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to boolean, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_0
    return-object v4

    .line 558
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 562
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_3
    move v1, v2

    goto :goto_1

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    move-object v0, p0

    .line 566
    check-cast v0, Ljava/lang/String;

    .line 568
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 571
    :cond_5
    return-object v4

    :cond_6
    const-string/jumbo v1, "null"

    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "NULL"

    .line 570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "true"

    .line 574
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 576
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_8
    const-string/jumbo v1, "1"

    .line 575
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "false"

    .line 579
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 581
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_a
    const-string/jumbo v1, "0"

    .line 580
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 97
    if-eqz p0, :cond_0

    .line 101
    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_1

    .line 105
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 116
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    return-object v2

    .line 102
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    move-object v0, p0

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 110
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v1, "null"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 542
    instance-of v0, p0, [B

    if-nez v0, :cond_0

    .line 546
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    return-object p0

    .line 547
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 120
    if-eqz p0, :cond_0

    .line 124
    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 128
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 142
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    return-object v2

    .line 125
    :cond_1
    check-cast p0, Ljava/lang/Character;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    move-object v0, p0

    .line 129
    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 132
    :cond_3
    return-object v2

    .line 136
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 15
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 272
    instance-of v12, p0, Ljava/util/Date;

    if-nez v12, :cond_1

    .line 276
    instance-of v12, p0, Ljava/util/Calendar;

    if-nez v12, :cond_2

    const-wide/16 v8, -0x1

    .line 282
    .local v8, "longValue":J
    instance-of v12, p0, Ljava/lang/Number;

    if-nez v12, :cond_3

    .line 287
    instance-of v12, p0, Ljava/lang/String;

    if-nez v12, :cond_4

    :goto_0
    const-wide/16 v12, 0x0

    .line 333
    cmp-long v12, v8, v12

    if-ltz v12, :cond_d

    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_14

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v12, "oracle.sql.TIMESTAMP"

    .line 335
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    const-string/jumbo v12, "oracle.sql.DATE"

    .line 355
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 375
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "can not cast to Date, value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "longValue":J
    :cond_0
    const/4 v12, 0x0

    .line 269
    return-object v12

    .line 273
    :cond_1
    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 277
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    return-object v12

    .line 283
    .restart local v8    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 284
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    return-object v12

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    move-object v11, p0

    .line 288
    check-cast v11, Ljava/lang/String;

    .line 290
    .local v11, "strVal":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_6

    .line 297
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    const-string/jumbo v12, "/Date("

    .line 300
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_5
    :goto_2
    const/16 v12, 0x2d

    .line 305
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    .line 326
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_c

    .line 330
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto/16 :goto_0

    .line 293
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 294
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 297
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 294
    return-object v12

    .line 298
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catchall_0
    move-exception v12

    .line 297
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v12

    :cond_7
    const-string/jumbo v12, ")/"

    .line 300
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x6

    .line 301
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "dotnetDateStr":Ljava/lang/String;
    move-object v11, v4

    goto :goto_2

    .line 307
    .end local v4    # "dotnetDateStr":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v12, v13, :cond_9

    .line 309
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-eq v12, v13, :cond_a

    .line 311
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v12, v13, :cond_b

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 317
    .local v7, "format":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v12, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v2, v7, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 318
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v12, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 320
    :try_start_2
    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    return-object v12

    .line 308
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v7    # "format":Ljava/lang/String;
    :cond_9
    sget-object v7, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .restart local v7    # "format":Ljava/lang/String;
    goto :goto_3

    .end local v7    # "format":Ljava/lang/String;
    :cond_a
    const-string/jumbo v7, "yyyy-MM-dd"

    .line 310
    .restart local v7    # "format":Ljava/lang/String;
    goto :goto_3

    .end local v7    # "format":Ljava/lang/String;
    :cond_b
    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    .line 312
    .restart local v7    # "format":Ljava/lang/String;
    goto :goto_3

    .line 320
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Ljava/text/ParseException;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "can not cast to Date, value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "e":Ljava/text/ParseException;
    .end local v7    # "format":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    .line 327
    return-object v12

    .line 333
    .end local v3    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v11    # "strVal":Ljava/lang/String;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 336
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    sget-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_10

    .line 348
    :cond_f
    :goto_4
    :try_start_3
    sget-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, p0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 352
    .local v10, "result":Ljava/lang/Object;
    check-cast v10, Ljava/util/Date;

    .end local v10    # "result":Ljava/lang/Object;
    return-object v10

    .line 336
    :cond_10
    sget-boolean v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v12, :cond_f

    :try_start_4
    const-string/jumbo v12, "toJdbc"

    const/4 v13, 0x0

    .line 338
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 342
    :goto_5
    const/4 v12, 0x1

    sput-boolean v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    goto :goto_4

    .line 343
    :catchall_1
    move-exception v12

    .line 342
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw v12

    .line 351
    :catch_1
    move-exception v5

    .line 350
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 356
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_11
    sget-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_13

    .line 368
    :cond_12
    :goto_6
    :try_start_5
    sget-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, p0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v10

    .line 372
    .restart local v10    # "result":Ljava/lang/Object;
    check-cast v10, Ljava/util/Date;

    .end local v10    # "result":Ljava/lang/Object;
    return-object v10

    .line 356
    :cond_13
    sget-boolean v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v12, :cond_12

    :try_start_6
    const-string/jumbo v12, "toJdbc"

    const/4 v13, 0x0

    .line 358
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 362
    :goto_7
    const/4 v12, 0x1

    sput-boolean v12, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    goto :goto_6

    .line 363
    :catchall_2
    move-exception v12

    .line 362
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw v12

    .line 371
    :catch_2
    move-exception v5

    .line 370
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 378
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    return-object v12

    .line 363
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v12

    goto :goto_7

    .line 343
    :catch_4
    move-exception v12

    goto :goto_5
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 241
    if-eqz p0, :cond_0

    .line 245
    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_1

    .line 249
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 264
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    return-object v2

    .line 246
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 250
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 254
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v1, "null"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2c

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 261
    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_5
    const-string/jumbo v1, ","

    const-string/jumbo v2, ""

    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_1

    .line 748
    instance-of v5, p0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    .line 759
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 740
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 741
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 745
    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    return-object v5

    :cond_2
    const/4 v5, 0x0

    .line 742
    return-object v5

    .line 749
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 750
    .local v3, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 751
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 752
    aget-object v5, v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    .line 757
    .end local v3    # "ordinal":I
    .end local v4    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 756
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 214
    if-eqz p0, :cond_0

    .line 218
    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_1

    .line 222
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 237
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    return-object v2

    .line 219
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 223
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 227
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v1, "null"

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2c

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 234
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_5
    const-string/jumbo v1, ","

    const-string/jumbo v2, ""

    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 506
    if-eqz p0, :cond_0

    .line 510
    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 514
    instance-of v2, p0, Ljava/lang/Number;

    if-nez v2, :cond_2

    .line 518
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 534
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 538
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_0
    return-object v3

    .line 511
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 515
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p0

    .line 519
    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 524
    :cond_4
    return-object v3

    :cond_5
    const-string/jumbo v1, "null"

    .line 522
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "NULL"

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2c

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_6

    .line 531
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_6
    const-string/jumbo v1, ","

    const-string/jumbo v2, ""

    .line 528
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_7
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 17
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v14, Ljava/lang/StackTraceElement;

    .line 859
    move-object/from16 v0, p1

    if-eq v0, v14, :cond_1

    .line 877
    sget-object v14, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 878
    .local v7, "iClassObject":Ljava/lang/Object;
    instance-of v14, v7, Ljava/lang/String;

    if-nez v14, :cond_3

    .line 893
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v14

    if-nez v14, :cond_5

    .line 906
    if-eqz p2, :cond_7

    :goto_0
    const/4 v8, 0x0

    .line 911
    .local v8, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 912
    .local v4, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v14, v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v14, :cond_8

    .line 916
    .end local v8    # "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :goto_1
    if-eqz v8, :cond_9

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v14

    return-object v14

    .end local v4    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v7    # "iClassObject":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v14, "className"

    .line 860
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "declaringClass":Ljava/lang/String;
    const-string/jumbo v14, "methodName"

    .line 861
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "methodName":Ljava/lang/String;
    const-string/jumbo v14, "fileName"

    .line 862
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "fileName":Ljava/lang/String;
    const-string/jumbo v14, "lineNumber"

    .line 865
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    .line 866
    .local v13, "value":Ljava/lang/Number;
    if-eqz v13, :cond_2

    .line 869
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 873
    .local v9, "lineNumber":I
    :goto_2
    new-instance v14, Ljava/lang/StackTraceElement;

    invoke-direct {v14, v3, v11, v6, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v14

    .end local v9    # "lineNumber":I
    :cond_2
    const/4 v9, 0x0

    .line 867
    .restart local v9    # "lineNumber":I
    goto :goto_2

    .line 879
    .end local v3    # "declaringClass":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "lineNumber":I
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Number;
    .restart local v7    # "iClassObject":Ljava/lang/Object;
    :cond_3
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 881
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 883
    .local v10, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v10, :cond_4

    .line 887
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 888
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v10, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v14

    return-object v14

    .line 884
    :cond_4
    new-instance v14, Ljava/lang/ClassNotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v2    # "className":Ljava/lang/String;
    .end local v7    # "iClassObject":Ljava/lang/Object;
    .end local v10    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 922
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 896
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "iClassObject":Ljava/lang/Object;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v14, :cond_6

    .line 899
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 902
    .local v12, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-static {v14, v15, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v14

    return-object v14

    .line 897
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v12, v0

    .restart local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_3

    .line 907
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    goto/16 :goto_0

    .line 913
    .restart local v4    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v8    # "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_8
    move-object v0, v4

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object v8, v0

    .local v8, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    goto/16 :goto_1

    .line 917
    .end local v8    # "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_9
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "can not get javaBeanDeserializer"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 464
    if-eqz p0, :cond_1

    .line 468
    instance-of v3, p0, Ljava/lang/Number;

    if-nez v3, :cond_2

    .line 472
    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_3

    .line 502
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not cast to long, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_1
    return-object v4

    .line 469
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v2, p0

    .line 473
    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 477
    :cond_4
    return-object v4

    :cond_5
    const-string/jumbo v3, "null"

    .line 475
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "NULL"

    .line 476
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x2c

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-nez v3, :cond_6

    .line 485
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :cond_6
    const-string/jumbo v3, ","

    const-string/jumbo v4, ""

    .line 481
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 485
    :catch_0
    move-exception v3

    .line 490
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .local v1, "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v0, 0x0

    .line 492
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 495
    .end local v0    # "calendar":Ljava/util/Calendar;
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 493
    .restart local v0    # "calendar":Ljava/util/Calendar;
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    goto :goto_1
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 146
    if-eqz p0, :cond_0

    .line 150
    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_1

    .line 154
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 166
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    return-object v2

    .line 151
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    move-object v0, p0

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 160
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v1, "null"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 382
    if-eqz p0, :cond_0

    .line 386
    instance-of v3, p0, Ljava/sql/Date;

    if-nez v3, :cond_1

    .line 390
    instance-of v3, p0, Ljava/util/Date;

    if-nez v3, :cond_2

    .line 394
    instance-of v3, p0, Ljava/util/Calendar;

    if-nez v3, :cond_3

    const-wide/16 v0, 0x0

    .line 400
    .local v0, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-nez v3, :cond_4

    .line 404
    :goto_0
    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_5

    :goto_1
    const-wide/16 v6, 0x0

    .line 415
    cmp-long v3, v0, v6

    if-lez v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_9

    .line 416
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    .end local v0    # "longValue":J
    :cond_0
    return-object v5

    .line 387
    :cond_1
    check-cast p0, Ljava/sql/Date;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 391
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object v3

    .line 395
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object v3

    .restart local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    move-object v3, p0

    .line 401
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-object v2, p0

    .line 405
    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 409
    :cond_6
    return-object v5

    :cond_7
    const-string/jumbo v3, "null"

    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "NULL"

    .line 408
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 412
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_8
    move v3, v4

    .line 415
    goto :goto_2

    .line 419
    :cond_9
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v0, v1}, Ljava/sql/Date;-><init>(J)V

    return-object v3
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 89
    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 423
    if-eqz p0, :cond_0

    .line 427
    instance-of v3, p0, Ljava/util/Calendar;

    if-nez v3, :cond_1

    .line 431
    instance-of v3, p0, Ljava/sql/Timestamp;

    if-nez v3, :cond_2

    .line 435
    instance-of v3, p0, Ljava/util/Date;

    if-nez v3, :cond_3

    const-wide/16 v0, 0x0

    .line 441
    .local v0, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-nez v3, :cond_4

    .line 445
    :goto_0
    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_5

    :goto_1
    const-wide/16 v6, 0x0

    .line 456
    cmp-long v3, v0, v6

    if-lez v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_9

    .line 457
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    .end local v0    # "longValue":J
    :cond_0
    return-object v5

    .line 428
    :cond_1
    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v3

    .line 432
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/sql/Timestamp;

    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    .line 436
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v3

    .restart local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    move-object v3, p0

    .line 442
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-object v2, p0

    .line 446
    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 450
    :cond_6
    return-object v5

    :cond_7
    const-string/jumbo v3, "null"

    .line 448
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "NULL"

    .line 449
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 453
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_8
    move v3, v4

    .line 456
    goto :goto_2

    .line 460
    :cond_9
    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v3
.end method

.method public static clearClassMapping()V
    .locals 1

    .prologue
    .line 955
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 956
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 957
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 40
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p4, "sorted"    # Z
    .param p5, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    new-instance v32, Ljava/util/LinkedHashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1096
    .local v32, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v6, 0x0

    move v14, v6

    :goto_0
    move/from16 v0, v16

    if-lt v14, v0, :cond_2

    .line 1327
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v0, v7

    move/from16 v39, v0

    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v39

    if-lt v6, v0, :cond_2a

    .line 1373
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v31, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/16 v30, 0x0

    .local v30, "containsAll":Z
    const/16 v38, 0x0

    .local v38, "orders":[Ljava/lang/String;
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1378
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v26

    check-cast v26, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1379
    .local v26, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v26, :cond_32

    .line 1395
    .end local v38    # "orders":[Ljava/lang/String;
    :cond_0
    :goto_2
    if-nez v30, :cond_36

    .line 1401
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_37

    .line 1405
    if-nez p4, :cond_38

    .line 1410
    :cond_1
    :goto_4
    return-object v31

    .line 1096
    .end local v26    # "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v30    # "containsAll":Z
    .end local v31    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_2
    aget-object v4, v15, v14

    .line 1097
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v37

    .local v37, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "ordinal":I
    const/4 v9, 0x0

    .local v9, "serialzeFeatures":I
    const/4 v10, 0x0

    .local v10, "parserFeatures":I
    const/16 v36, 0x0

    .line 1101
    .local v36, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1105
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1109
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_7

    .line 1113
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/ClassLoader;

    if-eq v6, v7, :cond_8

    .line 1117
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "getMetaClass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_3
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1122
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1124
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v11, :cond_a

    .line 1128
    :goto_5
    if-nez v11, :cond_b

    move-object/from16 v13, v36

    .end local v36    # "label":Ljava/lang/String;
    .local v13, "label":Ljava/lang/String;
    :goto_6
    const-string/jumbo v6, "get"

    .line 1158
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    :goto_7
    const-string/jumbo v6, "is"

    .line 1251
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1096
    .end local v11    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4
    :goto_8
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    goto/16 :goto_0

    .end local v13    # "label":Ljava/lang/String;
    .restart local v36    # "label":Ljava/lang/String;
    :cond_5
    move-object/from16 v13, v36

    .line 1102
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .end local v13    # "label":Ljava/lang/String;
    :cond_6
    move-object/from16 v13, v36

    .line 1106
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .end local v13    # "label":Ljava/lang/String;
    :cond_7
    move-object/from16 v13, v36

    .line 1110
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .end local v13    # "label":Ljava/lang/String;
    :cond_8
    move-object/from16 v13, v36

    .line 1114
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .line 1118
    .end local v13    # "label":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "groovy.lang.MetaClass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v13, v36

    .line 1119
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .line 1125
    .end local v13    # "label":Ljava/lang/String;
    .restart local v11    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v11

    goto :goto_5

    .line 1129
    :cond_b
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1133
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1134
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1135
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1137
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    .line 1153
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_10

    move-object/from16 v13, v36

    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_6

    .end local v13    # "label":Ljava/lang/String;
    :cond_c
    move-object/from16 v13, v36

    .line 1130
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .line 1138
    .end local v13    # "label":Ljava/lang/String;
    :cond_d
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "propertyName":Ljava/lang/String;
    if-nez p2, :cond_f

    .line 1147
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1149
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v32

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v36

    .line 1150
    .restart local v13    # "label":Ljava/lang/String;
    goto :goto_8

    .line 1141
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "label":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1142
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-nez v3, :cond_e

    move-object/from16 v13, v36

    .line 1143
    .restart local v13    # "label":Ljava/lang/String;
    goto/16 :goto_8

    .line 1154
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v13    # "label":Ljava/lang/String;
    :cond_10
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "label":Ljava/lang/String;
    goto/16 :goto_6

    .line 1159
    .end local v36    # "label":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_4

    const-string/jumbo v6, "getClass"

    .line 1163
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x3

    .line 1167
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    move/from16 v28, v0

    .line 1170
    .local v28, "c3":C
    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1173
    :cond_12
    sget-boolean v6, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-nez v6, :cond_16

    .line 1176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_9
    const/4 v6, 0x3

    .line 1178
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    :goto_a
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v33

    .line 1191
    .local v33, "ignore":Z
    if-nez v33, :cond_4

    .line 1195
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1197
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_19

    :cond_13
    :goto_b
    const/4 v12, 0x0

    .line 1206
    .local v12, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v5, :cond_1a

    .line 1235
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_14
    :goto_c
    if-nez p2, :cond_1d

    .line 1242
    :goto_d
    if-nez p5, :cond_1e

    .line 1246
    :goto_e
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1248
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v32

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v33    # "ignore":Z
    :cond_15
    const/16 v6, 0x200

    .line 1170
    move/from16 v0, v28

    if-gt v0, v6, :cond_12

    const/16 v6, 0x5f

    .line 1179
    move/from16 v0, v28

    if-eq v0, v6, :cond_17

    const/16 v6, 0x66

    .line 1181
    move/from16 v0, v28

    if-eq v0, v6, :cond_18

    .line 1183
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_4

    const/4 v6, 0x4

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    .line 1184
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_a

    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_16
    const/4 v6, 0x3

    .line 1174
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_9

    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_17
    const/4 v6, 0x4

    .line 1180
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_a

    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_18
    const/4 v6, 0x3

    .line 1182
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_a

    .line 1197
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v33    # "ignore":Z
    :cond_19
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_13

    const/4 v6, 0x1

    .line 1198
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    move/from16 v29, v0

    .local v29, "ch":C
    const/16 v6, 0x41

    .line 1199
    move/from16 v0, v29

    if-lt v0, v6, :cond_13

    const/16 v6, 0x5a

    move/from16 v0, v29

    if-gt v0, v6, :cond_13

    const/4 v6, 0x3

    .line 1200
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1201
    .local v35, "javaBeanCompatiblePropertyName":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    goto/16 :goto_b

    .end local v29    # "ch":C
    .end local v35    # "javaBeanCompatiblePropertyName":Ljava/lang/String;
    .restart local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1a
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1209
    .local v12, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_14

    .line 1210
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1214
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1215
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1216
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1218
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1c

    .line 1229
    :cond_1b
    :goto_f
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    .line 1230
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_c

    .line 1219
    :cond_1c
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1221
    if-eqz p2, :cond_1b

    .line 1222
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1223
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_4

    goto :goto_f

    .line 1236
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1d
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1237
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_4

    goto/16 :goto_d

    .line 1243
    :cond_1e
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e

    .line 1252
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v28    # "c3":C
    .end local v33    # "ignore":Z
    :cond_1f
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    const/4 v6, 0x2

    .line 1256
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    move/from16 v27, v0

    .line 1259
    .local v27, "c2":C
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-nez v6, :cond_21

    const/16 v6, 0x5f

    .line 1266
    move/from16 v0, v27

    if-eq v0, v6, :cond_23

    const/16 v6, 0x66

    .line 1268
    move/from16 v0, v27

    if-ne v0, v6, :cond_4

    const/4 v6, 0x2

    .line 1269
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1274
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_10
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1276
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_24

    :goto_11
    const/4 v12, 0x0

    .line 1281
    .local v12, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v5, :cond_25

    .line 1310
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_20
    :goto_12
    if-nez p2, :cond_28

    .line 1317
    :goto_13
    if-nez p5, :cond_29

    .line 1321
    :goto_14
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1323
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v32

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 1260
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_21
    sget-boolean v6, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-nez v6, :cond_22

    .line 1263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_15
    const/4 v6, 0x2

    .line 1265
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_22
    const/4 v6, 0x2

    .line 1261
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_15

    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_23
    const/4 v6, 0x3

    .line 1267
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto :goto_10

    .line 1277
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :cond_24
    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_11

    .restart local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_25
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1282
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1284
    .local v12, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_20

    .line 1285
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1289
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1290
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1291
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1293
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_27

    .line 1304
    :cond_26
    :goto_16
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_20

    .line 1305
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_12

    .line 1294
    :cond_27
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1296
    if-eqz p2, :cond_26

    .line 1297
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1298
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_4

    goto :goto_16

    .line 1311
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_28
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1312
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_4

    goto/16 :goto_13

    .line 1318
    :cond_29
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    .line 1327
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v11    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "label":Ljava/lang/String;
    .end local v27    # "c2":C
    .end local v37    # "methodName":Ljava/lang/String;
    :cond_2a
    aget-object v5, v7, v6

    .line 1328
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-nez v14, :cond_2c

    const-class v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1332
    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .restart local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v8, 0x0

    .restart local v8    # "ordinal":I
    const/4 v9, 0x0

    .restart local v9    # "serialzeFeatures":I
    const/4 v10, 0x0

    .line 1335
    .restart local v10    # "parserFeatures":I
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1337
    .local v13, "label":Ljava/lang/String;
    if-nez v12, :cond_2d

    .line 1355
    .end local v13    # "label":Ljava/lang/String;
    :cond_2b
    :goto_17
    if-nez p2, :cond_2f

    .line 1362
    :goto_18
    if-nez p5, :cond_30

    .line 1366
    :goto_19
    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 1327
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_2c
    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1338
    .restart local v3    # "propertyName":Ljava/lang/String;
    .restart local v8    # "ordinal":I
    .restart local v9    # "serialzeFeatures":I
    .restart local v10    # "parserFeatures":I
    .restart local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v13    # "label":Ljava/lang/String;
    :cond_2d
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 1342
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1343
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1344
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1346
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2e

    .line 1350
    :goto_1b
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2b

    .line 1351
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    .local v13, "label":Ljava/lang/String;
    goto :goto_17

    .line 1347
    .local v13, "label":Ljava/lang/String;
    :cond_2e
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    .line 1356
    .end local v13    # "label":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1357
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_2c

    goto :goto_18

    .line 1363
    :cond_30
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    .line 1367
    :cond_31
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, p0

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1369
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v32

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 1380
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v12    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v30    # "containsAll":Z
    .restart local v31    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v38    # "orders":[Ljava/lang/String;
    :cond_32
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v38

    .line 1382
    .local v38, "orders":[Ljava/lang/String;
    if-nez v38, :cond_34

    .line 1391
    :cond_33
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1382
    :cond_34
    move-object/from16 v0, v38

    array-length v6, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->size()I

    move-result v7

    if-ne v6, v7, :cond_33

    .line 1383
    const/16 v30, 0x1

    .line 1384
    move-object/from16 v0, v38

    array-length v7, v0

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v7, :cond_0

    aget-object v34, v38, v6

    .line 1385
    .local v34, "item":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 1384
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1386
    :cond_35
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1396
    .end local v34    # "item":Ljava/lang/String;
    .end local v38    # "orders":[Ljava/lang/String;
    :cond_36
    move-object/from16 v0, v38

    array-length v7, v0

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v7, :cond_1

    aget-object v34, v38, v6

    .line 1397
    .restart local v34    # "item":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1398
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 1401
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v34    # "item":Ljava/lang/String;
    :cond_37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1402
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1406
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_38
    invoke-static/range {v31 .. v31}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_4
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v5, 0x0

    .line 1642
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/AbstractCollection;

    .line 1645
    if-ne v3, v4, :cond_1

    .line 1647
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v2, "list":Ljava/util/Collection;
    :goto_0
    return-object v2

    .end local v2    # "list":Ljava/util/Collection;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const-class v4, Ljava/util/Collection;

    .line 1645
    if-eq v3, v4, :cond_0

    const-class v4, Ljava/util/HashSet;

    .line 1648
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/LinkedHashSet;

    .line 1650
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Ljava/util/TreeSet;

    .line 1652
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    const-class v4, Ljava/util/ArrayList;

    .line 1654
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Ljava/util/EnumSet;

    .line 1656
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1666
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1649
    .end local v2    # "list":Ljava/util/Collection;
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1651
    .end local v2    # "list":Ljava/util/Collection;
    :cond_3
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1653
    .end local v2    # "list":Ljava/util/Collection;
    :cond_4
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1655
    .end local v2    # "list":Ljava/util/Collection;
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1658
    .end local v2    # "list":Ljava/util/Collection;
    :cond_6
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_7

    const-class v1, Ljava/lang/Object;

    .line 1663
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v1, "itemType":Ljava/lang/reflect/Type;
    :goto_1
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1659
    .end local v2    # "list":Ljava/util/Collection;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_7
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v5

    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 1669
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create instane error, class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1594
    if-nez p0, :cond_1

    .line 1595
    :cond_0
    return-object p0

    .line 1594
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 1600
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1601
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 1602
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1597
    .end local v0    # "chars":[C
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1598
    return-object p0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1542
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 1546
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    .line 1550
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Object;

    .line 1555
    return-object v1

    .line 1543
    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    return-object p0

    .line 1547
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1551
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    .line 1552
    .local v0, "boundType":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "boundType":Ljava/lang/reflect/Type;
    return-object v0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1622
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/Object;

    .line 1637
    return-object v2

    .line 1624
    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v0, v2, v3

    .line 1626
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 1632
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, v0

    .line 1627
    check-cast v1, Ljava/lang/Class;

    .line 1628
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1634
    return-object v1

    .line 1629
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1559
    array-length v3, p2

    :goto_0
    if-lt v2, v3, :cond_1

    .line 1565
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1566
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3

    .line 1570
    :cond_0
    return-object v5

    .line 1559
    .end local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    aget-object v0, p2, v2

    .line 1560
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1559
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1561
    :cond_2
    return-object v0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-class v2, Ljava/lang/Object;

    .line 1566
    if-eq v1, v2, :cond_0

    .line 1567
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1510
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 1514
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1518
    return-object p0

    .line 1511
    :cond_0
    return-object p0

    .line 1515
    :cond_1
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1584
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1586
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_0

    .line 1590
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 1587
    return v1
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "fromIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-nez v1, :cond_1

    .line 1421
    :cond_0
    return-object p2

    .line 1416
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, "tempPropertyName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .end local p2    # "propertyName":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "propertyName":Ljava/lang/String;
    :cond_2
    move-object p2, v0

    goto :goto_0
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1675
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 1677
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    .line 1680
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1676
    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    return-object p0

    .line 1678
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1574
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1576
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_0

    .line 1580
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 1577
    return v1
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1425
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 1426
    .local v5, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v5

    if-gtz v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 1456
    return-object v8

    .line 1427
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1428
    .local v7, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v2, v5, v9

    .line 1429
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v12, v11

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v12, :cond_2

    .line 1428
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 1429
    :cond_2
    aget-object v3, v11, v8

    .line 1430
    .local v3, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1431
    .local v4, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v4

    array-length v14, v7

    if-ne v13, v14, :cond_3

    .line 1434
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1437
    const/4 v6, 0x1

    .local v6, "match":Z
    const/4 v1, 0x0

    .line 1438
    .local v1, "i":I
    :goto_2
    array-length v13, v7

    if-lt v1, v13, :cond_4

    .line 1445
    :goto_3
    if-eqz v6, :cond_3

    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1449
    invoke-virtual {v3, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1450
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v0, :cond_6

    .line 1429
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v1    # "i":I
    .end local v6    # "match":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1439
    .restart local v1    # "i":I
    .restart local v6    # "match":Z
    :cond_4
    aget-object v13, v4, v1

    aget-object v14, v7, v1

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1438
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1440
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1451
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_6
    return-object v0
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x0

    .line 1494
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 1498
    instance-of v1, p0, Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 1506
    return v2

    .line 1495
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1499
    :cond_1
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "superType":Ljava/lang/reflect/Type;
    const-class v1, Ljava/lang/Object;

    .line 1500
    if-eq v0, v1, :cond_2

    .line 1503
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 1501
    :cond_2
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1460
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1462
    .local v2, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v2, :cond_2

    .line 1484
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_7

    .line 1490
    :cond_1
    return v5

    .line 1466
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "fields":[Ljava/lang/String;
    array-length v3, v0

    if-gtz v3, :cond_3

    .line 1475
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1476
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1477
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .line 1468
    .restart local v1    # "i":I
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_4

    .line 1473
    return v6

    .line 1469
    :cond_4
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1470
    :cond_5
    return v5

    .line 1478
    :cond_6
    return v6

    .line 1484
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1485
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1486
    return v6
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 966
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 978
    return v2

    .line 966
    :cond_1
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "java.nio.file.Path"

    .line 968
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .line 970
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    goto :goto_0

    .line 975
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 960
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 982
    if-nez p0, :cond_1

    .line 983
    :cond_0
    return-object v6

    .line 982
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 986
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 988
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_3

    .line 992
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_4

    const-string/jumbo v5, "L"

    .line 997
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1003
    :cond_2
    if-nez p1, :cond_6

    .line 1015
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1017
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_7

    .line 1028
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :goto_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1029
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1031
    return-object v0

    .line 989
    :cond_3
    return-object v0

    .line 993
    :cond_4
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 994
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    return-object v5

    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-string/jumbo v5, ";"

    .line 997
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 998
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "newClassName":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    return-object v5

    .line 1004
    .end local v4    # "newClassName":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1005
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1007
    return-object v0

    .line 1012
    :catch_0
    move-exception v3

    .line 1010
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1018
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    :try_start_3
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1019
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1021
    return-object v0

    .line 1031
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v5

    .line 1036
    return-object v0

    .line 1025
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    const/4 v2, 0x0

    .line 1606
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-eqz v1, :cond_0

    .line 1610
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1615
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    :goto_0
    return-void

    .line 1607
    :cond_0
    return-void

    .line 1611
    :cond_1
    return-void

    .line 1618
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "error":Ljava/security/AccessControlException;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    goto :goto_0
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1522
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-eqz v1, :cond_1

    .line 1532
    :goto_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    .line 1538
    :cond_0
    return-object p0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "java.util.Optional"

    .line 1524
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    :goto_1
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    goto :goto_0

    .line 1529
    :catchall_0
    move-exception v1

    .line 1528
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw v1

    :cond_2
    move-object v0, p0

    .line 1533
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1534
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1535
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    return-object v1

    .line 1529
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
