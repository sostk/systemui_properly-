.class public Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;
.super Ljava/lang/Object;
.source "SystemParams.java"


# instance fields
.field public isReplaceShooterList:Z

.field public mParticleNum:I

.field public mParticleSize:F

.field public mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->isReplaceShooterList:Z

    .line 15
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "size"    # F

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 8
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->isReplaceShooterList:Z

    .line 38
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleNum:I

    .line 39
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    .line 40
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->isReplaceShooterList:Z

    .line 41
    return-void
.end method

.method public constructor <init>(ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;F)V
    .locals 1
    .param p1, "num"    # I
    .param p2, "list"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .param p3, "size"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->isReplaceShooterList:Z

    .line 25
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleNum:I

    .line 26
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 27
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->isReplaceShooterList:Z

    .line 29
    return-void
.end method
