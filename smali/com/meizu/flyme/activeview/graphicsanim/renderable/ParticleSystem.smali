.class public Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;
.super Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;
.source "ParticleSystem.java"


# static fields
.field public static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmapPath"

.field public static final ATTR_COLOR_LIST:Ljava/lang/String; = "colorList"

.field public static final ATTR_PARTICLE_HEIGHT:Ljava/lang/String; = "particleHeight"

.field public static final ATTR_PARTICLE_WIDTH:Ljava/lang/String; = "particleWidth"

.field public static final ATTR_RANDOM_POS_X:Ljava/lang/String; = "randomOutsetX"

.field public static final ATTR_RANDOM_POS_Y:Ljava/lang/String; = "randomOutsetY"

.field public static final ATTR_RANDOM_SPEED_X:Ljava/lang/String; = "randomSpeedX"

.field public static final ATTR_RANDOM_SPEED_Y:Ljava/lang/String; = "randomSpeedY"

.field public static final ATTR_REGION_RADIUS:Ljava/lang/String; = "regionRadius"

.field public static final ATTR_SPEED_X:Ljava/lang/String; = "speedX"

.field public static final ATTR_SPEED_Y:Ljava/lang/String; = "speedY"

.field public static final ATTR_TRANSMIT_CYCLE:Ljava/lang/String; = "transmitCycle"

.field public static final ATTR_TRANSMIT_NUM:Ljava/lang/String; = "transmitNum"

.field public static final ATTR_TYPE:Ljava/lang/String; = "particleType"

.field public static CLASS_NAME:Ljava/lang/String; = null

.field private static final DEFAULT_SIZE:F = 15.0f

.field private static final DURATION:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "ParticleSystem"

.field public static final TYPE_BITMAP:Ljava/lang/String; = "image"

.field public static final TYPE_CIRCLE:Ljava/lang/String; = "circle"

.field public static final TYPE_RECT:Ljava/lang/String; = "rect"


# instance fields
.field private mBitmapPath:Ljava/lang/String;

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mFloatingRegionRadius:F

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mIsDebugDraw:Z

.field private mLastTransmitTime:J

.field private mParticleHeight:F

.field private mParticlePaint:Landroid/graphics/Paint;

.field private mParticleType:Ljava/lang/String;

.field private mParticleWidth:F

.field private mParticles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private mParticlesPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private mRandomMovementChangeInterval:I

.field private mRandomOffsetX:F

.field private mRandomOffsetY:F

.field private mRandomSpeedX:F

.field private mRandomSpeedY:F

.field private mSpeedX:F

.field private mSpeedY:F

.field private mTransmitCycle:I

.field private mTransmitNum:I

