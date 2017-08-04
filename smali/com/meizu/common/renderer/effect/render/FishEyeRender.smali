.class public Lcom/meizu/common/renderer/effect/render/FishEyeRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "FishEyeRender.java"


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision highp float; \nuniform sampler2D sTexture; \nuniform float uAlpha;\nvarying vec2 vTexCoord; \nuniform vec2 uStep; \nuniform float uInvMaxDist; \nuniform float uF; \nvec3 fisheye() { \n    const float slope = 20.0;               // vignette slope  \n    const float shade = 0.85;               // vignette shading  \n    const float range = 0.6;               // 0.6 - 1.3 \n    const float zoom = 0.3;               // smaller zoom means bigger image \n    vec2 coord = (vTexCoord - 0.5) / uStep; // convert to world coordinate  \n    float dist = length(coord); // distance to the center \n    float lumen = shade / (1.0 + exp((dist * uInvMaxDist - range) * slope)) + (1.0 - shade); \n    float t = zoom*dist/uF; \n    float theta = asin(t)*2.0; \n    float r = uF * tan(theta); \n    float angle = atan(coord.y, coord.x); \n    vec2 newCoord = vec2(cos(angle), sin(angle))*uStep*r+0.5; \n    return texture2D(sTexture, newCoord).rgb;  \n   // return texture2D(sTexture, newCoord).rgb * lumen; \n} \nvoid main() { \n    gl_FragColor.rgb = fisheye(); \n    gl_FragColor.a = texture2D(sTexture,vTexCoord).a*uAlpha; \n}"


# instance fields
.field private mF:F

.field private mInvMaxDist:F

.field private mTexH:I

.field private mTexW:I

.field private mUniformFH:I

.field private mUniformInvMaxDistH:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const-string/jumbo v0, "__fisheye"

    .line 22
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mKey:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private update(II)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/high16 v8, 0x40200000    # 2.5f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x420c0000    # 35.0f

    .line 38
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    if-eq v2, p1, :cond_1

    .line 39
    :cond_0
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    .line 40
    iput p2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    .line 41
    if-gt p1, p2, :cond_2

    move v1, p1

    .line 42
    .local v1, "d":I
    :goto_0
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    iget v3, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    iget v4, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, "L":F
    const/16 v2, 0x438

    .line 43
    if-gt v1, v2, :cond_3

    const/16 v2, 0x2d0

    .line 47
    if-gt v1, v2, :cond_4

    .line 52
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    int-to-float v2, v2

    div-float v2, v6, v2

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepX:F

    .line 53
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    int-to-float v2, v2

    div-float v2, v6, v2

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepY:F

    const/high16 v2, 0x41200000    # 10.0f

    .line 54
    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    .line 57
    div-float/2addr v2, v0

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mInvMaxDist:F

    .line 59
    .end local v0    # "L":F
    .end local v1    # "d":I
    :goto_2
    return-void

    .line 38
    :cond_1
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    if-ne v2, p2, :cond_0

    goto :goto_2

    :cond_2
    move v1, p2

    .line 41
    goto :goto_0

    .line 44
    .restart local v0    # "L":F
    .restart local v1    # "d":I
    :cond_3
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    int-to-float v2, v2

    div-float v2, v8, v2

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepX:F

    .line 45
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    int-to-float v2, v2

    div-float v2, v8, v2

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepY:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 46
    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    goto :goto_1

    .line 48
    :cond_4
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    int-to-float v2, v2

    div-float v2, v7, v2

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepX:F

    .line 49
    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    int-to-float v2, v2

    div-float v2, v7, v2

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepY:F

    const/high16 v2, 0x40e00000    # 7.0f

    .line 50
    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    iput v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    goto :goto_1
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "precision highp float; \nuniform sampler2D sTexture; \nuniform float uAlpha;\nvarying vec2 vTexCoord; \nuniform vec2 uStep; \nuniform float uInvMaxDist; \nuniform float uF; \nvec3 fisheye() { \n    const float slope = 20.0;               // vignette slope  \n    const float shade = 0.85;               // vignette shading  \n    const float range = 0.6;               // 0.6 - 1.3 \n    const float zoom = 0.3;               // smaller zoom means bigger image \n    vec2 coord = (vTexCoord - 0.5) / uStep; // convert to world coordinate  \n    float dist = length(coord); // distance to the center \n    float lumen = shade / (1.0 + exp((dist * uInvMaxDist - range) * slope)) + (1.0 - shade); \n    float t = zoom*dist/uF; \n    float theta = asin(t)*2.0; \n    float r = uF * tan(theta); \n    float angle = atan(coord.y, coord.x); \n    vec2 newCoord = vec2(cos(angle), sin(angle))*uStep*r+0.5; \n    return texture2D(sTexture, newCoord).rgb;  \n   // return texture2D(sTexture, newCoord).rgb * lumen; \n} \nvoid main() { \n    gl_FragColor.rgb = fisheye(); \n    gl_FragColor.a = texture2D(sTexture,vTexCoord).a*uAlpha; \n}"

    .line 27
    return-object v0
.end method

.method protected initProgram()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initProgram()V

    .line 33
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mProgram:I

    const-string/jumbo v1, "uF"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformFH:I

    .line 34
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mProgram:I

    const-string/jumbo v1, "uInvMaxDist"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformInvMaxDistH:I

    .line 35
    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 3
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 64
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v0, v0, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v1, v1, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->update(II)V

    .line 65
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformFH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 66
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformInvMaxDistH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mInvMaxDist:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 67
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformStepH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepX:F

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mStepY:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 68
    return-void
.end method
