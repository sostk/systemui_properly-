.class public Lcom/meizu/flyme/activeview/task/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_RESULT_CODE_CANCEL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DownloadTask"


# instance fields
.field private mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

.field private mFile:Ljava/io/File;

.field private mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

.field private mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/task/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/meizu/flyme/activeview/task/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p4, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    .line 41
    if-nez p1, :cond_1

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    if-nez v3, :cond_4

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    const-string/jumbo v3, "DownloadTask"

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUrl ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_2
    :goto_1
    move-object v1, p3

    .line 61
    .local v1, "file":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "outDir":Ljava/io/File;
    if-eqz v1, :cond_5

    .line 72
    :cond_3
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    .line 73
    return-void

    .line 43
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "outDir":Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", outputDir="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/meizu/flyme/activeview/listener/OnDownloadListener;->onDownloadFinished(ILjava/lang/String;)V

    .line 44
    iput-object v6, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v3, "DownloadTask"

    .line 53
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    if-eqz v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/meizu/flyme/activeview/listener/OnDownloadListener;->onDownloadFinished(ILjava/lang/String;)V

    .line 56
    iput-object v6, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "file":Ljava/lang/String;
    .restart local v2    # "outDir":Ljava/io/File;
    :cond_5
    iget-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    if-eqz v3, :cond_3

    .line 64
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "DownloadTask"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to make directories:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 10
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    const/16 v6, 0x2000

    .line 176
    new-array v0, v6, [B

    .line 177
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 178
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x2000

    .line 182
    :try_start_0
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, "n":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 186
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .end local v4    # "n":I
    :goto_2
    return v1

    .restart local v4    # "n":I
    :cond_0
    const/4 v6, 0x0

    .line 183
    :try_start_3
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    add-int/2addr v1, v4

    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "DownloadTask"

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "out.close() IOException e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "DownloadTask"

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in.close() IOException e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "n":I
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "DownloadTask"

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Extracted IOException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 196
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 199
    :catch_3
    move-exception v2

    const-string/jumbo v6, "DownloadTask"

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in.close() IOException e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 194
    :catch_4
    move-exception v2

    const-string/jumbo v6, "DownloadTask"

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "out.close() IOException e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 191
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 196
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 199
    :goto_5
    throw v6

    .line 194
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "DownloadTask"

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "out.close() IOException e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 199
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "DownloadTask"

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in.close() IOException e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private download()I
    .locals 18

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    if-nez v14, :cond_1

    :cond_0
    const/4 v14, 0x0

    .line 124
    return v14

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    if-eqz v14, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    if-nez v14, :cond_2

    .line 129
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .local v12, "startTime":J
    const/4 v2, 0x0

    .line 133
    .local v2, "bytesCopied":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 134
    .local v4, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_3

    const-string/jumbo v14, "DownloadTask"

    .line 161
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error. ResponseCode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    return v14

    .line 127
    .end local v2    # "bytesCopied":I
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v12    # "startTime":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/meizu/flyme/activeview/listener/OnDownloadListener;->onDownloadStart(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .restart local v2    # "bytesCopied":I
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v12    # "startTime":J
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 136
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_8

    .line 140
    :cond_4
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v11, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    int-to-long v8, v14

    .line 142
    .local v8, "inStreamLength":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    if-nez v14, :cond_9

    .line 148
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/meizu/flyme/activeview/task/DownloadTask;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    .line 149
    if-ne v2, v10, :cond_a

    .line 152
    :cond_6
    :goto_1
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v14, :cond_b

    .line 169
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .local v6, "endTime":J
    const-string/jumbo v14, "DownloadTask"

    .line 170
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Download file:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", UseTime ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 172
    return v14

    .line 136
    .end local v6    # "endTime":J
    .end local v8    # "inStreamLength":J
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    :cond_8
    int-to-long v14, v10

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_4

    const-string/jumbo v14, "DownloadTask"

    .line 137
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " already exits!! Don\'t download again."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mFile.length()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 138
    return v14

    .line 143
    .restart local v8    # "inStreamLength":J
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1, v8, v9}, Lcom/meizu/flyme/activeview/download/IFileChecker;->checkHttpContentLength(JJ)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v3

    .line 144
    .local v3, "checkResult":Lcom/meizu/flyme/activeview/download/FileCheckResult;
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->isMatch()Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x4

    .line 145
    return v14

    .end local v3    # "checkResult":Lcom/meizu/flyme/activeview/download/FileCheckResult;
    :cond_a
    const/4 v14, -0x1

    .line 149
    if-eq v10, v14, :cond_6

    const-string/jumbo v14, "DownloadTask"

    .line 150
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Download incomplete bytesCopied="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", length"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 168
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "inStreamLength":J
    .end local v10    # "length":I
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v14, "DownloadTask"

    .line 166
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "IOException e="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 167
    return v14

    .line 155
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "inStreamLength":J
    .restart local v10    # "length":I
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/meizu/flyme/activeview/download/IFileChecker;->checkFileDataInfo(Ljava/lang/String;)Lcom/meizu/flyme/activeview/download/FileCheckResult;

    move-result-object v3

    .line 156
    .restart local v3    # "checkResult":Lcom/meizu/flyme/activeview/download/FileCheckResult;
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/download/FileCheckResult;->isMatch()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x3

    .line 157
    return v14
.end method

.method private setResult(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/activeview/listener/OnDownloadListener;->onDownloadError(I)V

    .line 111
    :goto_1
    iput-object v4, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download Fail. URL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/listener/OnDownloadListener;->onDownloadFinished(ILjava/lang/String;)V

    goto :goto_1

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/listener/OnDownloadListener;->onDownloadFinished(ILjava/lang/String;)V

    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public doDownloadSync()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/DownloadTask;->download()I

    move-result v0

    .line 117
    .local v0, "result":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->setResult(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 119
    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/DownloadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/DownloadTask;->download()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFile:Ljava/io/File;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/DownloadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->setResult(Ljava/lang/Integer;)V

    .line 95
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mDownloadListener:Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    .line 92
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setFileChecker(Lcom/meizu/flyme/activeview/download/IFileChecker;)V
    .locals 0
    .param p1, "fileChecker"    # Lcom/meizu/flyme/activeview/download/IFileChecker;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/meizu/flyme/activeview/task/DownloadTask;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    .line 206
    return-void
.end method
