.class public Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;
.super Ljava/lang/Object;
.source "ParticleShooter.java"


# static fields
.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final COLOR_COMPONENT_COUNT:I = 0x3

.field private static final PARTICLE_START_TIME_COMPONENT_COUNT:I = 0x1

.field private static final POSITION_COMPONENT_COUNT:I = 0x3

.field public static final SHOOTER_LINE:I = 0x3

.field public static final SHOOTER_POINT:I = 0x4

.field private static final STRIDE:I = 0x28

.field private static final TOTAL_COMPONENT_COUNT:I = 0xa

.field private static final VECTOR_COMPONENT_COUNT:I = 0x3

.field public static final X_DIRECTION:I = 0x1

.field public static final Y_DIRECTION:I = 0x2


# instance fields
.field private mAngleVariance:F

.field private mColor:I

.field private mCurrentParticleCount:I

.field private mDataOffset:I

.field private mDirectionVector:[F

.field private mMaxParticleCount:I

.field private mNextParticle:I

.field private final mParticles:[F

.field private mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

.field private final mRandom:Ljava/util/Random;

.field private mResultVector:[F

.field private mRotationMatrix:[F

.field private mShooterLineDirection:I

.field private mShooterType:I

.field private mSpeedVariance:F

.field private mVboID:[I

.field private mVertexArrayBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/activeview/renderer/particle/Point3;Lcom/meizu/flyme/activeview/renderer/particle/Vector3;IFFIII)V
    .locals 5
    .param p1, "position"    # Lcom/meizu/flyme/activeview/renderer/particle/Point3;
    .param p2, "direction"    # Lcom/meizu/flyme/activeview/renderer/particle/Vector3;
    .param p3, "color"    # I
    .param p4, "angleVarianceInDegrees"    # F
    .param p5, "speedVariance"    # F
    .param p6, "shooterType"    # I
    .param p7, "shooterLineXorY"    # I
    .param p8, "maxParticleCount"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mNextParticle:I

    .line 32
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mVboID:[I

    .line 36
    iput v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDataOffset:I

    .line 56
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    const/16 v1, 0x10

    .line 57
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRotationMatrix:[F

    .line 58
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    .line 59
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mResultVector:[F

    .line 65
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .line 66
    iput p3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mColor:I

    .line 68
    iput p4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mAngleVariance:F

    .line 69
    iput p5, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mSpeedVariance:F

    .line 70
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    iget v2, p2, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vx:F

    aput v2, v1, v3

    .line 71
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    iget v2, p2, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vy:F

    aput v2, v1, v4

    .line 72
    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    const/4 v2, 0x2

    iget v3, p2, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vz:F

    aput v3, v1, v2

    .line 74
    iput p6, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterType:I

    .line 75
    iput p7, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterLineDirection:I

    .line 78
    mul-int/lit8 v1, p8, 0xa

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    .line 79
    iput p8, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mMaxParticleCount:I

    .line 83
    mul-int/lit8 v1, p8, 0x4

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mVertexArrayBuffer:Ljava/nio/FloatBuffer;

    .line 88
    return-void
.end method


# virtual methods
.method public addParticle(Lcom/meizu/flyme/activeview/renderer/particle/Point3;ILcom/meizu/flyme/activeview/renderer/particle/Vector3;F)V
    .locals 7
    .param p1, "position"    # Lcom/meizu/flyme/activeview/renderer/particle/Point3;
    .param p2, "color"    # I
    .param p3, "direction"    # Lcom/meizu/flyme/activeview/renderer/particle/Vector3;
    .param p4, "particleStartTime"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    .line 132
    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mNextParticle:I

    mul-int/lit8 v2, v3, 0xa

    .line 133
    .local v2, "particleOffset":I
    move v0, v2

    .line 134
    .local v0, "currentOffset":I
    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mNextParticle:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mNextParticle:I

    .line 137
    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mCurrentParticleCount:I

    iget v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mMaxParticleCount:I

    if-lt v3, v4, :cond_0

    .line 140
    :goto_0
    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mNextParticle:I

    iget v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mMaxParticleCount:I

    if-eq v3, v4, :cond_1

    .line 144
    :goto_1
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentOffset":I
    .local v1, "currentOffset":I
    iget v4, p1, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Px:F

    aput v4, v3, v0

    .line 145
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    iget v4, p1, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Py:F

    aput v4, v3, v1

    .line 146
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentOffset":I
    .restart local v1    # "currentOffset":I
    iget v4, p1, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Pz:F

    aput v4, v3, v0

    .line 147
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v1

    .line 148
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentOffset":I
    .restart local v1    # "currentOffset":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v0

    .line 149
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v1

    .line 150
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentOffset":I
    .restart local v1    # "currentOffset":I
    iget v4, p3, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vx:F

    aput v4, v3, v0

    .line 151
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    iget v4, p3, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vy:F

    aput v4, v3, v1

    .line 152
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentOffset":I
    .restart local v1    # "currentOffset":I
    iget v4, p3, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vz:F

    aput v4, v3, v0

    .line 153
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentOffset":I
    .restart local v0    # "currentOffset":I
    aput p4, v3, v1

    .line 155
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mVertexArrayBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mVertexArrayBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mParticles:[F

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v2, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 157
    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mVertexArrayBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    return-void

    .line 138
    :cond_0
    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mCurrentParticleCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mCurrentParticleCount:I

    goto :goto_0

    .line 141
    :cond_1
    iput v6, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mNextParticle:I

    goto :goto_1
.end method

.method public addParticles(FI)V
    .locals 13
    .param p1, "currentTime"    # F
    .param p2, "count"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const v10, 0x3c23d70a    # 0.01f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 91
    .local v6, "i":I
    :goto_0
    if-lt v6, p2, :cond_0

    .line 127
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mAngleVariance:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v9

    iget v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mAngleVariance:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v9

    iget v5, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mAngleVariance:F

    mul-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mResultVector:[F

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRotationMatrix:[F

    iget-object v4, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 105
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mSpeedVariance:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v7, v2, v0

    .line 106
    .local v7, "speedAdjustment":F
    new-instance v8, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mResultVector:[F

    aget v0, v0, v1

    mul-float/2addr v0, v7

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mResultVector:[F

    aget v2, v2, v11

    mul-float/2addr v2, v7

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mResultVector:[F

    aget v3, v3, v12

    mul-float/2addr v3, v7

    invoke-direct {v8, v0, v2, v3}, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;-><init>(FFF)V

    .line 113
    .local v8, "thisDirection":Lcom/meizu/flyme/activeview/renderer/particle/Vector3;
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 125
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    iget v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mColor:I

    invoke-virtual {p0, v0, v2, v8, p1}, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->addParticle(Lcom/meizu/flyme/activeview/renderer/particle/Point3;ILcom/meizu/flyme/activeview/renderer/particle/Vector3;F)V

    .line 91
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterLineDirection:I

    if-eq v0, v11, :cond_3

    .line 119
    :goto_2
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterLineDirection:I

    if-ne v0, v12, :cond_1

    .line 120
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v10

    iput v2, v0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Py:F

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v10

    iput v2, v0, Lcom/meizu/flyme/activeview/renderer/particle/Point3;->Px:F

    goto :goto_2
.end method

.method public getAngleVariance()F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mAngleVariance:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mColor:I

    return v0
.end method

.method public getCurrentParticleCount()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mCurrentParticleCount:I

    return v0
.end method

.method public getDirection()[F
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    return-object v0
.end method

.method public getParticleCount()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mMaxParticleCount:I

    return v0
.end method

.method public getPosition()Lcom/meizu/flyme/activeview/renderer/particle/Point3;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    return-object v0
.end method

.method public getShooterLineType()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterLineDirection:I

    return v0
.end method

.method public getShooterType()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterType:I

    return v0
.end method

.method public getSpeedVariance()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mSpeedVariance:F

    return v0
.end method

.method public getVertexArrayBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mVertexArrayBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public setAngleVariance(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 261
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mAngleVariance:F

    .line 262
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mColor:I

    .line 270
    return-void
.end method

.method public setDirection(Lcom/meizu/flyme/activeview/renderer/particle/Vector3;)V
    .locals 3
    .param p1, "vec"    # Lcom/meizu/flyme/activeview/renderer/particle/Vector3;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vx:F

    aput v2, v0, v1

    .line 286
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vy:F

    aput v2, v0, v1

    .line 287
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mDirectionVector:[F

    const/4 v1, 0x2

    iget v2, p1, Lcom/meizu/flyme/activeview/renderer/particle/Vector3;->Vz:F

    aput v2, v0, v1

    .line 288
    return-void
.end method

.method public setParticleCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mMaxParticleCount:I

    .line 246
    return-void
.end method

.method public setPosition(Lcom/meizu/flyme/activeview/renderer/particle/Point3;)V
    .locals 0
    .param p1, "position"    # Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mPosition:Lcom/meizu/flyme/activeview/renderer/particle/Point3;

    .line 278
    return-void
.end method

.method public setShooterLineType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterLineDirection:I

    .line 305
    return-void
.end method

.method public setShooterType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mShooterType:I

    .line 297
    return-void
.end method

.method public setSpeedVariance(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;->mSpeedVariance:F

    .line 254
    return-void
.end method
