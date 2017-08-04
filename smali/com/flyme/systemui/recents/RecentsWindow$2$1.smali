.class Lcom/flyme/systemui/recents/RecentsWindow$2$1;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/RecentsWindow$2;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/RecentsWindow$2;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$2$1;->this$1:Lcom/flyme/systemui/recents/RecentsWindow$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 117
    .local v0, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsWindow$2$1;->this$1:Lcom/flyme/systemui/recents/RecentsWindow$2;

    iget-object v2, v2, Lcom/flyme/systemui/recents/RecentsWindow$2;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v2}, Lcom/flyme/systemui/recents/RecentsWindow;->-get1(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 115
    :cond_0
    return-void
.end method
