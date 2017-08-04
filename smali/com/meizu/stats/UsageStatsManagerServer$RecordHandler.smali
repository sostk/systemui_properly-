.class Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
.super Landroid/os/Handler;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManagerServer;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsManagerServer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    return-void
.end method

.method private insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 322
    const-string/jumbo v1, "UsageStatsManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSource(Ljava/lang/String;)V

    .line 327
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->-get8(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 328
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->-get9(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsUploader;->eventComein()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UsageStatsManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 6
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "sessionid":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v3}, Lcom/meizu/stats/UsageStatsManagerServer;->-get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 308
    .local v2, "sessionid":Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v3}, Lcom/meizu/stats/UsageStatsManagerServer;->-get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    invoke-virtual {p1, v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSessionid(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 314
    const-string/jumbo v3, "com.meizu.uxip.log"

    invoke-virtual {p1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v2    # "sessionid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "UsageStatsManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ON_EVENT, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 163
    .local v3, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get0(Lcom/meizu/stats/UsageStatsManagerServer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get2(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/stats/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get9(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 168
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 299
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    :catch_0
    move-exception v18

    .line 300
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - Cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "UsageStatsManagerServer"

    const-string/jumbo v5, "now offline not recording"

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :pswitch_1
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ON_EVENT_REALTIME, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    :cond_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 180
    .restart local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get0(Lcom/meizu/stats/UsageStatsManagerServer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get2(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/stats/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get9(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/meizu/stats/UsageStatsUploader;->uploadEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto/16 :goto_0

    .line 176
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    :cond_5
    const-string/jumbo v4, "UsageStatsManagerServer"

    const-string/jumbo v5, "now offline not recording"

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_2
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ON_PAGE_START, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 193
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    .line 194
    .local v24, "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_7

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get3(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v5}, Lcom/meizu/stats/UsageStatsManagerServer;->-get1(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 199
    const-string/jumbo v4, "UsageStatsManagerServer"

    const-string/jumbo v5, "ON_PAGE_START, app boot, new session."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get9(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 212
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    .end local v24    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :cond_8
    const-string/jumbo v4, "UsageStatsManagerServer"

    const-string/jumbo v5, "now offline not recording"

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :pswitch_3
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ON_PAGE_STOP, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get7(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get4(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 222
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    .line 223
    .local v25, "stopPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 224
    .local v20, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/stats/UsageStatsManagerServer$Page;>;"
    if-eqz v20, :cond_0

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 228
    .local v16, "currentTime":J
    :cond_a
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 229
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    .line 230
    .restart local v24    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 231
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    .line 232
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "start_time"

    invoke-static/range {v24 .. v24}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->-get0(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v4, "stop_time"

    invoke-static/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->-get0(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getTime()J

    move-result-wide v6

    .line 238
    invoke-virtual/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v8}, Lcom/meizu/stats/UsageStatsManagerServer;->-get2(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 235
    const/4 v5, 0x2

    .line 237
    const/4 v8, 0x0

    .line 238
    const/4 v10, 0x0

    .line 235
    invoke-direct/range {v3 .. v14}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .restart local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get0(Lcom/meizu/stats/UsageStatsManagerServer;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->setChannelNum(J)V

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get2(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/stats/UsageStatsProxy$Event;->setNetwork(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 242
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 249
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_c

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static/range {v25 .. v25}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->-get0(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/meizu/stats/UsageStatsManagerServer;->-set0(Lcom/meizu/stats/UsageStatsManagerServer;J)J

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get3(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v5}, Lcom/meizu/stats/UsageStatsManagerServer;->-get1(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    const-string/jumbo v4, "UsageStatsManagerServer"

    const-string/jumbo v5, "ON_PAGE_STOP, switch to background."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v15, v4, -0x64

    .line 255
    .local v15, "delCount":I
    if-lez v15, :cond_0

    .line 256
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ON_PAGE_STOP, too many pages in stack, delete pages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v15, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 257
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 219
    .end local v15    # "delCount":I
    .end local v16    # "currentTime":J
    .end local v19    # "i":I
    .end local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/stats/UsageStatsManagerServer$Page;>;"
    .end local v25    # "stopPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :cond_d
    const-string/jumbo v4, "UsageStatsManagerServer"

    const-string/jumbo v5, "now offline not recording"

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    .restart local v16    # "currentTime":J
    .restart local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/stats/UsageStatsManagerServer$Page;>;"
    .restart local v24    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    .restart local v25    # "stopPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :cond_e
    invoke-static/range {v24 .. v24}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->-get0(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v4

    sub-long v4, v16, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 245
    const-string/jumbo v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ON_PAGE_STOP, page time out :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 264
    .end local v16    # "currentTime":J
    .end local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/stats/UsageStatsManagerServer$Page;>;"
    .end local v24    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    .end local v25    # "stopPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->-get6(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/meizu/stats/UsageStatsManagerServer;->-set0(Lcom/meizu/stats/UsageStatsManagerServer;J)J

    goto/16 :goto_0

    .line 269
    :pswitch_5
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_f

    const/16 v26, 0x0

    .line 270
    .local v26, "upload":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    move/from16 v0, v26

    invoke-static {v4, v0}, Lcom/meizu/stats/UsageStatsManagerServer;->-wrap3(Lcom/meizu/stats/UsageStatsManagerServer;Z)V

    goto/16 :goto_0

    .line 269
    .end local v26    # "upload":Z
    :cond_f
    const/16 v26, 0x1

    .restart local v26    # "upload":Z
    goto :goto_3

    .line 274
    .end local v26    # "upload":Z
    :pswitch_6
    const/16 v23, 0x0

    .line 275
    .local v23, "source":Ljava/lang/String;
    const/16 v22, 0x0

    .line 276
    .local v22, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 278
    .local v23, "source":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 279
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/meizu/stats/UsageStatsManagerServer;->-wrap2(Lcom/meizu/stats/UsageStatsManagerServer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "source":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_10

    const/16 v21, 0x0

    .line 285
    .local v21, "online":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/meizu/stats/UsageStatsManagerServer;->-wrap1(Lcom/meizu/stats/UsageStatsManagerServer;Z)V

    goto/16 :goto_0

    .line 284
    .end local v21    # "online":Z
    :cond_10
    const/16 v21, 0x1

    .restart local v21    # "online":Z
    goto :goto_4

    .line 289
    .end local v21    # "online":Z
    :pswitch_8
    const/4 v2, 0x0

    .line 290
    .local v2, "bulkLimit":I
    const/16 v22, 0x0

    .line 291
    .local v22, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "bulk_limit"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 294
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    move-object/from16 v0, v22

    invoke-static {v4, v2, v0}, Lcom/meizu/stats/UsageStatsManagerServer;->-wrap0(Lcom/meizu/stats/UsageStatsManagerServer;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
