.class public Lcom/meizu/flyme/activeview/renderer/particle/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"


# instance fields
.field public Vx:F

.field public Vy:F

.field public Vz:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vx:F

    .line 10
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vy:F

    .line 11
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vz:F

    .line 12
    return-void
.end method
