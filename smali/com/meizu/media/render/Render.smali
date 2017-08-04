.class public Lcom/meizu/media/render/Render;
.super Ljava/lang/Object;
.source "Render.java"


# static fields
.field public static final TEX_VERTICES:[F


# instance fields
.field private mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/media/render/Render;->TEX_VERTICES:[F

    .line 6
    return-void

    .line 20
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n\tgl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n\tgl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/render/gles/GLShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    .line 23
    return-void
.end method


# virtual methods
.method public doRender(Lcom/meizu/media/render/gles/GLTexture;IIII[F)V
    .locals 5
    .param p1, "texture"    # Lcom/meizu/media/render/gles/GLTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "texVertices"    # [F

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->beginScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/meizu/media/render/gles/GLShaderProgram;->setViewport(IIII)V

    .line 32
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    if-eqz p6, :cond_1

    .end local p6    # "texVertices":[F
    :goto_0
    invoke-virtual {v0, p6}, Lcom/meizu/media/render/gles/GLShaderProgram;->setTexVertices([F)V

    .line 34
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "tex_sampler"

    .line 35
    invoke-virtual {p1}, Lcom/meizu/media/render/gles/GLTexture;->getTexture()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/media/render/gles/GLTexture;->getTarget()I

    move-result v3

    .line 34
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/meizu/media/render/gles/GLShaderProgram;->setRenderTarget(Ljava/lang/String;III)V

    .line 36
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->endScene()V

    .line 28
    :cond_0
    return-void

    .line 33
    .restart local p6    # "texVertices":[F
    :cond_1
    sget-object p6, Lcom/meizu/media/render/Render;->TEX_VERTICES:[F

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->release()V

    .line 44
    iput-object v1, p0, Lcom/meizu/media/render/Render;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    .line 41
    :cond_0
    return-void
.end method
