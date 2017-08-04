.class public abstract Lcom/meizu/common/renderer/effect/render/ShaderRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "ShaderRender.java"


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D sTexture;\nuniform float uAlpha;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTexCoord);\n    gl_FragColor.a *= uAlpha; \n}\n"

.field protected static final OPAQUE_ALPHA:F = 0.95f

.field private static final VERTEX:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * vec4(aPosition,1);\n    vTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st;\n}"


# instance fields
.field protected mAttributePositionH:I

.field protected mAttributeTexCoorH:I

.field protected mCurrentFbo:I

.field protected mIsBlend:Z

.field protected mIsCullFace:Z

.field protected mIsDepthTest:Z

.field protected mIsScissor:Z

.field protected mProgram:I

.field protected mUniformAlphaH:I

.field protected mUniformMVPMatrixH:I

.field protected mUniformSTMatrixH:I

.field protected mUniformTextureH:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    .line 37
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->initProgram()V

    .line 38
    return-void
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 164
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static bindTexture(I)V
    .locals 1
    .param p0, "textureId"    # I

    .prologue
    const v0, 0x84c0

    .line 60
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 61
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    return-void
.end method

.method public static bindTexture(II)V
    .locals 1
    .param p0, "textureId"    # I
    .param p1, "texure"    # I

    .prologue
    .line 55
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 56
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    return-void
.end method

.method public static bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .locals 2
    .param p0, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;

    .prologue
    const v0, 0x84c0

    .line 50
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 51
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getTarget()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    return-void
.end method

.method public static bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V
    .locals 2
    .param p0, "texture"    # Lcom/meizu/common/renderer/effect/texture/Texture;
    .param p1, "texure"    # I

    .prologue
    .line 45
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 46
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getTarget()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 47
    return-void
.end method

.method public static isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 41
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .locals 1
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D sTexture;\nuniform float uAlpha;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTexCoord);\n    gl_FragColor.a *= uAlpha; \n}\n"

    .line 160
    return-object v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * vec4(aPosition,1);\n    vTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st;\n}"

    .line 156
    return-object v0
.end method

.method protected abstract initProgram()V
.end method

.method protected abstract initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
.end method

.method protected onPostDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 4
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/16 v3, 0xc11

    const/16 v2, 0xb71

    const/16 v1, 0xb44

    .line 103
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsCullFace:Z

    if-nez v0, :cond_0

    .line 106
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 109
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsDepthTest:Z

    if-nez v0, :cond_1

    .line 112
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 115
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsScissor:Z

    if-nez v0, :cond_2

    .line 118
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    .line 122
    return-void

    .line 104
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_1

    .line 116
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_2
.end method

.method protected onPreDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 6
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/16 v5, 0xc11

    const/16 v4, 0xbe2

    const/16 v3, 0xb71

    const/16 v2, 0xb44

    .line 65
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->updateViewport(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getFrameBufferId()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mCurrentFbo:I

    const v0, 0x8d40

    .line 68
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mCurrentFbo:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 70
    invoke-static {v4}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsBlend:Z

    .line 71
    invoke-static {v2}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsCullFace:Z

    .line 72
    invoke-static {v3}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsDepthTest:Z

    .line 73
    invoke-static {v5}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsScissor:Z

    .line 75
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->blend:Z

    if-nez v0, :cond_1

    .line 78
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 81
    :goto_0
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->cullFace:Z

    if-nez v0, :cond_2

    .line 84
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 87
    :goto_1
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->depthTest:Z

    if-nez v0, :cond_3

    .line 90
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 93
    :goto_2
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mCurrentFbo:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRootBindingFrameBuffer()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 100
    :cond_0
    :goto_3
    return-void

    .line 76
    :cond_1
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_1

    .line 88
    :cond_3
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_2

    .line 94
    :cond_4
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 96
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->clearFbo:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4100

    .line 97
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    goto :goto_3
.end method

.method public trimResources(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    .line 152
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    .line 147
    iput v3, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    .line 148
    iput-object v2, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mKey:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    goto :goto_0
.end method

.method protected updateViewport(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .locals 6
    .param p1, "drawInfo"    # Lcom/meizu/common/renderer/effect/DrawInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 125
    iget v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 126
    .local v1, "width":I
    iget v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 127
    .local v0, "height":I
    invoke-static {v2, v2, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 128
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->identityViewM()V

    .line 129
    iget-boolean v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/meizu/common/renderer/effect/StateMachine;->orthoM(FFFF)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v3, v4, v5}, Lcom/meizu/common/renderer/effect/StateMachine;->orthoM(FFFF)V

    goto :goto_0
.end method
