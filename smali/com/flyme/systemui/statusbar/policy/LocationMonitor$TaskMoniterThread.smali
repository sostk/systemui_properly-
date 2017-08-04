.class Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;
.super Ljava/lang/Thread;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/LocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskMoniterThread"
.end annotation


# instance fields
.field private mIsCancled:Z

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    .line 299
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 305
    :goto_0
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    if-nez v1, :cond_1

    .line 307
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_1
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    if-eqz v1, :cond_0

    .line 312
    return-void

    .line 308
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string/jumbo v1, "LocationMonitor"

    const-string/jumbo v2, "TaskMoniterThread running"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->-wrap2(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method
