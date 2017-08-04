.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setData(Lcom/meizu/flyme/activeview/json/ActiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

.field final synthetic val$activeData:Lcom/meizu/flyme/activeview/json/ActiveData;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/json/ActiveData;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->val$activeData:Lcom/meizu/flyme/activeview/json/ActiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "curVersion"    # Ljava/lang/String;
    .param p2, "jarFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 809
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$802(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Z)Z

    const-string/jumbo v0, "2.0.0"

    .line 810
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$1100(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 820
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->val$activeData:Lcom/meizu/flyme/activeview/json/ActiveData;

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$902(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/json/ActiveData;)Lcom/meizu/flyme/activeview/json/ActiveData;

    .line 813
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$1000(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$1100(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1, v2, p2}, Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;->onUpgradeFinished(IILjava/lang/String;)V

    goto :goto_0
.end method
