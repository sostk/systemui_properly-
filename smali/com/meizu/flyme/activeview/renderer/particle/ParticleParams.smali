.class public Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;
.super Ljava/lang/Object;
.source "ParticleParams.java"


# instance fields
.field public mAlphaFilter:F

.field public mParticleLineShootType:I

.field public mParticleNum:I

.field public mParticleShootAngel:F

.field public mParticleShootType:I

.field public mParticleShooterDirection:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

.field public mParticleShooterPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

.field public mParticleSize:F

.field public mParticleSpeed:F

.field public mParticleTextureBitmapID:I

.field public mParticleType:I

.field public mPartileColor:I

.field public mShooterIndex:I


# direct methods
.method public constructor <init>(IIFIFI[F[FFFIII)V
    .locals 5
    .param p1, "particleNum"    # I
    .param p2, "particleType"    # I
    .param p3, "particleSize"    # F
    .param p4, "textureBitmapID"    # I
    .param p5, "alphaFilter"    # F
    .param p6, "shooterIndex"    # I
    .param p7, "shooterDirection"    # [F
    .param p8, "shooterPosition"    # [F
    .param p9, "speed"    # F
    .param p10, "angle"    # F
    .param p11, "shooterType"    # I
    .param p12, "shooterLineType"    # I
    .param p13, "color"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleNum:I

    .line 54
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleType:I

    .line 55
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleSize:F

    .line 56
    iput p4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleTextureBitmapID:I

    .line 57
    iput p5, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mAlphaFilter:F

    .line 58
    iput p6, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mShooterIndex:I

    .line 59
    new-instance v1, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    const/4 v2, 0x0

    aget v2, p7, v2

    const/4 v3, 0x1

    aget v3, p7, v3

    const/4 v4, 0x2

    aget v4, p7, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;-><init>(FFF)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleShooterDirection:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    .line 60
    new-instance v1, Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    const/4 v2, 0x0

    aget v2, p8, v2

    const/4 v3, 0x1

    aget v3, p8, v3

    const/4 v4, 0x2

    aget v4, p8, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/flyme/activeview/renderer/particle/Point3;-><init>(FFF)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleShooterPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .line 61
    iput p9, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleSpeed:F

    .line 62
    iput p10, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleShootAngel:F

    .line 63
    move/from16 v0, p11

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleShootType:I

    .line 64
    move/from16 v0, p12

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mParticleLineShootType:I

    .line 65
    move/from16 v0, p13

    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleParams;->mPartileColor:I

    .line 68
    return-void
.end method
