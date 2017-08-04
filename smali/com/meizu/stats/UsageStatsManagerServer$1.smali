.class Lcom/meizu/stats/UsageStatsManagerServer$1;
.super Ljava/lang/Object;
.source "UsageStatsManagerServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManagerServer;


# direct methods
.method constructor <init>(Lcom/meizu/stats/UsageStatsManagerServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer$1;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer$1;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsManagerServer;->-get5(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "UsageStatsManagerServer"

    const-string/jumbo v1, "cleared packageSessionMap "

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
