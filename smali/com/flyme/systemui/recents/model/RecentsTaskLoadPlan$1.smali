.class Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->asyncLoadMem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

.field final synthetic val$tasks:[Lcom/flyme/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;[Lcom/flyme/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "val$tasks"    # [Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;->this$0:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    iput-object p2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;->val$tasks:[Lcom/flyme/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x8

    .line 350
    :try_start_0
    const-string/jumbo v0, "recents_init_data_mem"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;->this$0:Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$1;->val$tasks:[Lcom/flyme/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getMeminfo([Lcom/flyme/systemui/recents/model/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 348
    return-void

    .line 352
    :catchall_0
    move-exception v0

    .line 353
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 352
    throw v0
.end method
