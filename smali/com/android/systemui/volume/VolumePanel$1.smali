.class Lcom/android/systemui/volume/VolumePanel$1;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1914
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1915
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1916
    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1917
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/systemui/volume/VolumePanel;->-wrap8(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1918
    if-eqz p3, :cond_0

    .line 1919
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    .line 1920
    const v3, 0x100011

    .line 1919
    invoke-static {v2, v0, p2, v3}, Lcom/android/systemui/volume/VolumePanel;->-wrap3(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    .line 1921
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v2, v3, p2}, Lcom/android/systemui/volume/VolumePanel;->-wrap7(Lcom/android/systemui/volume/VolumePanel;II)V

    .line 1924
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->-wrap2(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1913
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1928
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1932
    return-void
.end method
