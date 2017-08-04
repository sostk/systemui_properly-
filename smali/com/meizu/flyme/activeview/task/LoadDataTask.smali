.class public Lcom/meizu/flyme/activeview/task/LoadDataTask;
.super Landroid/os/AsyncTask;
.source "LoadDataTask.java"


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


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "activeview.LoadDataTask"


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/lang/String;

.field private mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

.field private mbUseAssetsFile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/activeview/task/LoadDataTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;
    .param p5, "useAssetsFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mContext:Landroid/content/Context;

    .line 36
    iput-boolean p5, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mbUseAssetsFile:Z

    .line 37
    iput-object p2, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mFile:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    .line 39
    iput-object p3, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mClass:Ljava/lang/Class;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    .local v14, "startTime":J
    const/4 v9, 0x0

    .line 47
    .local v9, "instream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mbUseAssetsFile:Z

    if-nez v13, :cond_1

    .line 52
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mFile:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_0
    const-string/jumbo v13, "activeview.LoadDataTask"

    .line 54
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "file:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "is a Directory!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 55
    return-object v13

    .line 48
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mContext:Landroid/content/Context;

    if-nez v13, :cond_3

    .end local v9    # "instream":Ljava/io/InputStream;
    :cond_2
    :goto_0
    const-string/jumbo v11, ""

    .line 60
    .local v11, "jsonStr":Ljava/lang/String;
    if-nez v9, :cond_5

    .line 76
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .local v6, "endTime":J
    const-string/jumbo v13, "activeview.LoadDataTask"

    .line 82
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Load data.json file:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mFile:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", UseTime ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v18, v6, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mClass:Ljava/lang/Class;

    invoke-static {v11, v13}, Lcom/meizu/flyme/activeview/utils/JsonParser;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    return-object v13

    .line 48
    .end local v6    # "endTime":J
    .end local v11    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "instream":Ljava/io/InputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mFile:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .local v9, "instream":Ljava/io/InputStream;
    goto :goto_0

    .line 53
    .restart local v5    # "file":Ljava/io/File;
    .local v9, "instream":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 57
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v10, "instream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "instream":Ljava/io/InputStream;
    .local v9, "instream":Ljava/io/InputStream;
    goto :goto_0

    .line 62
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "instream":Ljava/io/InputStream;
    .restart local v11    # "jsonStr":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    .local v8, "inputreader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v2, "buffreader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-nez v12, :cond_6

    .line 71
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 84
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .end local v11    # "jsonStr":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "activeview.LoadDataTask"

    .line 87
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;->onLoadDataResult(ILjava/lang/Object;)V

    const/4 v13, 0x0

    .line 89
    return-object v13

    .line 66
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v11    # "jsonStr":Ljava/lang/String;
    .restart local v12    # "line":Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    goto :goto_2

    .line 72
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v8    # "inputreader":Ljava/io/InputStreamReader;
    .end local v12    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v13, "activeview.LoadDataTask"

    .line 69
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/meizu/flyme/activeview/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 71
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v13

    :cond_7
    const-string/jumbo v13, "activeview.LoadDataTask"

    const-string/jumbo v16, "Read file data.json is empty!"

    .line 77
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v13, 0x0

    .line 78
    return-object v13
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/LoadDataTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    if-nez v1, :cond_1

    .line 109
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "activeview.LoadDataTask"

    const-string/jumbo v1, "onPostExecute() task isCancelled = "

    .line 100
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-object v2, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    .line 102
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    if-nez p1, :cond_2

    :goto_1
    invoke-interface {v1, v0, p1}, Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;->onLoadDataResult(ILjava/lang/Object;)V

    .line 107
    iput-object v2, p0, Lcom/meizu/flyme/activeview/task/LoadDataTask;->mListener:Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 106
    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 96
    return-void
.end method
