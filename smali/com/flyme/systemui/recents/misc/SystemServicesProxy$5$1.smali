.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;
.super Landroid/os/Handler;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iput-object p2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 820
    :try_start_0
    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 821
    sget-object v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 822
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 823
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v6, "exclude"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "exclude":[Ljava/lang/String;
    const-string/jumbo v6, "white_list"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "wl":[Ljava/lang/String;
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v1, v6

    .line 826
    .local v2, "s":Ljava/lang/String;
    sget-object v8, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 828
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "user-exclude "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v4, v5

    .line 831
    .restart local v2    # "s":Ljava/lang/String;
    sget-object v7, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 834
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "recents.Proxy"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->mWhiteListLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 838
    const-string/jumbo v5, "recents.Proxy"

    const-string/jumbo v6, "WhiteList writeLock unlock after data init"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->conn:Landroid/content/ServiceConnection;

    if-eqz v5, :cond_2

    .line 841
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 842
    iget-object v5, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v5, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iput-object v9, v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->conn:Landroid/content/ServiceConnection;

    .line 818
    :goto_2
    return-void

    .line 836
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "exclude":[Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "wl":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 837
    iget-object v6, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5$1;->this$1:Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, v6, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 838
    const-string/jumbo v6, "recents.Proxy"

    const-string/jumbo v7, "WhiteList writeLock unlock after data init"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    throw v5

    .line 844
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v1    # "exclude":[Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "wl":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "recents.Proxy"

    const-string/jumbo v6, "ServiceConnection is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
