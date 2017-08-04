.class Lcom/android/systemui/volume/VolumePanel$AnimationValue;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationValue"
.end annotation


# instance fields
.field public a:F

.field public r:F

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;

.field public y:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;FFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p2, "r"    # F
    .param p3, "a"    # F
    .param p4, "y"    # F

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->r:F

    .line 977
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->a:F

    .line 978
    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    .line 975
    return-void
.end method
