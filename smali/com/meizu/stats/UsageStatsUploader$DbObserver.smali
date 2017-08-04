.class Lcom/meizu/stats/UsageStatsUploader$DbObserver;
.super Landroid/database/ContentObserver;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$DbObserver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    .line 1046
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1045
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x6

    .line 1051
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$DbObserver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 1052
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$DbObserver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-get2(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1050
    return-void
.end method
