.class public Lcom/meizu/flyme/activeview/task/ZipExtractTask;
.super Landroid/os/AsyncTask;
.source "ZipExtractTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipExtractTask"


# instance fields
.field private mEextractedDir:Ljava/lang/String;

.field private final mInput:Ljava/io/File;

.field private mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

.field private final mOutput:Ljava/io/File;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "inFile"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)V

    const-string/jumbo v0, "ZipExtractTask"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extract Destination dir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)V
    .locals 3
    .param p1, "inFile"    # Ljava/lang/String;
    .param p2, "outputDir"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p4, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    .line 48
    iput-object p3, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mPassword:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    const-string/jumbo v0, "ZipExtractTask"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extract mInput file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ZipExtractTask"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extract mOutput file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ZipExtractTask"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to make directories:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to make directories:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 10
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    const/16 v6, 0x2000

    .line 270
    new-array v0, v6, [B

    .line 271
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 272
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x2000

    .line 276
    :try_start_0
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, "n":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 280
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    .end local v4    # "n":I
    :goto_2
    return v1

    .restart local v4    # "n":I
    :cond_0
    const/4 v6, 0x0

    .line 277
    :try_start_3
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    add-int/2addr v1, v4

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ZipExtractTask"

    .line 287
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

    .line 293
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ZipExtractTask"

    .line 292
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

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "n":I
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "ZipExtractTask"

    .line 282
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

    .line 285
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 290
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 293
    :catch_3
    move-exception v2

    const-string/jumbo v6, "ZipExtractTask"

    .line 292
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

    .line 288
    :catch_4
    move-exception v2

    const-string/jumbo v6, "ZipExtractTask"

    .line 287
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

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 285
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 290
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 293
    :goto_5
    throw v6

    .line 288
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ZipExtractTask"

    .line 287
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

    .line 293
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ZipExtractTask"

    .line 292
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

.method private deleteZipFile()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ZipExtractTask"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t delete file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after extracted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ZipExtractTask"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delete file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after extracted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unzip()J
    .locals 24

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 193
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    .local v14, "start":J
    const-wide/16 v10, 0x0

    .line 196
    .local v10, "extractedSize":J
    const/4 v2, 0x0

    .local v2, "deleteTempDir":Z
    const/16 v17, 0x0

    .local v17, "zip":Ljava/util/zip/ZipFile;
    const/16 v19, 0x0

    .line 201
    .local v19, "zipDirName":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    .end local v17    # "zip":Ljava/util/zip/ZipFile;
    .local v18, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 203
    .end local v19    # "zipDirName":Ljava/lang/String;
    .local v8, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-nez v20, :cond_3

    .line 228
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 229
    .local v16, "tempDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-eqz v20, :cond_9

    .line 246
    :goto_2
    if-nez v18, :cond_a

    :goto_3
    move-object/from16 v17, v18

    .line 257
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "tempDir":Ljava/lang/String;
    .end local v18    # "zip":Ljava/util/zip/ZipFile;
    :cond_1
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .local v6, "end":J
    const-string/jumbo v20, "ZipExtractTask"

    .line 259
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extract file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", UseTime ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v6, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-nez v2, :cond_f

    .line 265
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->deleteZipFile()V

    .line 266
    return-wide v10

    .line 190
    .end local v2    # "deleteTempDir":Z
    .end local v6    # "end":J
    .end local v10    # "extractedSize":J
    .end local v14    # "start":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractStart(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .restart local v2    # "deleteTempDir":Z
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "extractedSize":J
    .restart local v14    # "start":J
    .restart local v18    # "zip":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_2
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 205
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_0

    .line 209
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "fileName":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 214
    :cond_4
    :goto_6
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v3, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v3, "destination":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 223
    :goto_7
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v13, "outStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    .line 225
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 255
    .end local v3    # "destination":Ljava/io/File;
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "zip":Ljava/util/zip/ZipFile;
    .local v5, "e":Ljava/util/zip/ZipException;
    :goto_8
    :try_start_3
    const-string/jumbo v20, "ZipExtractTask"

    .line 235
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ZipException :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/util/zip/ZipException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v20, :cond_c

    .line 246
    :goto_9
    if-eqz v17, :cond_1

    .line 247
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 254
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v20, "ZipExtractTask"

    .line 250
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/util/zip/ZipException;
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v18    # "zip":Ljava/util/zip/ZipFile;
    :cond_5
    if-eqz v12, :cond_4

    :try_start_5
    const-string/jumbo v20, "/"

    .line 211
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v19, v20, v21

    .local v19, "zipDirName":Ljava/lang/String;
    const-string/jumbo v20, "ZipExtractTask"

    .line 212
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extract temp directory="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 255
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v19    # "zipDirName":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object/from16 v17, v18

    .end local v18    # "zip":Ljava/util/zip/ZipFile;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_6
    const-string/jumbo v20, "ZipExtractTask"

    .line 240
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v20, :cond_d

    .line 246
    :goto_b
    if-eqz v17, :cond_1

    .line 247
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_4

    .line 254
    :catch_3
    move-exception v4

    const-string/jumbo v20, "ZipExtractTask"

    .line 250
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 216
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "destination":Ljava/io/File;
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v18    # "zip":Ljava/util/zip/ZipFile;
    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_8

    const-string/jumbo v20, "ZipExtractTask"

    .line 219
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Can\'t make destination directory="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    .line 255
    .end local v3    # "destination":Ljava/io/File;
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v20

    move-object/from16 v17, v18

    .line 246
    .end local v18    # "zip":Ljava/util/zip/ZipFile;
    :goto_c
    if-nez v17, :cond_e

    .line 254
    :cond_7
    :goto_d
    throw v20

    .restart local v3    # "destination":Ljava/io/File;
    .restart local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v18    # "zip":Ljava/util/zip/ZipFile;
    :cond_8
    :try_start_9
    const-string/jumbo v20, "ZipExtractTask"

    .line 217
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Make Destination directory="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 230
    .end local v3    # "destination":Ljava/io/File;
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "fileName":Ljava/lang/String;
    .restart local v16    # "tempDir":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/FileUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/util/zip/ZipException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 231
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 247
    :cond_a
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 254
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "ZipExtractTask"

    .line 250
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    :goto_e
    move-object/from16 v17, v18

    .line 255
    .end local v18    # "zip":Ljava/util/zip/ZipFile;
    .local v17, "zip":Ljava/util/zip/ZipFile;
    goto/16 :goto_4

    .line 252
    .end local v17    # "zip":Ljava/util/zip/ZipFile;
    .restart local v18    # "zip":Ljava/util/zip/ZipFile;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto :goto_e

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "tempDir":Ljava/lang/String;
    .end local v18    # "zip":Ljava/util/zip/ZipFile;
    .restart local v5    # "e":Ljava/util/zip/ZipException;
    :cond_c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ZipException :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/util/zip/ZipException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 255
    .end local v5    # "e":Ljava/util/zip/ZipException;
    :catchall_1
    move-exception v20

    goto/16 :goto_c

    .line 242
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Extracted IOException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_b

    .line 247
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_d

    .line 254
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "ZipExtractTask"

    .line 250
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Extracted IOException:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Extracted IOException:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 262
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "end":J
    :cond_f
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 255
    .end local v6    # "end":J
    .local v17, "zip":Ljava/util/zip/ZipFile;
    .local v19, "zipDirName":Ljava/lang/String;
    :catch_6
    move-exception v4

    goto/16 :goto_a

    :catch_7
    move-exception v5

    goto/16 :goto_8
.end method

.method private unzip2()J
    .locals 18

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    if-nez v13, :cond_1

    .line 122
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    .line 125
    .local v10, "start":J
    :try_start_0
    new-instance v12, Lnet/lingala/zip4j/core/ZipFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .local v12, "zFile":Lnet/lingala/zip4j/core/ZipFile;
    const-string/jumbo v13, "UTF-8"

    .line 126
    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v12}, Lnet/lingala/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 134
    invoke-virtual {v12}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v13

    if-nez v13, :cond_4

    const-string/jumbo v13, "ZipExtractTask"

    const-string/jumbo v14, "zFile is not Encrypted!"

    .line 137
    invoke-static {v13, v14}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    .line 143
    .local v3, "folderInZip":Ljava/lang/String;
    invoke-virtual {v12}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v7

    .local v7, "list":Ljava/util/List;
    const/4 v6, 0x0

    .line 144
    .local v6, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .end local v3    # "folderInZip":Ljava/lang/String;
    .local v8, "size":I
    :goto_2
    if-lt v6, v8, :cond_5

    :goto_3
    const-string/jumbo v13, "ZipExtractTask"

    .line 152
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "zFile folderInZip="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 155
    .local v9, "tempUpZipDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 158
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "tempUpZipDir":Ljava/lang/String;
    const-string/jumbo v13, "ZipExtractTask"

    .line 159
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "tempUpZipDir = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v9    # "tempUpZipDir":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    if-nez v9, :cond_9

    .line 177
    :cond_0
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .local v4, "end":J
    const-string/jumbo v13, "ZipExtractTask"

    .line 179
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Extract file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", UseTime ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v4, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->deleteZipFile()V

    const-wide/16 v14, 0x0

    .line 182
    return-wide v14

    .line 119
    .end local v4    # "end":J
    .end local v6    # "i":I
    .end local v7    # "list":Ljava/util/List;
    .end local v8    # "size":I
    .end local v10    # "start":J
    .end local v12    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractStart(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v10    # "start":J
    .restart local v12    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_2
    :try_start_1
    const-string/jumbo v13, "ZipExtractTask"

    const-string/jumbo v14, "Invalid ZipFile!"

    .line 128
    invoke-static {v13, v14}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    if-nez v13, :cond_3

    :goto_6
    const-wide/16 v14, -0x1

    .line 132
    return-wide v14

    .line 130
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    const-string/jumbo v14, "Invalid ZipFile!"

    invoke-interface {v13, v14}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 175
    .end local v12    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :catch_0
    move-exception v2

    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    const-string/jumbo v13, "ZipExtractTask"

    .line 170
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "zFile ZipException="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lnet/lingala/zip4j/exception/ZipException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    if-nez v13, :cond_a

    :goto_7
    const-wide/16 v14, -0x1

    .line 174
    return-wide v14

    .line 135
    .end local v2    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v12    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 145
    .restart local v6    # "i":I
    .restart local v7    # "list":Ljava/util/List;
    .restart local v8    # "size":I
    :cond_5
    invoke-virtual {v12}, Lnet/lingala/zip4j/core/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/lingala/zip4j/model/FileHeader;

    check-cast v13, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    .local v3, "folderInZip":Ljava/lang/String;
    const-string/jumbo v13, "__"

    .line 146
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 144
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v13, "."

    .line 146
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_3

    .line 156
    .end local v3    # "folderInZip":Ljava/lang/String;
    .local v9, "tempUpZipDir":Ljava/lang/String;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mOutput:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    goto/16 :goto_4

    .line 164
    .end local v9    # "tempUpZipDir":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    invoke-static {v9, v13}, Lcom/meizu/flyme/activeview/utils/FileUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v9}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)Z
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 172
    .end local v6    # "i":I
    .end local v7    # "list":Ljava/util/List;
    .end local v8    # "size":I
    .end local v12    # "zFile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v2    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "zFile Exception="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lnet/lingala/zip4j/exception/ZipException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractError(Ljava/lang/String;)V

    goto/16 :goto_7
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->unzip2()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    const-wide/16 v0, 0x0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public doUnzipSync()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->unzip()J

    move-result-wide v0

    .local v0, "extractedSize":J
    const-wide/16 v2, 0x0

    .line 111
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    :goto_1
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    if-nez v0, :cond_1

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object v4, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    .line 84
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mEextractedDir:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractFinished(ILjava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->deleteZipFile()V

    .line 94
    :goto_1
    iput-object v4, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extract File ERROR. File="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->mInput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;->onExtractFinished(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
