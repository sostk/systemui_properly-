.class public Lcom/meizu/flyme/activeview/utils/ReflectHelper;
.super Ljava/lang/Object;
.source "ReflectHelper.java"


# static fields
.field private static mClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    .line 25
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "desObj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 318
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter can not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 322
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 325
    .local v1, "ignore":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "desObj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p0, :cond_1

    .line 340
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "parameter can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_1
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 343
    .local v0, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0, p1}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getFieldStepwise(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static getFieldStepwise(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "desObj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    .line 348
    :goto_0
    if-nez v0, :cond_0

    .line 359
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_0
    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v2

    .line 354
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .local v0, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 357
    .end local v0    # "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 356
    .local v0, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method private static getParamsTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    .local v1, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 200
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 203
    return-object v1

    .line 201
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static varargs getParamsTypesString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 209
    .local v2, "first":Z
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-lt v3, v4, :cond_0

    const-string/jumbo v6, ")"

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 209
    :cond_0
    aget-object v1, v0, v3

    .line 210
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1

    const-string/jumbo v6, ","

    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_1
    if-nez v1, :cond_2

    const-string/jumbo v6, "null"

    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 371
    if-nez p0, :cond_1

    .line 372
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter can not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_1
    if-eqz p1, :cond_0

    .line 374
    sget-object v2, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 375
    .local v1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 383
    :goto_0
    invoke-static {v1, v1, p1}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getFieldStepwise(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 377
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 378
    sget-object v2, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "className not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p4, :cond_1

    .line 150
    :cond_0
    sget-object v5, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    monitor-enter v5

    .line 151
    :try_start_0
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 152
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    :goto_0
    const/4 v4, 0x0

    .line 157
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 148
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    array-length v4, p4

    if-eqz v4, :cond_0

    .line 160
    sget-object v5, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    monitor-enter v5

    .line 161
    move-object v0, p3

    .line 162
    .local v0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getParamsTypesString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#bestmatch"

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "fullName":Ljava/lang/String;
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 169
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_3

    .line 174
    :goto_1
    invoke-virtual {v2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    .end local v0    # "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "fullName":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v4, 0x0

    .line 153
    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 154
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v4

    .line 158
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 170
    .restart local v0    # "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "fullName":Ljava/lang/String;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 171
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 172
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    .end local v1    # "fullName":Ljava/lang/String;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v4

    .line 175
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method private static invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_1

    .line 85
    :cond_0
    sget-object v5, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    monitor-enter v5

    .line 86
    :try_start_0
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 87
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    :goto_0
    const/4 v4, 0x0

    .line 92
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 83
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    array-length v4, p3

    if-eqz v4, :cond_0

    .line 95
    sget-object v5, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    monitor-enter v5

    .line 96
    :try_start_1
    invoke-static {p3}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getParamsTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getParamsTypesString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "#bestmatch"

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "fullName":Ljava/lang/String;
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 104
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_3

    .line 109
    :goto_1
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    .end local v0    # "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "fullName":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v4, 0x0

    .line 88
    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v4

    .line 93
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 105
    .restart local v0    # "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "fullName":Ljava/lang/String;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 106
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mMethodMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 109
    .end local v0    # "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "fullName":Ljava/lang/String;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v4

    .line 110
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v1, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 191
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 195
    :goto_0
    invoke-static {v0, v0, p1, p2, p3}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 192
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v1, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 125
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 129
    :goto_0
    invoke-static {v0, v0, p1, p2}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 126
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static reflectConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 58
    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 63
    .local v0, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "obj":Ljava/lang/Object;
    return-object v1

    .line 58
    .end local v0    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    array-length v2, p2

    if-lez v2, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 60
    .restart local v0    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static reflectConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 41
    :cond_0
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 42
    .local v0, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "obj":Ljava/lang/Object;
    return-object v1

    .line 37
    .end local v0    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    array-length v2, p1

    if-lez v2, :cond_0

    .line 38
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getParamsTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 39
    .restart local v0    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "desObj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 234
    if-nez p0, :cond_1

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "parameter can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 240
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    return v2

    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 246
    const/4 v1, 0x0

    return v1
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "desObj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 259
    if-nez p0, :cond_1

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "parameter can not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 263
    .local v0, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0, p1, p2}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->setFieldStepwise(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static setFieldStepwise(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "desObj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rootClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 267
    move-object v0, p1

    .line 268
    :goto_0
    if-nez v0, :cond_0

    .line 279
    return v3

    .line 269
    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 270
    .end local v0    # "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 276
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 275
    .local v0, "desClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 291
    if-nez p0, :cond_1

    .line 292
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter can not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_1
    if-eqz p1, :cond_0

    .line 294
    sget-object v2, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 295
    .local v1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 303
    :goto_0
    invoke-static {v1, v1, p1, p2}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->setFieldStepwise(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 297
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 298
    sget-object v2, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->mClassMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "className not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
