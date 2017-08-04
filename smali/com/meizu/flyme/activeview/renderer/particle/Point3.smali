.class public Lcom/meizu/flyme/activeview/renderer/particle/Point3;
.super Ljava/lang/Object;
.source "Point3.java"


# instance fields
.field public Px:F

.field public Py:F

.field public Pz:F


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
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Px:F

    .line 10
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Py:F

    .line 11
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Pz:F

    .line 12
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Px:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Py:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Pz:F

    return v0
.end method
