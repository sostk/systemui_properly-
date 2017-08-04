.class Lcom/meizu/stats/UsageStatsUploader$1;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/stats/UsageStatsUploader;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method constructor <init>(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$1;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$1;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->-wrap6(Lcom/meizu/stats/UsageStatsUploader;)V

    .line 166
    return-void
.end method
