.class public Lcom/meizu/flyme/activeview/download/UpgradeDownloader;
.super Ljava/lang/Object;
.source "UpgradeDownloader.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

.field private mDownloadRetry:Z

.field private mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

.field private mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

.field private mFileDir:Ljava/lang/String;

.field private mUpdateInfo:Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateInfo"    # Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;
    .param p3, "outputDir"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mUpdateInfo:Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    .line 33
    iput-object p3, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mFileDir:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/meizu/flyme/activeview/task/DownloadTask;

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "new_active_view_temp.jar"

    invoke-direct {v0, v1, p3, v2, p0}, Lcom/meizu/flyme/activeview/task/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    .line 35
    new-instance v0, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getVerifyMode()I

    move-result v2

    const-string/jumbo v3, "com.meizu.flyme.activeview"

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getSize()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getDigest()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/meizu/flyme/activeview/download/DownloadFileChecker;-><init>(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    .line 37
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->setFileChecker(Lcom/meizu/flyme/activeview/download/IFileChecker;)V

    .line 38
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private retryDownload()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    iput-boolean v4, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadRetry:Z

    .line 107
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mUpdateInfo:Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getUpdateUrl2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    return v3

    .line 108
    :cond_0
    new-instance v0, Lcom/meizu/flyme/activeview/task/DownloadTask;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mUpdateInfo:Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/UpgradeActiveBean;->getUpdateUrl2()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mFileDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/meizu/flyme/activeview/task/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    .line 109
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mFileChecker:Lcom/meizu/flyme/activeview/download/IFileChecker;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->setFileChecker(Lcom/meizu/flyme/activeview/download/IFileChecker;)V

    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return v4
.end method


# virtual methods
.method public onDownloadError(I)V
    .locals 3
    .param p1, "responseCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "downFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 75
    :cond_0
    iput-object v2, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    .line 76
    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    if-nez v1, :cond_3

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 63
    :pswitch_0
    if-nez v0, :cond_2

    .line 66
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadRetry:Z

    if-nez v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->retryDownload()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadFinished(ILjava/lang/String;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCheckInfo result= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", +Download file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 98
    if-eq p1, v0, :cond_3

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadRetry:Z

    if-nez v0, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->retryDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    invoke-interface {v0, v2, p2}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    invoke-interface {v0, v2, p2}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    invoke-interface {v0, p2}, Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public startDownload(Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mCallback:Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;

    .line 42
    iget-object v0, p0, Lcom/meizu/flyme/activeview/download/UpgradeDownloader;->mDownloadTask:Lcom/meizu/flyme/activeview/task/DownloadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method
