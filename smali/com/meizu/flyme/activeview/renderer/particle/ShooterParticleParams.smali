.class public Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;
.super Ljava/lang/Object;
.source "ShooterParticleParams.java"


# instance fields
.field public mAngle:F

.field public mColor:I

.field public mDirection:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

.field public mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

.field public mSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/meizu/flyme/activeview/renderer/particle/Point3;Lcom/meizu/flyme/activeview/renderer/particle/Vector3;FFI)V
    .locals 0
    .param p1, "position"    # Lcom/meizu/flyme/activeview/renderer/particle/Point3;
    .param p2, "direction"    # Lcom/meizu/flyme/activeview/renderer/particle/Vector3;
    .param p3, "angle"    # F
    .param p4, "speed"    # F
    .param p5, "color"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .line 21
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mDirection:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    .line 22
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mAngle:F

    .line 23
    iput p4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mSpeed:F

    .line 24
    iput p5, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mColor:I

    .line 26
    return-void
.end method
