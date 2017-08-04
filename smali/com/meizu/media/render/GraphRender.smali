.class public Lcom/meizu/media/render/GraphRender;
.super Ljava/lang/Object;
.source "GraphRender.java"


# instance fields
.field private mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n\tgl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler;\nuniform float alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/render/gles/GLShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    .line 23
    return-void
.end method


# virtual methods
.method public doRender(Lcom/meizu/media/render/gles/GLTexture;IIIIF)V
    .locals 5
    .param p1, "texture"    # Lcom/meizu/media/render/gles/GLTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "alpha"    # F

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->beginScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/meizu/media/render/gles/GLShaderProgram;->setViewport(IIII)V

    .line 32
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "tex_sampler"

    .line 33
    invoke-virtual {p1}, Lcom/meizu/media/render/gles/GLTexture;->getTexture()I

    move-result v2

    invoke-virtual {p1}, Lcom/meizu/media/render/gles/GLTexture;->getTarget()I

    move-result v3

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/meizu/media/render/gles/GLShaderProgram;->setRenderTarget(Ljava/lang/String;III)V

    .line 34
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    const-string/jumbo v1, "alpha"

    invoke-virtual {v0, v1, p6}, Lcom/meizu/media/render/gles/GLShaderProgram;->setHostValue(Ljava/lang/String;F)V

    .line 35
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->endScene()V

    .line 28
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLShaderProgram;->release()V

    .line 43
    iput-object v1, p0, Lcom/meizu/media/render/GraphRender;->mShaderProgram:Lcom/meizu/media/render/gles/GLShaderProgram;

    .line 40
    :cond_0
    return-void
.end method
