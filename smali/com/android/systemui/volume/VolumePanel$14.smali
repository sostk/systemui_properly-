.class Lcom/android/systemui/volume/VolumePanel$14;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V
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
    .line 1557
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$14;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$14;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->-set3(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 1563
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$14;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->-get8(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1565
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$14;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->-get8(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v2

    add-int/lit16 v2, v2, -0xc8

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->-set3(Lcom/android/systemui/volume/VolumePanel;I)I

    goto :goto_0

    .line 1566
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1572
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$14;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->-wrap0(Lcom/android/systemui/volume/VolumePanel;J)V

    .line 1560
    return-void
.end method
