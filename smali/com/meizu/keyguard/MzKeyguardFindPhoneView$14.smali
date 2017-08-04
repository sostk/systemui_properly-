.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;
.super Ljava/lang/Thread;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateUserName()V
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
    .line 512
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v2, 0x3e9

    .line 515
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v0

    .line 516
    .local v0, "resultCode":I
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get10(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 527
    const-string/jumbo v1, "FindPhone"

    const-string/jumbo v2, "failed to update flymeName and try again after 10000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get10(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-set3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I

    .line 529
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
