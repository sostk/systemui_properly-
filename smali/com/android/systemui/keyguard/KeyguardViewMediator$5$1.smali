.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1525
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0
.end method
