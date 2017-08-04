.class public Lcom/meizu/experiencedatasync/util/ReflectHelper;
.super Ljava/lang/Object;
.source "ReflectHelper.java"


# static fields
.field private static sReflectClassCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sReflectMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 132
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    return-object v7

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "className":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 138
    .local v6, "result":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 139
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    array-length v8, p2

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, p2, v7

    .line 140
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_0
    sget-object v7, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    if-nez v6, :cond_4

    .line 145
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 146
    if-eqz v6, :cond_3

    instance-of v7, v6, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    .line 147
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v5, v0

    .line 148
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 149
    sget-object v7, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "result":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-object v5

    .line 151
    .local v5, "method":Ljava/lang/reflect/Method;
    .restart local v6    # "result":Ljava/lang/Object;
    :cond_4
    instance-of v7, v6, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    .line 152
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 154
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
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
    .line 68
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    .line 69
    .local v1, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 70
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method private static invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "className":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "key":Ljava/lang/String;
    if-eqz p3, :cond_0

    array-length v7, p3

    if-nez v7, :cond_2

    .line 20
    :cond_0
    sget-object v7, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 21
    .local v5, "temp":Ljava/lang/Object;
    if-eqz v5, :cond_1

    instance-of v7, v5, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_1

    .line 22
    check-cast v5, Ljava/lang/reflect/Method;

    .end local v5    # "temp":Ljava/lang/Object;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 24
    .restart local v5    # "temp":Ljava/lang/Object;
    :cond_1
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 25
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 26
    sget-object v7, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 29
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "temp":Ljava/lang/Object;
    :cond_2
    invoke-static {p3}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->getParamsTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v4

    .line 30
    .local v4, "paramsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v4, :cond_3

    .line 31
    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v4, v6

    .line 32
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    sget-object v6, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 36
    .restart local v5    # "temp":Ljava/lang/Object;
    if-eqz v5, :cond_4

    instance-of v6, v5, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    .line 37
    check-cast v5, Ljava/lang/reflect/Method;

    .end local v5    # "temp":Ljava/lang/Object;
    invoke-virtual {v5, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 39
    .restart local v5    # "temp":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 40
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 41
    sget-object v6, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectMethodCache:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6
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
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 62
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {v0, v0, p1, p2}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 59
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/meizu/experiencedatasync/util/ReflectHelper;->sReflectClassCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
