.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->dealWithSpecailMusic(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p2, "val$pkgName"    # Ljava/lang/String;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 921
    move-object v1, p0

    .line 923
    .local v1, "myConn":Landroid/content/ServiceConnection;
    :try_start_0
    invoke-static {p2}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/media/music/support/IMusicSupportService;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/media/music/support/IMusicSupportService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 924
    const-string/jumbo v2, "recents.Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is music do-noting while playing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 920
    return-void

    .line 926
    :cond_0
    :try_start_1
    const-string/jumbo v2, "recents.Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is music and kill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, v2, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$6;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 934
    return-void
.end method
