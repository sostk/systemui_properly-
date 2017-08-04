.class public Lcom/meizu/flyme/activeview/utils/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "activeview.JsonParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v10, 0x0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    const-string/jumbo v6, "activeview.JsonParser"

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "jsonStr ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 25
    .local v4, "start":J
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "parseResult":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .local v2, "end":J
    const-string/jumbo v6, "activeview.JsonParser"

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse jsonStr.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", UseTime ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object v1

    .end local v1    # "parseResult":Ljava/lang/Object;, "TT;"
    .end local v2    # "end":J
    .end local v4    # "start":J
    :cond_0
    const-string/jumbo v6, "activeview.JsonParser"

    const-string/jumbo v7, "jsonStr to parse is NULL!"

    .line 16
    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-object v10

    .line 32
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "activeview.JsonParser"

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-object v10
.end method

.method public static parseJsonAsync(Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;)Landroid/os/AsyncTask;
    .locals 3
    .param p0, "jsonStr"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .prologue
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Lcom/meizu/flyme/activeview/task/ParseJsonTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/flyme/activeview/task/ParseJsonTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnJsonParserListener;)V

    .line 43
    .local v0, "task":Lcom/meizu/flyme/activeview/task/ParseJsonTask;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/ParseJsonTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-object v0

    .end local v0    # "task":Lcom/meizu/flyme/activeview/task/ParseJsonTask;
    :cond_0
    const-string/jumbo v1, "activeview.JsonParser"

    const-string/jumbo v2, "jsonStr to parse is NULL!"

    .line 38
    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 39
    return-object v1
.end method
