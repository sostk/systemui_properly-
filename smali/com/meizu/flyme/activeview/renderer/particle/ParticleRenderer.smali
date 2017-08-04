.class public Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;
.super Ljava/lang/Object;
.source "ParticleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field protected static final DEFAULT_ALPHA_FILTER:F = 0.5f

.field protected static final DEFAULT_BITMAP_ID:I

.field protected static final DEFAULT_PARTICLE_COLOR:I = -0xff0100

.field protected static final DEFAULT_PARTICLE_NUM:I = 0x2710

.field protected static final DEFAULT_PARTICLE_TYPE:I = 0x1

.field protected static final DEFAULT_POINT_SIZE:F = 30.0f

.field protected static final DEFAULT_SHOOTER_ANGLE:F = 20.0f

.field protected static final DEFAULT_SHOOTER_DIRECTION:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

.field protected static final DEFAULT_SHOOTER_LINE_AXIELS:I = 0x1

.field protected static final DEFAULT_SHOOTER_POSITION:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

.field protected static final DEFAULT_SHOOTER_SPEED:F = 10.0f

.field protected static final DEFAULT_SHOOTER_TYPE:I = 0x3

.field public static final TYPE_CIRCLE_PARTICLE:I = 0x3

.field public static final TYPE_SQUARE_PARTICLE:I = 0x2

.field public static final TYPE_TEXTURE_PARTICLE:I = 0x1


# instance fields
.field private mAlphaFilter:F

.field private mContext:Landroid/content/Context;

.field private mGlobalStartTime:J

.field private mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

.field private mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

.field private mParticleType:I

.field private mPointSize:F

