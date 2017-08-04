.class Lcom/android/systemui/volume/VolumePanel$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
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
    .line 1026
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get4(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get5(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-wrap5(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1029
    :cond_0
    return-void
.end method
