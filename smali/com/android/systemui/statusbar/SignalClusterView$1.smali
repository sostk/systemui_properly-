.class Lcom/android/systemui/statusbar/SignalClusterView$1;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-set0(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)V

    .line 165
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
