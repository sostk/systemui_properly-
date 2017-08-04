.class Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;
.super Ljava/lang/Object;
.source "TaskViewClearAll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskViewClearAll;->onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskForceStopEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

.field final synthetic val$releaseMem:J


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskViewClearAll;
    .param p2, "val$releaseMem"    # J

    .prologue
    .line 235
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iput-wide p2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;->val$releaseMem:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 238
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iget-object v2, v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getCalculateReleaseMem()J

    move-result-wide v0

    .line 239
    .local v0, "calculateReleaseMem":J
    iget-wide v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;->val$releaseMem:J

    sub-long/2addr v0, v2

    .line 240
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iget-object v2, v2, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->mServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->updateCalculateReleaseMem(J)V

    .line 241
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$7;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-static {v2, v0, v1}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->-wrap0(Lcom/flyme/systemui/recents/views/TaskViewClearAll;J)V

    .line 237
    return-void
.end method
