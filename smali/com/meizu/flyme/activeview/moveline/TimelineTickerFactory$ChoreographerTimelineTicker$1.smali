.class Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;
.super Ljava/lang/Object;
.source "TimelineTickerFactory.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 10
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 31
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v4}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$000(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 35
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v4}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$100(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 36
    .local v2, "elapsed":J
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v4, v0, v1}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$102(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;J)J

    .line 37
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    iget-object v5, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v5}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$100(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v5}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$300(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v5, v6

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$202(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;J)J

    .line 38
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v4}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$408(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)I

    .line 39
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v4}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$500(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)V

    .line 41
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v4}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$700(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)Landroid/view/Choreographer;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker$1;->this$0:Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;

    invoke-static {v5}, Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;->access$600(Lcom/meizu/flyme/activeview/moveline/TimelineTickerFactory$ChoreographerTimelineTicker;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v5

    sget-wide v6, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->sFrameDelay:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 42
    return-void

    .line 32
    .end local v0    # "currentTime":J
    .end local v2    # "elapsed":J
    :cond_0
    return-void
.end method
