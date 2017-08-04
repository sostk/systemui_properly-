.class public Lcom/meizu/flyme/activeview/utils/FileCacheHelper;
.super Ljava/lang/Object;
.source "FileCacheHelper.java"


# static fields
.field private static final FILE_HEAD:Ljava/lang/String; = "update_cache_"

.field private static final FILE_TAIL_JAR:Ljava/lang/String; = ".jar"

.field private static final FILE_TAIL_TEMP:Ljava/lang/String; = ".temp"

.field private static final TAG:Ljava/lang/String; = "FileCacheManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->clearCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludeVersion"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cachePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "excludeTemp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 34
    .local v2, "excludeApk":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 39
    .end local v2    # "excludeApk":Ljava/lang/String;
    .end local v3    # "excludeTemp":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 35
    .end local v5    # "file":Ljava/io/File;
    .restart local v2    # "excludeApk":Ljava/lang/String;
    .restart local v3    # "excludeTemp":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "excludeTemp":Ljava/lang/String;
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getApkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "excludeApk":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v2    # "excludeApk":Ljava/lang/String;
    .end local v3    # "excludeTemp":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 45
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-lez v9, :cond_0

    .line 46
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v4, v0, v7

    .line 47
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_4

    .line 46
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 42
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 47
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "files":[Ljava/io/File;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :cond_4
    if-nez v3, :cond_7

    :cond_5
    if-nez v2, :cond_8

    .line 50
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "delete cache file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 47
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3
.end method

.method public static clearCurrentCacheApp(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "cachePath":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/meizu/flyme/activeview/utils/Utility;->getAppVersionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "currentVersion":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getApkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "targetFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete cur cache : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->log(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static final getApkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getApkFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getApkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "tempFileName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCacheFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "tempFileName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/InstallCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "FileCacheManager"

    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public static final renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .end local v0    # "destFile":Ljava/io/File;
    .end local v2    # "srcFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v3, 0x0

    return v3
.end method
