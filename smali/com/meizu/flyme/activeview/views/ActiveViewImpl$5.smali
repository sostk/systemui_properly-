.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->loadData(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadDataResult(ILjava/lang/Object;)V
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 752
    if-eq p1, v3, :cond_0

    .line 759
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 763
    .end local p2    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 753
    .restart local p2    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 756
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    check-cast p2, Lcom/meizu/flyme/activeview/json/ActiveData;

    .end local p2    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setData(Lcom/meizu/flyme/activeview/json/ActiveData;)V

    goto :goto_0

    .line 754
    .restart local p2    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load and parse json file success, file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v3, v1}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_1

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load and parse json file FAIL, file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v1, v2}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_0
.end method
