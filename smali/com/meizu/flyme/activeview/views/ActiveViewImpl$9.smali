.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateData(Ljava/lang/String;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

.field final synthetic val$viewAdapter:Lcom/meizu/flyme/activeview/adapter/ViewAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V
    .locals 0

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->val$viewAdapter:Lcom/meizu/flyme/activeview/adapter/ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1998
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const-string/jumbo v0, "activeview.ActiveView"

    .line 2001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "elementInfo: onResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/meizu/flyme/activeview/json/NewElementInfo;

    new-instance v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;)V

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/activeview/utils/JsonParser;->parseJsonAsync(Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;)Landroid/os/AsyncTask;

    .line 2029
    return-void
.end method
