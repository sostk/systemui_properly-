.class public Lcom/android/systemui/volume/VolumePanel$PointF;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointF"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$PointF;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
