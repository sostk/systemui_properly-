.class Lcom/meizu/flyme/activeview/version/VersionManager$1;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/download/UpgradeDownloader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/version/VersionManager;->onCheckEnd(ILcom/meizu/flyme/activeview/json/UpgradeActiveBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/version/VersionManager;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/version/VersionManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "VersionManager"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download jar file fail: code  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p2}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 123
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$300(Lcom/meizu/flyme/activeview/version/VersionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;

    invoke-direct {v1, p0, p2}, Lcom/meizu/flyme/activeview/version/VersionManager$1$2;-><init>(Lcom/meizu/flyme/activeview/version/VersionManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$000(Lcom/meizu/flyme/activeview/version/VersionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "checkJarVersionTask":Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;
    new-instance v1, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;-><init>(Lcom/meizu/flyme/activeview/version/VersionManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->setOnCheckJarVersionListener(Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;)V

    const/4 v1, 0x1

    .line 115
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/version/VersionManager$CheckJarVersionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method
