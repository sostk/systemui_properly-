.class Lcom/meizu/stats/UsageStatsManager$RecordHandler;
.super Landroid/os/Handler;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManager;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    .line 181
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 190
    .local v7, "data":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    const-string/jumbo v1, "pckageName"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 192
    const-string/jumbo v3, "name"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 191
    invoke-interface/range {v0 .. v5}, Lcom/meizu/stats/IUsageStatsManager;->onPage(Ljava/lang/String;ZLjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v7    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 195
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-interface {v1, v0}, Lcom/meizu/stats/IUsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 204
    :catch_1
    move-exception v8

    .line 205
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-interface {v1, v0}, Lcom/meizu/stats/IUsageStatsManager;->onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 214
    :catch_2
    move-exception v8

    .line 215
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    const/4 v12, 0x0

    .line 221
    .local v12, "upload":Z
    :goto_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get2(Lcom/meizu/stats/UsageStatsManager;)Z

    move-result v0

    if-eq v0, v12, :cond_0

    .line 222
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0, v12}, Lcom/meizu/stats/UsageStatsManager;->-set1(Lcom/meizu/stats/UsageStatsManager;Z)Z

    .line 227
    :try_start_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManager;->-get2(Lcom/meizu/stats/UsageStatsManager;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/stats/IUsageStatsManager;->setUploaded(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 230
    :catch_3
    move-exception v8

    .line 231
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "upload":Z
    :cond_1
    const/4 v12, 0x1

    .restart local v12    # "upload":Z
    goto :goto_1

    .line 236
    .end local v12    # "upload":Z
    :pswitch_4
    const/4 v11, 0x0

    .line 237
    .local v11, "source":Ljava/lang/String;
    const/4 v10, 0x0

    .line 238
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, "source":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "source":Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    invoke-interface {v0, v11, v10}, Lcom/meizu/stats/IUsageStatsManager;->setSource(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 247
    :catch_4
    move-exception v8

    .line 248
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    const/4 v9, 0x0

    .line 254
    .local v9, "online":Z
    :goto_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get1(Lcom/meizu/stats/UsageStatsManager;)Z

    move-result v0

    if-eq v0, v9, :cond_0

    .line 255
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0, v9}, Lcom/meizu/stats/UsageStatsManager;->-set0(Lcom/meizu/stats/UsageStatsManager;Z)Z

    .line 260
    :try_start_5
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManager;->-get1(Lcom/meizu/stats/UsageStatsManager;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/stats/IUsageStatsManager;->setOnline(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 263
    :catch_5
    move-exception v8

    .line 264
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "online":Z
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "online":Z
    goto :goto_2

    .line 269
    .end local v9    # "online":Z
    :pswitch_6
    const/4 v6, 0x0

    .line 270
    .local v6, "bulkLimit":I
    const/4 v10, 0x0

    .line 271
    .restart local v10    # "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 272
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "bulk_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 273
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 277
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManager;->-get3(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v0

    invoke-interface {v0, v6, v10}, Lcom/meizu/stats/IUsageStatsManager;->setBulkLimit(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 280
    :catch_6
    move-exception v8

    .line 281
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
