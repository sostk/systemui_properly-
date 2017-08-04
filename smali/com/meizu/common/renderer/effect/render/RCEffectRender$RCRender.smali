.class Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "RCEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/RCEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RCRender"
.end annotation


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision highp float;   \nvarying vec2 vTexCoord;   \nuniform float uAlpha;\nuniform sampler2D sTexture; \nuniform vec2 uStep; \nuniform float uRadius;\nbool isInRoundRect(float x, float y, float width, float height, float radius) { \n    if (x < radius && y < radius) { \n        return sqrt((x-radius)*(x-radius) + (y-radius)*(y-radius)) <= radius;\n    } else if ( x > (width - radius) && y < radius) { \n        return sqrt((x-(width - radius))*(x-(width - radius)) + (y-radius)*(y-radius)) <= radius;\n    } else if (x < radius && y > (height - radius)) { \n        return sqrt((x-radius)*(x-radius) + (y-(height - radius))*(y-(height - radius))) <= radius; \n    } else if (x > (width - radius) && y > (height - radius)) { \n        return sqrt((x-(width - radius))*(x-(width - radius)) + (y-(height - radius))*(y-(height - radius))) <= radius; \n    } else {\n        return true; \n    }\n    return true;\n} \nvoid main()  \n{   \n    if (!isInRoundRect(vTexCoord.x*uStep.x, vTexCoord.y*uStep.y, uStep.x, uStep.y, uRadius)) {        discard; \n        return; \n    }\n    gl_FragColor = texture2D(sTexture, vTexCoord); \n    gl_FragColor.a *= uAlpha;\n} \n"


# instance fields
.field private mRadius:F

.field protected mUniformRadius:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 79
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mRadius:F

    const-string/jumbo v0, "__none"

    .line 82
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mKey:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "precision highp float;   \nvarying vec2 vTexCoord;   \nuniform float uAlpha;\nuniform sampler2D sTexture; \nuniform vec2 uStep; \nuniform float uRadius;\nbool isInRoundRect(float x, float y, float width, float height, float radius) { \n    if (x < radius && y < radius) { \n        return sqrt((x-radius)*(x-radius) + (y-radius)*(y-radius)) <= radius;\n    } else if ( x > (width - radius) && y < radius) { \n        return sqrt((x-(width - radius))*(x-(width - radius)) + (y-radius)*(y-radius)) <= radius;\n    } else if (x < radius && y > (height - radius)) { \n        return sqrt((x-radius)*(x-radius) + (y-(height - radius))*(y-(height - radius))) <= radius; \n    } else if (x > (width - radius) && y > (height - radius)) { \n        return sqrt((x-(width - radius))*(x-(width - radius)) + (y-(height - radius))*(y-(height - radius))) <= radius; \n    } else {\n        return true; \n    }\n    return true;\n} \nvoid main()  \n{   \n    if (!isInRoundRect(vTexCoord.x*uStep.x, vTexCoord.y*uStep.y, uStep.x, uStep.y, uRadius)) {        discard; \n        return; \n    }\n    gl_FragColor = texture2D(sTexture, vTexCoord); \n    gl_FragColor.a *= uAlpha;\n} \n"

    .line 87
    return-object v0
.end method

.method protected initProgram()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initProgram()V

    .line 93
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mProgram:I

    const-string/jumbo v1, "uRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mUniformRadius:I

    .line 94
    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 3
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 103
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mUniformStepH:I

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v1, v1, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v1, v1

    iget-object v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v2, v2, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 104
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mUniformRadius:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mRadius:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 105
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/RCEffectRender$RCRender;->mRadius:F

    .line 98
    return-void
.end method