.field private mWidthAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;-><init>(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mIsDebugDraw:Z

    const/16 v0, 0x1388

    .line 139
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomMovementChangeInterval:I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlesPool:Ljava/util/List;

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mDrawRect:Landroid/graphics/RectF;

    .line 159
    return-void
.end method

.method private addParticle()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 292
    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitNum:I

    if-lt v0, v4, :cond_0

    .line 306
    return-void

    .line 294
    :cond_0
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mX:F

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetX:F

    neg-float v5, v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetX:F

    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->randomRange(FF)F

    move-result v5

    add-float v2, v4, v5

    .line 295
    .local v2, "x":F
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mY:F

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetY:F

    neg-float v5, v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetY:F

    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->randomRange(FF)F

    move-result v5

    add-float v3, v4, v5

    .line 296
    .local v3, "y":F
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlesPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 301
    new-instance v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;

    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedX:F

    neg-float v4, v4

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedX:F

    invoke-static {v4, v5}, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->randomRange(FF)F

    move-result v4

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedY:F

    neg-float v5, v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedY:F

    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->randomRange(FF)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;-><init>(FFFF)V

    .line 303
    .local v1, "particle":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;
    :goto_1
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "particle":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;
    :cond_1
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlesPool:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;

    .line 298
    .restart local v1    # "particle":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;
    iput v2, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    .line 299
    iput v3, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    goto :goto_1
.end method

.method private calculateParticlePaintColor(Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;)V
    .locals 6
    .param p1, "particle"    # Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;

    .prologue
    .line 329
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    iget v2, p1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->moveDistance:F

    iget v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    div-float v1, v2, v3

    .line 331
    .local v1, "travelDistanceInPercentOfMax":F
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float/2addr v3, v1

    float-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 332
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    .local v0, "color":I
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private calculateParticleSize(Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;)V
    .locals 5
    .param p1, "particle"    # Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;

    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 345
    iget v1, p1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->moveDistance:F

    iget v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    div-float v0, v1, v2

    .line 347
    .local v0, "travelDistanceInPercentOfMax":F
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 351
    iget v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleWidth:F

    iput v1, p1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->width:F

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    .line 358
    iget v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleHeight:F

    iput v1, p1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->height:F

    .line 360
    :goto_1
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mWidthAnimator:Landroid/animation/ValueAnimator;

    mul-float v2, v4, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 349
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->width:F

    goto :goto_0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mHeightAnimator:Landroid/animation/ValueAnimator;

    mul-float v2, v4, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 356
    iget-object v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->height:F

    goto :goto_1
.end method

.method private getAbsoluteDistance(FFFF)F
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 318
    sub-float v2, p1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 319
    .local v0, "deltaX":F
    sub-float v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 320
    .local v1, "deltaY":F
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 225
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 242
    return-void

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;

    .line 227
    .local v1, "p":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->calculateParticlePaintColor(Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;)V

    .line 228
    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->calculateParticleSize(Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;)V

    .line 229
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    iget v4, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    iget v5, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    iget v6, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->width:F

    add-float/2addr v5, v6

    iget v6, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    iget v7, v1, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->height:F

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const-string/jumbo v2, "circle"

    .line 231
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "rect"

    .line 234
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "image"

    .line 236
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 225
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mDrawRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v8, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected init()V
    .locals 3

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v1, 0x42c80000    # 100.0f

    .line 163
    invoke-super {p0}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->init()V

    const/16 v0, 0x64

    .line 165
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitCycle:I

    const/4 v0, 0x1

    .line 166
    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitNum:I

    .line 167
    iput v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    .line 168
    iput v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    .line 169
    iput v1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    const-string/jumbo v0, "rect"

    .line 170
    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    .line 171
    iput v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleWidth:F

    .line 172
    iput v2, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleHeight:F

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlePaint:Landroid/graphics/Paint;

    .line 175
    return-void
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmapPath"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmapPath:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public varargs setColors([I)V
    .locals 4
    .param p1, "colors"    # [I

    .prologue
    const/4 v1, 0x1

    .line 369
    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 371
    array-length v0, p1

    if-gt v0, v1, :cond_1

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 373
    iget-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_0
.end method

.method public setFloatingRegionRadius(F)V
    .locals 0
    .param p1, "floatingRegionRadius"    # F

    .prologue
    .line 467
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    .line 468
    return-void
.end method

.method public varargs setParticleHeight([F)V
    .locals 4
    .param p1, "heights"    # [F

    .prologue
    const/4 v1, 0x1

    .line 397
    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 399
    array-length v0, p1

    if-gt v0, v1, :cond_1

    .line 403
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 398
    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleHeight:F

    goto :goto_0

    .line 400
    :cond_1
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mHeightAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public setParticleType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public varargs setParticleWidth([F)V
    .locals 4
    .param p1, "widths"    # [F

    .prologue
    const/4 v1, 0x1

    .line 383
    array-length v0, p1

    if-eq v0, v1, :cond_0

    .line 385
    array-length v0, p1

    if-gt v0, v1, :cond_1

    .line 389
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 384
    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleWidth:F

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public setRandomOffsetX(F)V
    .locals 0
    .param p1, "randomOffsetX"    # F

    .prologue
    .line 477
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetX:F

    .line 478
    return-void
.end method

.method public setRandomOffsetY(F)V
    .locals 0
    .param p1, "randomOffsetY"    # F

    .prologue
    .line 487
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetY:F

    .line 488
    return-void
.end method

.method public setRandomSpeedX(F)V
    .locals 0
    .param p1, "randomSpeedX"    # F

    .prologue
    .line 420
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedX:F

    .line 421
    return-void
.end method

.method public setRandomSpeedY(F)V
    .locals 0
    .param p1, "randomSpeedY"    # F

    .prologue
    .line 411
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedY:F

    .line 412
    return-void
.end method

.method public setSpeedX(F)V
    .locals 0
    .param p1, "speedX"    # F

    .prologue
    .line 457
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    .line 458
    return-void
.end method

.method public setSpeedY(F)V
    .locals 0
    .param p1, "speedY"    # F

    .prologue
    .line 448
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    .line 449
    return-void
.end method

.method public setTranslationY(Ljava/lang/Float;)V
    .locals 0
    .param p1, "translationY"    # Ljava/lang/Float;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->setTranslationY(Ljava/lang/Float;)V

    .line 118
    return-void
.end method

.method public setTransmitCycle(I)V
    .locals 0
    .param p1, "cycle"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitCycle:I

    .line 431
    return-void
.end method

.method public setTransmitNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitNum:I

    .line 440
    return-void
.end method

.method public update(F)V
    .locals 10
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v4, 0x0

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    .local v0, "currentTimeMillis":J
    iget-wide v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mLastTransmitTime:J

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitCycle:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    .line 248
    iput-wide v0, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mLastTransmitTime:J

    .line 249
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->addParticle()V

    :cond_1
    const/4 v2, 0x0

    .line 251
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 286
    return-void

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;

    .line 253
    .local v3, "particle":Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;
    iget v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    .line 254
    iget v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    iget v5, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->randomSpeedY:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    .line 255
    iget v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    iget v5, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->randomSpeedX:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    .line 256
    iget v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    .line 263
    iget v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->startX:F

    iget v5, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->startY:F

    iget v6, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->x:F

    iget v7, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->getAbsoluteDistance(FFFF)F

    move-result v4

    iput v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->moveDistance:F

    .line 264
    iget v4, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->moveDistance:F

    iget v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 265
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    add-int/lit8 v2, v2, -0x1

    .line 267
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticlesPool:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_3
    iget-boolean v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mIsDebugDraw:Z

    if-nez v4, :cond_5

    .line 251
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_5
    if-nez v2, :cond_4

    const-string/jumbo v4, "ParticleSystem"

    const-string/jumbo v5, "\n\n"

    .line 272
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    const-string/jumbo v5, " ------ particle0 move ----- "

    .line 273
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: deltaTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: mSpeedY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    moveUp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    mul-float/2addr v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: randomSpeedY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->randomSpeedY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    moveY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->randomSpeedY:F

    mul-float/2addr v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: randomSpeedX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->randomSpeedX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    moveX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->randomSpeedX:F

    mul-float/2addr v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: wind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    windMove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    mul-float/2addr v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: mY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    particle.y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Particle;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update particle0: mFloatingRegionRadius: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    const-string/jumbo v5, " ------ particle0 end ----- "

    .line 281
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ParticleSystem"

    const-string/jumbo v5, "\n\n"

    .line 282
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public updateAttributes(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/Renderable;->updateAttributes(Landroid/os/Bundle;)V

    .line 181
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "transmitCycle"

    .line 182
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitCycle:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitCycle:I

    const-string/jumbo v3, "transmitNum"

    .line 183
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitNum:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mTransmitNum:I

    const-string/jumbo v3, "speedY"

    .line 185
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedY:F

    const-string/jumbo v3, "speedX"

    .line 186
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mSpeedX:F

    const-string/jumbo v3, "randomOutsetX"

    .line 188
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetX:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetX:F

    const-string/jumbo v3, "randomOutsetY"

    .line 189
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetY:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetY:F

    const-string/jumbo v3, "randomSpeedX"

    .line 191
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedX:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedX:F

    const-string/jumbo v3, "randomSpeedY"

    .line 192
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomOffsetY:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mRandomSpeedY:F

    const-string/jumbo v3, "regionRadius"

    .line 194
    iget v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mFloatingRegionRadius:F

    const-string/jumbo v3, "particleType"

    .line 196
    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mParticleType:Ljava/lang/String;

    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    const-string/jumbo v3, "colorList"

    .line 206
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 207
    .local v0, "colors":[I
    if-nez v0, :cond_5

    :goto_2
    const-string/jumbo v3, "particleWidth"

    .line 211
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    .line 212
    .local v2, "particleWidths":[F
    if-nez v2, :cond_6

    :goto_3
    const-string/jumbo v3, "particleHeight"

    .line 216
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 217
    .local v1, "particleHeights":[F
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->setParticleHeight([F)V

    goto/16 :goto_0

    .end local v0    # "colors":[I
    .end local v1    # "particleHeights":[F
    .end local v2    # "particleWidths":[F
    :cond_2
    const-string/jumbo v3, "bitmapPath"

    .line 198
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmapPath:Ljava/lang/String;

    .line 199
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmapPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v3, "ParticleSystem"

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not found bitmap file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmapPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmapPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 208
    .restart local v0    # "colors":[I
    :cond_5
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->setColors([I)V

    goto :goto_2

    .line 213
    .restart local v2    # "particleWidths":[F
    :cond_6
    invoke-virtual {p0, v2}, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->setParticleWidth([F)V

    goto :goto_3
.end method
