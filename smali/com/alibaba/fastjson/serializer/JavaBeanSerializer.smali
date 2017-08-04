.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .locals 5
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 67
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v0, 0x0

    .line 68
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 72
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eq v1, v2, :cond_1

    .line 75
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v0, 0x0

    .line 76
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 80
    :goto_2
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    new-instance v2, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_2

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 44
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 61
    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    .line 62
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 57
    return-object v1

    .line 53
    :cond_0
    aget-object v0, p0, v2

    .line 54
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 483
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    if-nez v1, :cond_2

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-nez v1, :cond_4

    .line 499
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 484
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 485
    .local v0, "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 486
    return v3

    .line 492
    .end local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 493
    .restart local v0    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 494
    return v3
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .locals 1
    .param p1, "orinal"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object v0
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 383
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    .line 388
    .local v3, "low":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .line 390
    .local v2, "high":I
    :goto_0
    if-le v3, v2, :cond_1

    .line 406
    return-object v6

    .line 384
    .end local v2    # "high":I
    .end local v3    # "low":I
    :cond_0
    return-object v6

    .line 391
    .restart local v2    # "high":I
    .restart local v3    # "low":I
    :cond_1
    add-int v5, v3, v2

    ushr-int/lit8 v4, v5, 0x1

    .line 393
    .local v4, "mid":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 395
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, "cmp":I
    if-ltz v0, :cond_2

    .line 399
    if-gtz v0, :cond_3

    .line 402
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v5, v5, v4

    return-object v5

    .line 398
    :cond_2
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 400
    :cond_3
    add-int/lit8 v2, v4, -0x1

    goto :goto_0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    .line 369
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v2, :cond_0

    .line 374
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 370
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "field not found. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :catch_0
    move-exception v1

    .line 376
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFieldValue error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 378
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFieldValue error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 415
    return-object v0

    .line 411
    :cond_0
    aget-object v1, v3, v2

    .line 412
    .local v1, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 432
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 436
    return-object v1

    .line 432
    :cond_0
    aget-object v0, v3, v2

    .line 433
    .local v0, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 420
    .local v1, "size":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 426
    return v1

    .line 420
    :cond_0
    aget-object v0, v4, v3

    .line 421
    .local v0, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 422
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 420
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v0

    return v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "fieldFeatrues"    # I

    .prologue
    const/4 v1, 0x0

    .line 361
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 362
    .local v0, "mask":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v2, :cond_0

    and-int v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 37
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v31, v0

    .line 113
    .local v31, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_4

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-nez v4, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v24, v0

    .line 130
    .local v24, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 131
    .local v5, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v8, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v36

    .line 136
    .local v36, "writeAsArray":Z
    if-nez v36, :cond_7

    const/16 v4, 0x7b

    :goto_1
    int-to-char v0, v4

    move/from16 v35, v0

    .line 137
    .local v35, "startSeperator":C
    if-nez v36, :cond_8

    const/16 v4, 0x7d

    :goto_2
    int-to-char v15, v4

    .line 138
    .local v15, "endSeperator":C
    :try_start_0
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 140
    move-object/from16 v0, v24

    array-length v4, v0

    if-gtz v4, :cond_9

    .line 145
    :cond_0
    :goto_3
    const/4 v12, 0x0

    .line 147
    .local v12, "commaFlag":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_a

    .line 149
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 150
    .local v29, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v29

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_b

    .line 156
    .end local v29    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-nez v12, :cond_c

    const/4 v4, 0x0

    :goto_5
    int-to-char v0, v4

    move/from16 v33, v0

    .line 158
    .local v33, "seperator":C
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v4, :cond_d

    :cond_2
    const/4 v13, 0x0

    .line 159
    .local v13, "directWritePrefix":Z
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v4

    int-to-char v0, v4

    move/from16 v28, v0

    .local v28, "newSeperator":C
    const/16 v4, 0x2c

    .line 160
    move/from16 v0, v28

    if-eq v0, v4, :cond_e

    const/4 v12, 0x0

    .line 162
    .local v12, "commaFlag":Z
    :goto_7
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v34

    .line 163
    .local v34, "skipTransient":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    .local v26, "ignoreNonFieldGetter":Z
    const/16 v25, 0x0

    .line 165
    .end local v12    # "commaFlag":Z
    .local v25, "i":I
    :goto_8
    move-object/from16 v0, v24

    array-length v4, v0

    move/from16 v0, v25

    if-lt v0, v4, :cond_f

    .line 306
    if-nez v12, :cond_36

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    .line 308
    move-object/from16 v0, v24

    array-length v4, v0

    if-gtz v4, :cond_37

    .line 313
    :cond_3
    :goto_a
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 330
    return-void

    .line 114
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v13    # "directWritePrefix":Z
    .end local v15    # "endSeperator":C
    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v25    # "i":I
    .end local v26    # "ignoreNonFieldGetter":Z
    .end local v28    # "newSeperator":C
    .end local v33    # "seperator":C
    .end local v34    # "skipTransient":Z
    .end local v35    # "startSeperator":C
    .end local v36    # "writeAsArray":Z
    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 115
    return-void

    .line 119
    :cond_5
    return-void

    .line 125
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v24, v0

    .restart local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_0

    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v36    # "writeAsArray":Z
    :cond_7
    const/16 v4, 0x5b

    .line 136
    goto/16 :goto_1

    .restart local v35    # "startSeperator":C
    :cond_8
    const/16 v4, 0x5d

    .line 137
    goto/16 :goto_2

    .line 140
    .restart local v15    # "endSeperator":C
    :cond_9
    :try_start_1
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 329
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v16, "write javaBean error"

    .line 316
    .local v16, "errorMessage":Ljava/lang/String;
    if-nez p2, :cond_38

    .line 319
    :goto_b
    if-nez p3, :cond_39

    .line 322
    :goto_c
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 326
    :goto_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 328
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 148
    .local v12, "commaFlag":Z
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 151
    .restart local v29    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 152
    const/4 v12, 0x1

    goto/16 :goto_4

    .end local v29    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    const/16 v4, 0x2c

    .line 156
    goto/16 :goto_5

    .line 158
    .restart local v33    # "seperator":C
    :cond_d
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v4, :cond_2

    const/4 v13, 0x1

    goto/16 :goto_6

    .restart local v13    # "directWritePrefix":Z
    .restart local v28    # "newSeperator":C
    :cond_e
    const/4 v12, 0x1

    .line 160
    goto/16 :goto_7

    .line 166
    .end local v12    # "commaFlag":Z
    .restart local v25    # "i":I
    .restart local v26    # "ignoreNonFieldGetter":Z
    .restart local v34    # "skipTransient":Z
    :cond_f
    aget-object v23, v24, v25

    .line 168
    .local v23, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v18, v0

    .line 169
    .local v18, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v0

    .line 170
    .local v22, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 171
    .local v10, "fieldInfoName":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 173
    .local v21, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v34, :cond_12

    .line 181
    :cond_10
    :goto_e
    if-nez v26, :cond_13

    .line 187
    :goto_f
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 165
    :cond_11
    :goto_10
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8

    .line 174
    :cond_12
    if-eqz v18, :cond_10

    .line 175
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-nez v4, :cond_11

    goto :goto_e

    .line 182
    :cond_13
    if-eqz v18, :cond_11

    goto :goto_f

    .line 187
    :cond_14
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_11

    .line 196
    :try_start_4
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 205
    :goto_11
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 209
    move-object/from16 v27, v10

    .line 210
    .local v27, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 212
    move-object/from16 v30, v11

    .line 213
    .local v30, "originalValue":Ljava/lang/Object;
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 216
    .local v11, "propertyValue":Ljava/lang/Object;
    if-eqz v11, :cond_19

    .line 222
    :cond_15
    :goto_12
    if-nez v11, :cond_1a

    .line 248
    :cond_16
    :goto_13
    if-nez v12, :cond_27

    .line 255
    :cond_17
    :goto_14
    move-object/from16 v0, v27

    if-ne v0, v10, :cond_28

    .line 261
    move-object/from16 v0, v30

    if-ne v0, v11, :cond_2a

    .line 267
    if-eqz v36, :cond_2c

    .line 275
    :goto_15
    if-eqz v36, :cond_2e

    .line 299
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 303
    :goto_16
    const/4 v12, 0x1

    .restart local v12    # "commaFlag":Z
    goto :goto_10

    .line 203
    .end local v11    # "propertyValue":Ljava/lang/Object;
    .end local v12    # "commaFlag":Z
    .end local v27    # "key":Ljava/lang/String;
    .end local v30    # "originalValue":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 198
    .local v17, "ex":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 201
    throw v17

    :cond_18
    const/4 v11, 0x0

    .line 199
    .restart local v11    # "propertyValue":Ljava/lang/Object;
    goto :goto_11

    .line 216
    .end local v17    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v27    # "key":Ljava/lang/String;
    .restart local v30    # "originalValue":Ljava/lang/Object;
    :cond_19
    if-nez v36, :cond_15

    .line 217
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v4, :cond_15

    sget v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_12

    .line 222
    :cond_1a
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-eqz v4, :cond_16

    .line 223
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 224
    .local v20, "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_21

    .line 227
    :cond_1b
    :goto_17
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_22

    .line 230
    :cond_1c
    :goto_18
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_23

    .line 233
    :cond_1d
    :goto_19
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_24

    .line 236
    :cond_1e
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_25

    .line 239
    :cond_1f
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_26

    .line 242
    :cond_20
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_16

    instance-of v4, v11, Ljava/lang/Boolean;

    if-eqz v4, :cond_16

    move-object v0, v11

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 243
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_13

    .line 224
    :cond_21
    instance-of v4, v11, Ljava/lang/Byte;

    if-eqz v4, :cond_1b

    move-object v0, v11

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 225
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_17

    .line 227
    :cond_22
    instance-of v4, v11, Ljava/lang/Short;

    if-eqz v4, :cond_1c

    move-object v0, v11

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    .line 228
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_18

    .line 230
    :cond_23
    instance-of v4, v11, Ljava/lang/Integer;

    if-eqz v4, :cond_1d

    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    .line 231
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_19

    .line 233
    :cond_24
    instance-of v4, v11, Ljava/lang/Long;

    if-eqz v4, :cond_1e

    move-object v0, v11

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    .line 234
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1e

    goto/16 :goto_10

    .line 236
    :cond_25
    instance-of v4, v11, Ljava/lang/Float;

    if-eqz v4, :cond_1f

    move-object v0, v11

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    .line 237
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1f

    goto/16 :goto_10

    .line 239
    :cond_26
    instance-of v4, v11, Ljava/lang/Double;

    if-eqz v4, :cond_20

    move-object v0, v11

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    .line 240
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-nez v4, :cond_20

    goto/16 :goto_10

    .end local v20    # "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_27
    const/16 v4, 0x2c

    .line 249
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 250
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto/16 :goto_14

    .line 256
    :cond_28
    if-eqz v36, :cond_29

    .line 260
    :goto_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 257
    :cond_29
    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_1a

    .line 262
    :cond_2a
    if-eqz v36, :cond_2b

    .line 265
    :goto_1b
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 263
    :cond_2b
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_1b

    .line 268
    :cond_2c
    if-nez v13, :cond_2d

    .line 271
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto/16 :goto_15

    .line 269
    :cond_2d
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    const/4 v6, 0x0

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v7, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_15

    .line 276
    :cond_2e
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v19

    .local v19, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const-class v4, Ljava/lang/String;

    .line 277
    move-object/from16 v0, v21

    if-eq v0, v4, :cond_2f

    .line 296
    :goto_1c
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 277
    :cond_2f
    if-nez v19, :cond_31

    .line 278
    :cond_30
    if-eqz v11, :cond_32

    .line 287
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object/from16 v32, v0

    .line 289
    .local v32, "propertyValueString":Ljava/lang/String;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v4, :cond_35

    .line 292
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto/16 :goto_16

    .line 277
    .end local v32    # "propertyValueString":Ljava/lang/String;
    :cond_31
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/lang/Void;

    if-eq v4, v6, :cond_30

    goto :goto_1c

    .line 279
    :cond_32
    move-object/from16 v0, v31

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_34

    :cond_33
    const-string/jumbo v4, ""

    .line 282
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 279
    :cond_34
    move-object/from16 v0, v23

    iget v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v6

    if-nez v4, :cond_33

    .line 284
    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_16

    .line 290
    .restart local v32    # "propertyValueString":Ljava/lang/String;
    :cond_35
    invoke-virtual/range {v31 .. v32}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_16

    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v11    # "propertyValue":Ljava/lang/Object;
    .end local v18    # "field":Ljava/lang/reflect/Field;
    .end local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v23    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v27    # "key":Ljava/lang/String;
    .end local v30    # "originalValue":Ljava/lang/Object;
    .end local v32    # "propertyValueString":Ljava/lang/String;
    :cond_36
    const/16 v4, 0x2c

    .line 306
    goto/16 :goto_9

    .line 308
    :cond_37
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    .line 317
    .end local v13    # "directWritePrefix":Z
    .end local v25    # "i":I
    .end local v26    # "ignoreNonFieldGetter":Z
    .end local v28    # "newSeperator":C
    .end local v33    # "seperator":C
    .end local v34    # "skipTransient":Z
    .restart local v14    # "e":Ljava/lang/Exception;
    .restart local v16    # "errorMessage":Ljava/lang/String;
    :cond_38
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_b

    .line 320
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", fieldName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_c

    .line 323
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v16

    goto/16 :goto_d
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 3
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .prologue
    .line 467
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-nez v1, :cond_2

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-nez v1, :cond_3

    .line 479
    :cond_1
    return p3

    .line 468
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 469
    .local v0, "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v2

    int-to-char p3, v2

    goto :goto_0

    .line 474
    .end local v0    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 475
    .restart local v0    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v2

    int-to-char p3, v2

    goto :goto_1
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 96
    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 104
    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 3
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .prologue
    .line 450
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-nez v1, :cond_2

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-nez v1, :cond_3

    .line 462
    :cond_1
    return p3

    .line 451
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 452
    .local v0, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v2

    int-to-char p3, v2

    goto :goto_0

    .line 457
    .end local v0    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 458
    .restart local v0    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v2

    int-to-char p3, v2

    goto :goto_1
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 333
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 334
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    .line 335
    .local v0, "typeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 338
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 339
    return-void

    .line 336
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 88
    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldFeatures"    # I

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 343
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 344
    .local v1, "mask":I
    if-nez v0, :cond_1

    .line 345
    :cond_0
    return v3

    .line 344
    :cond_1
    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    and-int v2, p3, v1

    if-nez v2, :cond_0

    .line 348
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_3

    .line 352
    :cond_2
    return v3

    .line 348
    :cond_3
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 350
    const/4 v2, 0x1

    return v2
.end method
