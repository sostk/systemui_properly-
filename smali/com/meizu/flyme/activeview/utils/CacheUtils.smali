.class public Lcom/meizu/flyme/activeview/utils/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# static fields
.field private static SP_NAME:Ljava/lang/String;

.field private static volatile mCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/CacheUtils;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "activecache"

    .line 14
    sput-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->SP_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;->SP_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method

.method private clearCacheFolder(Ljava/io/File;J)I
    .locals 12
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "curTime"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 77
    .local v2, "deletedNum":I
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 80
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    .line 79
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    add-long/2addr v8, v10

    cmp-long v6, v8, p2

    if-lez v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_2

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v6, v7

    .line 80
    goto :goto_3

    .line 87
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/CacheUtils;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/CacheUtils;

    if-eqz v0, :cond_0

    .line 29
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/CacheUtils;

    return-object v0

    :cond_0
    const-class v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/CacheUtils;

    if-eqz v0, :cond_1

    .line 27
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 25
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/utils/CacheUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/CacheUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearCacheFolder(Ljava/lang/String;)I
    .locals 4
    .param p1, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 68
    if-nez p1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 69
    return v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "dirFile":Ljava/io/File;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->clearCacheFolder(Ljava/io/File;J)I

    move-result v1

    return v1
.end method

.method public getSharePreferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 58
    sget-object v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeSharedPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public saveToSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/meizu/flyme/activeview/utils/CacheUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
