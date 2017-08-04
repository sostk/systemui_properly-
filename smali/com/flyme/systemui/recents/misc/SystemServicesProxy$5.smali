.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->initWhiteList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 815
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 816
    .local v1, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;

    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;-><init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 849
    :try_start_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 857
    const-string/jumbo v0, "recents.Proxy"

    const-string/jumbo v1, "ServiceConnection onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method
