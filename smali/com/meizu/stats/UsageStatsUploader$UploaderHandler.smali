.class Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
.super Landroid/os/Handler;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    .line 917
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 916
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 923
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 925
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v2

    .line 995
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "UsageStatsUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string/jumbo v6, "UsageStatsUploader"

    const-string/jumbo v7, "UPLOAD_TIME_ALARM"

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/meizu/stats/UsageStatsUploader;->-wrap9(Lcom/meizu/stats/UsageStatsUploader;J)V

    .line 931
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    goto :goto_0

    .line 935
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 936
    .local v4, "now":J
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get3(Lcom/meizu/stats/UsageStatsUploader;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 937
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6, v4, v5}, Lcom/meizu/stats/UsageStatsUploader;->-wrap9(Lcom/meizu/stats/UsageStatsUploader;J)V

    .line 938
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    goto :goto_0

    .line 943
    .end local v4    # "now":J
    :pswitch_3
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    goto :goto_0

    .line 947
    :pswitch_4
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get8(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v0

    .line 948
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 949
    const-string/jumbo v6, "UsageStatsUploader"

    const-string/jumbo v7, "DB_CHANGED, current count is 0, stop time alarm."

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-wrap4(Lcom/meizu/stats/UsageStatsUploader;)V

    goto/16 :goto_0

    .line 951
    :cond_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get0(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 952
    const-string/jumbo v6, "UsageStatsUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DB_CHANGED, start time alarm, current count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/meizu/stats/UsageStatsUploader;->-wrap9(Lcom/meizu/stats/UsageStatsUploader;J)V

    goto/16 :goto_0

    .line 958
    .end local v0    # "count":I
    :pswitch_5
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-wrap5(Lcom/meizu/stats/UsageStatsUploader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 960
    :try_start_2
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 961
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get8(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 962
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get8(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    .line 963
    const/4 v3, 0x0

    .line 964
    .local v3, "uploaded":Z
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get1(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 965
    const-string/jumbo v6, "UsageStatsUploader"

    const-string/jumbo v7, "upload by wifi"

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-wrap3(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;

    move-result-object v1

    .line 967
    .local v1, "data":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Lcom/meizu/stats/UsageStatsUploader;->-wrap2(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 968
    if-nez v3, :cond_2

    .line 969
    const/4 v3, 0x1

    .line 987
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "uploaded":Z
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get6(Lcom/meizu/stats/UsageStatsUploader;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 988
    :catch_1
    move-exception v2

    .line 989
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "UsageStatsUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 979
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "uploaded":Z
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get1(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-get1(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/meizu/experiencedatasync/util/Utils;->isNetworkWorking(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 980
    const-string/jumbo v6, "UsageStatsUploader"

    const-string/jumbo v7, "upload by mobile"

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->-wrap3(Lcom/meizu/stats/UsageStatsUploader;)Lorg/json/JSONObject;

    move-result-object v1

    .line 982
    .restart local v1    # "data":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lcom/meizu/stats/UsageStatsUploader;->-wrap2(Lcom/meizu/stats/UsageStatsUploader;Lorg/json/JSONObject;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 983
    const/4 v3, 0x1

    goto :goto_1

    .line 923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
