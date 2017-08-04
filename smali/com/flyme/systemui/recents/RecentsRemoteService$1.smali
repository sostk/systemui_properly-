.class Lcom/flyme/systemui/recents/RecentsRemoteService$1;
.super Lcom/flyme/systemui/recents/IRecentsRemoteService$Stub;
.source "RecentsRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsRemoteService;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsRemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsRemoteService;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsRemoteService$1;->this$0:Lcom/flyme/systemui/recents/RecentsRemoteService;

    invoke-direct {p0}, Lcom/flyme/systemui/recents/IRecentsRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public lockPkgTemporarily(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v2, p0, Lcom/flyme/systemui/recents/RecentsRemoteService$1;->this$0:Lcom/flyme/systemui/recents/RecentsRemoteService;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/RecentsRemoteService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {}, Lcom/flyme/systemui/recents/model/LockTaskManager;->getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;

    move-result-object v1

    .line 20
    .local v1, "manager":Lcom/flyme/systemui/recents/model/LockTaskManager;
    if-eqz v1, :cond_1

    .line 21
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 22
    invoke-virtual {v1, p1}, Lcom/flyme/systemui/recents/model/LockTaskManager;->lockAppTemp(Ljava/lang/String;)Z

    .line 29
    :goto_0
    const-string/jumbo v2, "recent.Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockPkgTemporarily -- pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 24
    :cond_0
    invoke-virtual {v1, p1}, Lcom/flyme/systemui/recents/model/LockTaskManager;->unlockAppTemp(Ljava/lang/String;)Z

    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo v2, "recent.Service"

    const-string/jumbo v3, "LockTaskManager == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
