.class public Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;
.super Ljava/lang/Object;
.source "RecentsEvents.java"


# instance fields
.field public final monitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "monitor"    # Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string/jumbo v0, "recents.Events"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PackageRemovedEvent \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  userid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;->monitor:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;

    .line 96
    iput-object p2, p0, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;->packageName:Ljava/lang/String;

    .line 97
    iput p3, p0, Lcom/flyme/systemui/recents/events/RecentsEvents$PackageRemovedEvent;->userId:I

    .line 92
    return-void
.end method
