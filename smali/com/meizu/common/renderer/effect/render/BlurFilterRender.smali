.class public Lcom/meizu/common/renderer/effect/render/BlurFilterRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "BlurFilterRender.java"


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D sTexture2;\nuniform int uHasTexture;\nuniform float uAlpha;\nuniform float uIntensity;\nuniform vec4 uFilterColor;\nvarying vec2 vTexCoord; \nvoid main() { \n    if (uHasTexture == 1) {\n        vec3 color = (texture2D(sTexture,  vTexCoord).rgb*uAlpha +\n                     texture2D(sTexture2, vTexCoord).rgb*(1.0-uAlpha)); \n        gl_FragColor.rgb = (uFilterColor.rgb*uFilterColor.a + color*(1.0-uFilterColor.a))*uIntensity;\n        gl_FragColor.a = 1.0; \n     } else {        vec3 color = texture2D(sTexture,  vTexCoord).rgb;\n        gl_FragColor.rgb = (uFilterColor.rgb*uFilterColor.a + color*(1.0-uFilterColor.a))*uIntensity;\n        gl_FragColor.a = uAlpha;\n     }\n}\n"

.field public static final KEY:Ljava/lang/String; = "blur_filter"


# instance fields
.field private mFilterColor:I

.field private mIntensity:F

.field private mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

.field private mUniformFilterColor:I

.field private mUniformHasTexture:I

.field private mUniformIntensityH:I

.field private mUniformTextureH2:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mIntensity:F

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    const-string/jumbo v0, "blur_filter"

    .line 35
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mKey:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static getInstace(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/BlurFilterRender;
    .locals 2
    .param p0, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const-string/jumbo v1, "blur_filter"

    .line 25
    invoke-interface {p0, v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    .line 26
    .local v0, "render":Lcom/meizu/common/renderer/effect/render/Render;
    if-eqz v0, :cond_0

    .line 30
    :goto_0
    check-cast v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;

    .end local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    return-object v0

    .line 27
    .restart local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    :cond_0
    new-instance v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;

    .end local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    invoke-direct {v0, p0}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 28
    .restart local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    goto :goto_0
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D sTexture2;\nuniform int uHasTexture;\nuniform float uAlpha;\nuniform float uIntensity;\nuniform vec4 uFilterColor;\nvarying vec2 vTexCoord; \nvoid main() { \n    if (uHasTexture == 1) {\n        vec3 color = (texture2D(sTexture,  vTexCoord).rgb*uAlpha +\n                     texture2D(sTexture2, vTexCoord).rgb*(1.0-uAlpha)); \n        gl_FragColor.rgb = (uFilterColor.rgb*uFilterColor.a + color*(1.0-uFilterColor.a))*uIntensity;\n        gl_FragColor.a = 1.0; \n     } else {        vec3 color = texture2D(sTexture,  vTexCoord).rgb;\n        gl_FragColor.rgb = (uFilterColor.rgb*uFilterColor.a + color*(1.0-uFilterColor.a))*uIntensity;\n        gl_FragColor.a = uAlpha;\n     }\n}\n"

    .line 80
    return-object v0
.end method

.method protected initProgram()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initProgram()V

    .line 41
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mProgram:I

    const-string/jumbo v1, "uFilterColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformFilterColor:I

    .line 42
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mProgram:I

    const-string/jumbo v1, "uIntensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformIntensityH:I

    .line 43
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mProgram:I

    const-string/jumbo v1, "sTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformTextureH2:I

    .line 44
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mProgram:I

    const-string/jumbo v1, "uHasTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformHasTexture:I

    .line 45
    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 7
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    .line 61
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 62
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformFilterColor:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 63
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 64
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 65
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 66
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 62
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 67
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformIntensityH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mIntensity:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 68
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformTextureH2:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 70
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-nez v0, :cond_0

    .line 74
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformHasTexture:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformHasTexture:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 72
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const v1, 0x84c1

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    goto :goto_0
.end method

.method public setFilterColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 49
    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .param p1, "intensity"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mIntensity:F

    .line 53
    return-void
.end method

.method public setOrigTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 57
    return-void
.end method
