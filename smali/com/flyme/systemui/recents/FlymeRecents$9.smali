.class Lcom/flyme/systemui/recents/FlymeRecents$9;
.super Lcom/flyme/systemui/recents/RecentsWindow;
.source "FlymeRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/FlymeRecents;->realInit(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/view/ViewGroup;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$9;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/recents/RecentsWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public onDissmis()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$9;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->dismissStage()V

    .line 997
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$9;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mRecentsWindow:Lcom/flyme/systemui/recents/RecentsWindow;

    .line 994
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 1002
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 1003
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$9;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->showStage()V

    .line 1001
    return-void
.end method
