.class Lcom/meizu/flyme/activeview/version/VersionManager$1$1;
.super Ljava/lang/Object;
.source "VersionManager.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/version/VersionManager$OnCheckJarVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/version/VersionManager$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/version/VersionManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iput-object p2, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "VersionManager"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChecked jar version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    if-nez p1, :cond_2

    :cond_1
    const-string/jumbo v0, "VersionManager"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the version of the upgrade jar is error , the version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but the current version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "2.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->val$filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 106
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    const-string/jumbo v1, "2.0.0"

    iget-object v2, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->val$filePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$200(Lcom/meizu/flyme/activeview/version/VersionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v1, v1, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$000(Lcom/meizu/flyme/activeview/version/VersionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getDefaultNewActiveJarPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/FileCacheHelper;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    iget-object v0, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$100(Lcom/meizu/flyme/activeview/version/VersionManager;)Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/activeview/version/VersionManager$1$1;->this$1:Lcom/meizu/flyme/activeview/version/VersionManager$1;

    iget-object v1, v1, Lcom/meizu/flyme/activeview/version/VersionManager$1;->this$0:Lcom/meizu/flyme/activeview/version/VersionManager;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/version/VersionManager;->access$000(Lcom/meizu/flyme/activeview/version/VersionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getDefaultNewActiveJarPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
