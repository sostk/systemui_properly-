.class public Lcom/meizu/flyme/activeview/utils/ZipExtractor;
.super Ljava/lang/Object;
.source "ZipExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0}, Lcom/meizu/flyme/activeview/utils/ZipExtractor;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v0, "task":Lcom/meizu/flyme/activeview/task/ZipExtractTask;
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->doUnzipSync()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)Landroid/os/AsyncTask;
    .locals 2
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    .prologue
    .line 27
    new-instance v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)V

    .local v0, "task":Lcom/meizu/flyme/activeview/task/ZipExtractTask;
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-object v0
.end method

.method public static extractFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)Landroid/os/AsyncTask;
    .locals 2
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;

    .prologue
    .line 18
    new-instance v0, Lcom/meizu/flyme/activeview/task/ZipExtractTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)V

    .local v0, "task":Lcom/meizu/flyme/activeview/task/ZipExtractTask;
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/ZipExtractTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-object v0
.end method
