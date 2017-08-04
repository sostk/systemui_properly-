.class Lcom/android/systemui/volume/VolumePanel$8;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->createSliders()V
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
    .line 763
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 767
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2, p1}, Lcom/android/systemui/volume/VolumePanel;->-set1(Lcom/android/systemui/volume/VolumePanel;Landroid/view/View;)Landroid/view/View;

    .line 768
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->-get4(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 769
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->-get5(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumePanel;->-set2(Lcom/android/systemui/volume/VolumePanel;Z)Z

    .line 771
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-wrap6(Lcom/android/systemui/volume/VolumePanel;)V

    .line 773
    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->-wrap1(Lcom/android/systemui/volume/VolumePanel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 776
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-wrap2(Lcom/android/systemui/volume/VolumePanel;)V

    .line 766
    return-void

    :cond_0
    move v0, v1

    .line 769
    goto :goto_0

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
