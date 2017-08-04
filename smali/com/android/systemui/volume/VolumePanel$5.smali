.class Lcom/android/systemui/volume/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;)V
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
    .line 427
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->-set0(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 430
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get2(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->-get1(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get9(Lcom/android/systemui/volume/VolumePanel;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get9(Lcom/android/systemui/volume/VolumePanel;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->-set2(Lcom/android/systemui/volume/VolumePanel;Z)Z

    .line 436
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-wrap6(Lcom/android/systemui/volume/VolumePanel;)V

    .line 428
    return-void
.end method
