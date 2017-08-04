.class public Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;
.super Ljava/lang/Object;
.source "RenderParams.java"


# instance fields
.field public mAlphaFilter:F

.field public mParticleLineShootType:I

.field public mParticleShootType:I

.field public mParticleTextureBitmapID:I

.field public mParticleType:I

.field public mShooterIndex:I

.field public mShooterParams:Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;

.field public mSystemParams:Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;IIFILcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;II)V
    .locals 0
    .param p1, "systemParams"    # Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;
    .param p2, "particleType"    # I
    .param p3, "textureBitmapID"    # I
    .param p4, "alphaFilter"    # F
    .param p5, "shooterIndex"    # I
    .param p6, "shooterparams"    # Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;
    .param p7, "shooterType"    # I
    .param p8, "shooterLineType"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mSystemParams:Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;

    .line 45
    iput-object p6, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterParams:Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;

    .line 46
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleType:I

    .line 47
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleTextureBitmapID:I

    .line 48
    iput p4, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mAlphaFilter:F

    .line 49
    iput p5, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    .line 50
    iput p7, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleShootType:I

    .line 51
    iput p8, p0, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleLineShootType:I

    .line 52
    return-void
.end method
