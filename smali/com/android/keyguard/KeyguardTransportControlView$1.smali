.class Lcom/android/keyguard/KeyguardTransportControlView$1;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 1
    .param p1, "clearing"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->clearMetadata()V

    .line 103
    :cond_0
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 1
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    .line 138
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->-wrap3(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    .line 110
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->-wrap3(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->-get10(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->-get8(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->-get3(Lcom/android/keyguard/KeyguardTransportControlView;)I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->-wrap0(I)Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->-get10(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :cond_0
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 1
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->-wrap4(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    .line 133
    return-void
.end method
