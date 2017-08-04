.class public Lcom/meizu/flyme/activeview/utils/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inFile"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/meizu/flyme/activeview/task/DownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/activeview/task/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v0, "task":Lcom/meizu/flyme/activeview/task/DownloadTask;
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/task/DownloadTask;->doDownloadSync()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static downloadFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)Landroid/os/AsyncTask;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnDownloadListener;

    .prologue
    .line 11
    new-instance v0, Lcom/meizu/flyme/activeview/task/DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/flyme/activeview/task/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V

    .local v0, "task":Lcom/meizu/flyme/activeview/task/DownloadTask;
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 13
    return-object v0
.end method
