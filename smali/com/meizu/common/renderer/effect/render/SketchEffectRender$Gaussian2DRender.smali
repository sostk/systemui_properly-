.class Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "SketchEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/SketchEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gaussian2DRender"
.end annotation


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = uStep; \n    vec3 a = vec3(0.0113,0.0838,0.6193); \n    vec3 sum; \n    sum = texture2D(sTexture,  vTexCoord - step).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, -step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, -step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord).rgb * a.z; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + step).rgb * a.x; \n    gl_FragColor.rgb = sum; \n    gl_FragColor.a = 1.0; \n } "


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = uStep; \n    vec3 a = vec3(0.0113,0.0838,0.6193); \n    vec3 sum; \n    sum = texture2D(sTexture,  vTexCoord - step).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, -step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, -step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord).rgb * a.z; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + step).rgb * a.x; \n    gl_FragColor.rgb = sum; \n    gl_FragColor.a = 1.0; \n } "

    .line 138
    return-object v0
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 4
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 143
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 144
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;->mUniformStepH:I

    iget-object v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v1, v1, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iget-object v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v2, v2, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 146
    return-void
.end method
