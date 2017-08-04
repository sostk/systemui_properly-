.class Lcom/meizu/stats/UsageStatsUploader$2;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/stats/UsageStatsUploader;->uploadEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;

.field final synthetic val$event:Lcom/meizu/stats/UsageStatsProxy$Event;


# direct methods
.method constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p2, "val$event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    iput-object p2, p0, Lcom/meizu/stats/UsageStatsUploader$2;->val$event:Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$2;->val$event:Lcom/meizu/stats/UsageStatsProxy$Event;

    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v3}, Lcom/meizu/stats/UsageStatsUploader;->-get1(Lcom/meizu/stats/UsageStatsUploader;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->-wrap1(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsProxy$Event;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const-string/jumbo v1, "UsageStatsUploader"

    const-string/jumbo v2, "ON_EVENT_REALTIME, uploadEvent unsuccessfully, store event."

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader$2;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$2;->val$event:Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatsUploader;->-wrap7(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UsageStatsUploader"

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
