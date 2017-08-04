.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->extractZipFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errStr"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onExtractFinished(ILjava/lang/String;)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "extractedDir"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 689
    if-eq p1, v4, :cond_0

    .line 697
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 701
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 694
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-virtual {v0, p2, v3}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->loadData(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V

    .line 695
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/CacheUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$400(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->saveToSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extracted dir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v4, v1}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_1

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1, p2}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onExtractStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 678
    return-void
.end method
