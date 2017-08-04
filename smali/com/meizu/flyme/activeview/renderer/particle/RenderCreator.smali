.class public Lcom/meizu/flyme/activeview/renderer/particle/RenderCreator;
.super Ljava/lang/Object;
.source "RenderCreator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RenderCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCircleParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;F)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "particleNum"    # I
    .param p2, "shooter"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .param p3, "pointsize"    # F

    .prologue
    .line 30
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IF)V

    .line 31
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    return-object v0
.end method

.method public static createParticleRender(Landroid/content/Context;)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createParticleRender(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;I)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemParams"    # Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 53
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    iget-object v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    if-eqz v1, :cond_0

    .line 56
    packed-switch p2, :pswitch_data_0

    .line 66
    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleNum:I

    iget-object v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    iget v3, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    invoke-static {p0, v1, v2, v3}, Lcom/meizu/flyme/activeview/renderer/particle/RenderCreator;->createSquareParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;F)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    move-result-object v0

    .line 69
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    :goto_0
    return-object v0

    .line 54
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    :cond_0
    return-object v2

    .line 59
    :pswitch_0
    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleNum:I

    iget-object v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    iget v3, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    invoke-static {p0, v1, v2, v3}, Lcom/meizu/flyme/activeview/renderer/particle/RenderCreator;->createCircleParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;F)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    move-result-object v0

    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    goto :goto_0

    .line 63
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    :pswitch_1
    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleNum:I

    iget-object v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    iget v3, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    invoke-static {p0, v1, v2, v3}, Lcom/meizu/flyme/activeview/renderer/particle/RenderCreator;->createSquareParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;F)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    move-result-object v0

    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createParticleRender(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;IF)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemParams"    # Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;
    .param p2, "bitmapID"    # I
    .param p3, "alphaFilter"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 81
    .local v6, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    iget-object v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    if-eqz v0, :cond_0

    .line 84
    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleNum:I

    iget-object v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    iget v4, p1, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    move-object v0, p0

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/meizu/flyme/activeview/renderer/particle/RenderCreator;->createTextureParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IFF)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    move-result-object v6

    .line 85
    .local v6, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    return-object v6

    .line 82
    .local v6, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    :cond_0
    return-object v1
.end method

.method public static createShooter(Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;III)Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .locals 9
    .param p0, "params"    # Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;
    .param p1, "shooterType"    # I
    .param p2, "shooterLineXorY"    # I
    .param p3, "particleNum"    # I

    .prologue
    .line 97
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mDirection:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mColor:I

    iget v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mAngle:F

    iget v5, p0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mSpeed:F

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;-><init>(Lcom/meizu/flyme/activeview/renderer/particle/Point3;Lcom/meizu/flyme/activeview/renderer/particle/Vector3;IFFIII)V

    .line 107
    .local v0, "particleShooter":Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    return-object v0
.end method

.method private static createSquareParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;F)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "particleNum"    # I
    .param p2, "shooter"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .param p3, "pointsize"    # F

    .prologue
    .line 25
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IF)V

    .line 26
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    return-object v0
.end method

.method private static createTextureParticleRender(Landroid/content/Context;ILcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IFF)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "particleNum"    # I
    .param p2, "shooter"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .param p3, "bitmapId"    # I
    .param p4, "pointsize"    # F
    .param p5, "alphaFliter"    # F

    .prologue
    .line 19
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IFF)V

    .line 20
    .local v0, "renderer":Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
    invoke-virtual {v0, p3}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setParticleTexture(I)V

    .line 21
    return-object v0
.end method
