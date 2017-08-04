.class public Lcom/meizu/media/render/AlphaBlenderRender;
.super Ljava/lang/Object;
.source "AlphaBlenderRender.java"


# static fields
.field public static final TEX_VERTICES1:[F


# instance fields
.field private mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/media/render/AlphaBlenderRender;->TEX_VERTICES1:[F

    .line 8
    return-void

    .line 26
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n\tgl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler1;\nuniform sampler2D tex_sampler2;\nuniform float alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color1 = texture2D(tex_sampler1, v_texcoord);\n  vec4 color2 = texture2D(tex_sampler2, v_texcoord);\n\tgl_FragColor = color1 * (1.0 - alpha) + color2 * alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/render/gles/GLShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    .line 29
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->release()V

    .line 51
    iput-object v1, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    .line 48
    :cond_0
    return-void
.end method

.method public render(Lcom/meizu/media/render/gles/GLTexture;Lcom/meizu/media/render/gles/GLTexture;IIIIF)V
    .locals 5
    .param p1, "srcTexture"    # Lcom/meizu/media/render/gles/GLTexture;
    .param p2, "dstTexture"    # Lcom/meizu/media/render/gles/GLTexture;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "alpha"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->beginScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/meizu/media/render/gles/GLShaderProgram;->setViewport(IIII)V

    .line 37
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "tex_sampler1"

    .line 38
    invoke-virtual {p1}, Lcom/meizu/media/render/gles/GLTexture;->getTexture()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/media/render/gles/GLTexture;->getTarget()I

    move-result v3

    .line 37
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/meizu/media/render/gles/GLShaderProgram;->setRenderTarget(Ljava/lang/String;III)V

    .line 39
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "tex_sampler2"

    .line 40
    invoke-virtual {p2}, Lcom/meizu/media/render/gles/GLTexture;->getTexture()I

    move-result v2

    invoke-virtual {p2}, Lcom/meizu/media/render/gles/GLTexture;->getTarget()I

    move-result v3

    .line 39
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/meizu/media/render/gles/GLShaderProgram;->setRenderTarget(Ljava/lang/String;III)V

    .line 41
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "alpha"

    invoke-virtual {v0, v1, p7}, Lcom/meizu/media/render/gles/GLShaderProgram;->setHostValue(Ljava/lang/String;F)V

    .line 42
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    sget-object v1, Lcom/meizu/media/render/AlphaBlenderRender;->TEX_VERTICES1:[F

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/gles/GLShaderProgram;->setTexVertices([F)V

    .line 43
    iget-object v0, p0, Lcom/meizu/media/render/AlphaBlenderRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->endScene()V

    .line 44
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 34
    :cond_0
    return-void
.end method
