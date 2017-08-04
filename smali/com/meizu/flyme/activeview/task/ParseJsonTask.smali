.class public Lcom/meizu/flyme/activeview/task/ParseJsonTask;
.super Landroid/os/AsyncTask;
.source "ParseJsonTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mJsonStr:Ljava/lang/String;

.field private mListener:Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;)V
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mJsonStr:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mClass:Ljava/lang/Class;

    .line 19
    iput-object p3, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mJsonStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mClass:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/JsonParser;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;

    if-nez v0, :cond_1

    .line 42
    :goto_0
    iput-object v1, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;

    .line 43
    return-void

    .line 35
    :cond_0
    iput-object v1, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;

    .line 36
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;

    invoke-interface {v0, p1}, Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;->onParseResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 31
    return-void
.end method
