.class final Lcom/android/systemui/volume/VolumeUI$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$VolumeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 190
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 161
    return-void
.end method

.method public masterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMasterMuteChanged(I)V

    .line 179
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postLayoutDirection(I)V

    .line 185
    return-void
.end method

.method public volumeChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 167
    return-void
.end method
