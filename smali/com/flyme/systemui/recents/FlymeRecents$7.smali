.class Lcom/flyme/systemui/recents/FlymeRecents$7;
.super Ljava/lang/Object;
.source "FlymeRecents.java"

# interfaces
.implements Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/FlymeRecents;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$7;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 2
    .param p1, "monitor"    # Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$7;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    iget-object v0, v0, Lcom/flyme/systemui/recents/FlymeRecents;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/flyme/systemui/luckymoney/LuckyMoneyWatchDog;->onPackagesChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;-><init>(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$7;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-static {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->-wrap0(Lcom/flyme/systemui/recents/FlymeRecents;)V

    .line 300
    return-void
.end method
