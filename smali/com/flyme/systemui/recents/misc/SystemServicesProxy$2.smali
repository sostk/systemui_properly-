.class Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskById(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p2, "val$taskId"    # I
    .param p3, "val$pkgName"    # Ljava/lang/String;
    .param p4, "val$context"    # Landroid/content/Context;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iput p2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$taskId:I

    iput-object p3, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 320
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$taskId:I

    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap3(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap0(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->-wrap2(Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;Z)V

    .line 323
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->val$pkgName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->killProcessPolicyByPkgName(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 317
    return-void

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    iget-object v1, p0, Lcom/flyme/systemui/recents/misc/SystemServicesProxy$2;->this$0:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, v1, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->sWhiteListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 325
    throw v0
.end method
