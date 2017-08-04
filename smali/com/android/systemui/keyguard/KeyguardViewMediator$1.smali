.class Lcom/android/systemui/keyguard/KeyguardViewMediator$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecurityLock()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string/jumbo v0, "FindPhone"

    const-string/jumbo v1, "KeyguardViewMediator onSecurityLock and update the keyguard view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 360
    return-void

    .line 367
    :cond_0
    const-string/jumbo v0, "FindPhone"

    const-string/jumbo v1, "KeyguardViewMediator onSecurityLock and show the keyguard view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap23(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSecurityUnlock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string/jumbo v0, "FindPhone"

    const-string/jumbo v1, "KeyguardViewMediator onSecurityUnlock and update the keyguard view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/service/find/FindPhoneData;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v5, v2, v3}, Lcom/meizu/flyme/service/find/FindPhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->updateLimitedTime(Lcom/meizu/flyme/service/find/FindPhoneData;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v0

    if-gtz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    .line 382
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 374
    return-void
.end method
