.class Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;
.super Ljava/lang/Object;
.source "TaskViewClearAll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskViewClearAll;->onEvent(Lcom/flyme/systemui/recents/events/TaskMemEvents$TaskMemLoadCompleted;)V
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
    .line 225
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iput-wide p2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;->val$releaseMem:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iget-wide v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$6;->val$releaseMem:J

    invoke-static {v0, v2, v3}, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->-wrap0(Lcom/flyme/systemui/recents/views/TaskViewClearAll;J)V

    .line 227
    return-void
.end method
