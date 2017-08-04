.class public Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "ActiveClassLoader.java"


# static fields
.field private static final USE_HOST_CLASS_LIST:[Ljava/lang/String;

.field private static sJarClassLoaderCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x9

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.meizu.flyme.activeview.views.IActiveView"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnEventListener"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnLoadDataListener"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnLoadImageListener"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnParallaxListener"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnUpdateListener"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnVersionListener"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.meizu.flyme.activeview.utils.ImageCache"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "com.meizu.flyme.activeview.listener.OnActiveViewUpgradeListener"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->USE_HOST_CLASS_LIST:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3, p4}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 34
    return-void
.end method

.method public static createNewActiveLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jarFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 60
    sget-object v4, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    monitor-enter v4

    .line 61
    :try_start_0
    sget-object v3, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-string/jumbo v3, "dex"

    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "dexOutPutFile":Ljava/io/File;
    new-instance v0, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, p1, v3, v6, v5}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 70
    .local v0, "dexClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    sget-object v3, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    monitor-exit v4

    return-object v0

    .line 62
    .end local v0    # "dexClassLoader":Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;
    .end local v1    # "dexOutPutFile":Ljava/io/File;
    :cond_0
    sget-object v3, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;

    monitor-exit v4

    return-object v3

    .line 71
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v4

    return-object v7

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 75
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static deleteNewActiveLoader(Ljava/lang/String;)V
    .locals 2
    .param p0, "jarFilePath"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v1, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    monitor-exit v1

    .line 84
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->sJarClassLoaderCaches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 41
    .local v5, "useHost":Z
    sget-object v0, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->USE_HOST_CLASS_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 44
    if-eqz v5, :cond_2

    .line 52
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v2, :cond_3

    .line 55
    :goto_2
    return-object v2

    .line 41
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    aget-object v1, v0, v3

    .line 42
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v5, 0x1

    goto :goto_3

    .line 46
    .end local v1    # "c":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/utils/ActiveClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 49
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    goto :goto_1

    .line 53
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-super {p0, p1, p2}, Ldalvik/system/BaseDexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v2

    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2
.end method
