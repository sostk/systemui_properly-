.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/16 v3, 0x3ea

    .line 717
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 718
    :try_start_0
    const-string/jumbo v0, "FindPhone"

    const-string/jumbo v2, "mFindPhoneConnection.onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {p2}, Lcom/meizu/flyme/service/find/IPhoneLocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Lcom/meizu/flyme/service/find/IPhoneLocationService;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 721
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Lcom/meizu/flyme/service/find/IPhoneLocationService;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    .line 729
    const-string/jumbo v0, "FindPhone"

    const-string/jumbo v2, "onServiceDisconnected for photo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 726
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
