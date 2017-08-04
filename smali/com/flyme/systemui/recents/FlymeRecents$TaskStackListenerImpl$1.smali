.class Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl$1;
.super Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
.source "FlymeRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl$1;->this$1:Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

    invoke-direct {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 151
    .local v2, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 152
    .local v1, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, p0, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl$1;->this$1:Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;

    iget-object v3, v3, Lcom/flyme/systemui/recents/FlymeRecents$TaskStackListenerImpl;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v3, v3, Lcom/flyme/systemui/recents/FlymeRecents;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityToOther;

    invoke-direct {v4}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityToOther;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
