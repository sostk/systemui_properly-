.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 6451
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 0
    .param p1, "clearing"    # Z

    .prologue
    .line 6453
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 1
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 6472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap6(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get32(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6473
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get32(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicController;->supportMusicShow()Z

    move-result v0

    .line 6472
    if-eqz v0, :cond_1

    .line 6474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 6471
    :cond_1
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 6457
    return-void
.end method

.method public onClientPlaybackStateUpdateWithDetails(IIII)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # I
    .param p3, "currentPosMs"    # I
    .param p4, "speed"    # I

    .prologue
    .line 6462
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 6466
    return-void
.end method

.method public onLyricChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 6478
    return-void
.end method
