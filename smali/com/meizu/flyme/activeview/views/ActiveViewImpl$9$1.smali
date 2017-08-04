.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;)V
    .locals 0

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "t":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    .line 2007
    check-cast v0, Lcom/meizu/flyme/activeview/json/NewElementInfo;

    .line 2008
    .local v0, "elementInfo":Lcom/meizu/flyme/activeview/json/NewElementInfo;
    if-eqz v0, :cond_0

    .line 2013
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    iget-object v2, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    iget-object v1, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->val$viewAdapter:Lcom/meizu/flyme/activeview/adapter/ViewAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1$1;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;)V

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$1500(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/json/NewElementInfo;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V

    .line 2027
    return-void

    .line 2009
    :cond_0
    return-void

    .line 2013
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    iget-object v1, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->val$viewAdapter:Lcom/meizu/flyme/activeview/adapter/ViewAdapter;

    goto :goto_0
.end method
