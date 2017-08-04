.class public Lcom/meizu/keyguard/auto_color/LogFileUtils;
.super Ljava/lang/Object;
.source "LogFileUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/meizu/keyguard/auto_color/LogFileUtils;


# instance fields
.field df:Ljava/text/DateFormat;

.field private mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "FileOperate"

    sput-object v0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "systemui_findphone.log"

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->mFileName:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy/MM/dd HH:mm:ss : "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->df:Ljava/text/DateFormat;

    .line 17
    return-void
.end method

.method private deleteFileIfTooBig()V
    .locals 8

    .prologue
    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getDataFile()Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    sget-object v3, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteFileIfTooBig : !fileDir.exists()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-double v4, v3

    .line 52
    .local v4, "length":D
    const-wide/high16 v6, 0x4164000000000000L    # 1.048576E7

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 53
    sget-object v3, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "file size > 10M"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 56
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "length":D
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDataFile()Ljava/io/File;
    .locals 8

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 63
    const-string/jumbo v6, "mounted"

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 64
    .local v3, "sdCardExist":Z
    if-nez v3, :cond_0

    .line 65
    const/4 v5, 0x0

    return-object v5

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 68
    .local v4, "sdDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/Android/data/keyguard_findphone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "fileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    sget-object v5, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "fileDir.mkdirs()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .local v0, "file":Ljava/io/File;
    sget-object v5, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0
.end method

.method public static getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->sInstance:Lcom/meizu/keyguard/auto_color/LogFileUtils;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/meizu/keyguard/auto_color/LogFileUtils;

    invoke-direct {v0}, Lcom/meizu/keyguard/auto_color/LogFileUtils;-><init>()V

    sput-object v0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->sInstance:Lcom/meizu/keyguard/auto_color/LogFileUtils;

    .line 22
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->sInstance:Lcom/meizu/keyguard/auto_color/LogFileUtils;

    return-object v0
.end method


# virtual methods
.method public writeLog(Ljava/lang/String;)V
    .locals 7
    .param p1, "writestr"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/keyguard/auto_color/LogFileUtils;->df:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getDataFile()Ljava/io/File;

    move-result-object v2

    .line 28
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    sget-object v4, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLog: createNewFile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 32
    :cond_0
    sget-object v4, Lcom/meizu/keyguard/auto_color/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLog: write"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 34
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 35
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 37
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->deleteFileIfTooBig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