.field private final mProjectionMatrix:[F

.field private mTexture:I

.field private mTextureBitmapID:I

.field private final mViewMatrix:[F

.field private final mViewProjectionMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    invoke-direct {v0, v2, v2, v2}, Lcom/meizu/flyme/activeview/renderer/particle/Point3;-><init>(FFF)V

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->DEFAULT_SHOOTER_POSITION:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .line 35
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->DEFAULT_SHOOTER_DIRECTION:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    .line 47
    sget v0, Lcom/meizu/flyme/activeview/R$drawable;->smoke_gray:I

    sput v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->DEFAULT_BITMAP_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/16 v2, 0x10

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mProjectionMatrix:[F

    .line 61
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mViewMatrix:[F

    .line 62
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mViewProjectionMatrix:[F

    .line 107
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 108
    iput v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mPointSize:F

    .line 109
    iput v7, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 110
    iput v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mAlphaFilter:F

    .line 111
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    sget-object v1, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->DEFAULT_SHOOTER_POSITION:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    sget-object v2, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->DEFAULT_SHOOTER_DIRECTION:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    const v3, -0xff0100

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x3

    const/16 v8, 0x2710

    invoke-direct/range {v0 .. v8}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;-><init>(Lcom/meizu/flyme/activeview/renderer/particle/Point3;Lcom/meizu/flyme/activeview/renderer/particle/Vector3;IFFIII)V

    .line 120
    .local v0, "shooter":Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 121
    sget v1, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->DEFAULT_BITMAP_ID:I

    iput v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mTextureBitmapID:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shooterSet"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .param p3, "type"    # I
    .param p4, "pointSize"    # F

    .prologue
    const/16 v1, 0x10

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mProjectionMatrix:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mViewMatrix:[F

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mViewProjectionMatrix:[F

    .line 96
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 98
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    .line 99
    iput p4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mPointSize:F

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;IFF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shooterSet"    # Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
    .param p3, "type"    # I
    .param p4, "pointSize"    # F
    .param p5, "alphaFilter"    # F

    .prologue
    const/16 v1, 0x10

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mProjectionMatrix:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mViewMatrix:[F

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mViewProjectionMatrix:[F

    .line 81
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    .line 83
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    .line 84
    iput p4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mPointSize:F

    .line 85
    iput p5, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mAlphaFilter:F

    .line 86
    return-void
.end method

.method private drawFun()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mGlobalStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v2

    .line 148
    .local v0, "currentTime":F
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->useProgram()V

    .line 150
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->setParticleTypeUniforms(F)V

    .line 152
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v1, v0, v6}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->addParticles(FI)V

    .line 153
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->bindData(Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;)V

    .line 154
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->draw(Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;)V

    .line 157
    iget v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    if-eq v1, v6, :cond_0

    .line 161
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->setUniforms(F)V

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mPointSize:F

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->setPointSize(F)V

    .line 165
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->setUniforms(F)V

    .line 159
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mAlphaFilter:F

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->setAlphaFilter(F)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaFilter()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mAlphaFilter:F

    return v0
.end method

.method public getParticleAngle(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getAngleVariance()F

    move-result v0

    return v0
.end method

.method public getParticleColor(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getColor()I

    move-result v0

    return v0
.end method

.method public getParticleSpeed(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getSpeedVariance()F

    move-result v0

    return v0
.end method

.method public getParticleType()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    return v0
.end method

.method public getPointSize()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mPointSize:F

    return v0
.end method

.method public getShooterDirection(I)[F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getDirection()[F

    move-result-object v0

    return-object v0
.end method

.method public getShooterLineType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getShooterLineType()I

    move-result v0

    return v0
.end method

.method public getShooterPosition(I)[F
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 389
    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getPosition()Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    move-result-object v0

    .local v0, "point3":Lcom/meizu/flyme/activeview/renderer/particle/Point3;
    const/4 v2, 0x3

    .line 390
    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, v0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Px:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Py:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Pz:F

    aput v3, v1, v2

    .line 395
    .local v1, "result":[F
    return-object v1
.end method

.method public getShooterType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->getShooterType()I

    move-result v0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v0, 0x4000

    .line 169
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 170
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->drawFun()V

    .line 171
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 142
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->getEngine()Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->perspectiveCamera(FFFF)V

    .line 143
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->getEngine()Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40400000    # -1.5f

    const/high16 v3, -0x3f600000    # -5.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->translate(FFF)V

    .line 144
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 126
    new-instance v2, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    .line 127
    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->getEngine()Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->setBackgroundColor(FFFF)V

    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mGlobalStartTime:J

    .line 129
    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    if-eq v2, v6, :cond_0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->getEngine()Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;

    move-result-object v2

    invoke-virtual {v2, v6, v5, v5}, Lcom/meizu/flyme/activeview/renderer/particle/EngineGL;->setBlend(ZII)V

    .line 137
    return-void

    .line 130
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 132
    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mTextureBitmapID:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->useProgram()V

    .line 134
    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleProgram:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;

    invoke-virtual {v2, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShaderProgram;->setMaterial(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setAlphaFilter(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 210
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mAlphaFilter:F

    .line 211
    return-void
.end method

.method public setParticleAngle(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "angle"    # F

    .prologue
    .line 338
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setAngleVariance(F)V

    .line 339
    return-void
.end method

.method public setParticleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setColor(I)V

    .line 298
    return-void
.end method

.method public setParticleParams(Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;)V
    .locals 2
    .param p1, "params"    # Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;

    .prologue
    const/4 v1, 0x1

    .line 179
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mSystemParams:Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mParticleSize:F

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setPointSize(F)V

    .line 182
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleType:I

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setParticleType(I)V

    .line 183
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleType:I

    if-eq v0, v1, :cond_1

    .line 187
    :goto_1
    iget-object v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mSystemParams:Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;

    iget-boolean v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->isReplaceShooterList:Z

    if-eq v0, v1, :cond_2

    .line 190
    :goto_2
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    iget-object v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterParams:Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;

    iget-object v1, v1, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mDirection:Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setShooterDirection(ILcom/meizu/flyme/activeview/renderer/particle/Vector3;)V

    .line 191
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    iget-object v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterParams:Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;

    iget-object v1, v1, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setShooterPosition(ILcom/meizu/flyme/activeview/renderer/particle/Point3;)V

    .line 192
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setParticleSpeed(IF)V

    .line 193
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    iget-object v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterParams:Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;

    iget v1, v1, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mAngle:F

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setParticleAngle(IF)V

    .line 194
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleShootType:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setShooterType(II)V

    .line 195
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleShootType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 198
    :goto_3
    iget-object v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterParams:Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;

    iget v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/ShooterParticleParams;->mColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setParticleColor(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleTextureBitmapID:I

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setParticleTexture(I)V

    .line 185
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mAlphaFilter:F

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setAlphaFilter(F)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mSystemParams:Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/renderer/particle/SystemParams;->mShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    goto :goto_2

    .line 196
    :cond_3
    iget v0, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mShooterIndex:I

    iget v1, p1, Lcom/meizu/flyme/activeview/renderer/particle/RenderParams;->mParticleLineShootType:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->setShooterLineType(II)V

    goto :goto_3
.end method

.method public setParticleSpeed(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "speed"    # F

    .prologue
    .line 317
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setSpeedVariance(F)V

    .line 318
    return-void
.end method

.method public setParticleTexture(I)V
    .locals 0
    .param p1, "resID"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mTextureBitmapID:I

    .line 229
    return-void
.end method

.method public setParticleType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 238
    if-ne p1, v0, :cond_1

    .line 242
    :cond_0
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleType:I

    .line 243
    return-void

    :cond_1
    const/4 v0, 0x3

    .line 238
    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 240
    return-void
.end method

.method public setPointSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 260
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mPointSize:F

    .line 261
    return-void
.end method

.method public setShooterDirection(ILcom/meizu/flyme/activeview/renderer/particle/Vector3;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "vec"    # Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setDirection(Lcom/meizu/flyme/activeview/renderer/particle/Vector3;)V

    .line 359
    return-void
.end method

.method public setShooterLineType(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 428
    if-eq p2, v0, :cond_1

    .line 429
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    .line 428
    if-ne p2, v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setShooterLineType(I)V

    .line 432
    return-void
.end method

.method public setShooterPosition(ILcom/meizu/flyme/activeview/renderer/particle/Point3;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "point3"    # Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setPosition(Lcom/meizu/flyme/activeview/renderer/particle/Point3;)V

    .line 379
    return-void
.end method

.method public setShooterType(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x3

    .line 405
    if-eq p2, v0, :cond_1

    .line 406
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    .line 405
    if-ne p2, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;->mParticleShooter:Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->setShooterType(I)V

    .line 409
    return-void
.end method
