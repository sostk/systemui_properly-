.class abstract Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;
.super Ljava/lang/Thread;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "checkFindPhoneLockClass"
.end annotation


# instance fields
.field private mPasswordStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 777
    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    .line 776
    return-void
.end method


# virtual methods
.method abstract onFindPhoneLockChangedResponse(Lcom/meizu/flyme/service/find/FindPhoneData;)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 782
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v2, v2, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 799
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get6(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->mPasswordStr:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->unLockPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v1

    .line 800
    .local v1, "ret":Lcom/meizu/flyme/service/find/FindPhoneData;
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->updateLimitedTime(Lcom/meizu/flyme/service/find/FindPhoneData;)V

    .line 801
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;

    invoke-direct {v3, p0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;Lcom/meizu/flyme/service/find/FindPhoneData;)V

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->post(Ljava/lang/Runnable;)Z

    .line 807
    const-string/jumbo v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkFindPhone,name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v4}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v1    # "ret":Lcom/meizu/flyme/service/find/FindPhoneData;
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)Z

    .line 810
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 815
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    new-instance v3, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$2;

    invoke-direct {v3, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$2;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;)V

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->post(Ljava/lang/Runnable;)Z

    .line 823
    const-string/jumbo v2, "FindPhone"

    const-string/jumbo v3, "accountName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
