.class public Lcom/flyme/systemui/recents/RecentsRemoteService;
.super Landroid/app/Service;
.source "RecentsRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/RecentsRemoteService$1;
    }
.end annotation


# instance fields
.field final mBinder:Lcom/flyme/systemui/recents/IRecentsRemoteService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    new-instance v0, Lcom/flyme/systemui/recents/RecentsRemoteService$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsRemoteService$1;-><init>(Lcom/flyme/systemui/recents/RecentsRemoteService;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsRemoteService;->mBinder:Lcom/flyme/systemui/recents/IRecentsRemoteService$Stub;

    .line 13
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string/jumbo v0, "recent.Service"

    const-string/jumbo v1, "bind RecentsRemoteService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsRemoteService;->mBinder:Lcom/flyme/systemui/recents/IRecentsRemoteService$Stub;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string/jumbo v0, "recent.Service"

    const-string/jumbo v1, "unbind RecentsRemoteService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x1

    return v0
.end method
