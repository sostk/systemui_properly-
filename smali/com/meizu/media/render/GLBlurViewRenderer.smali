.class public Lcom/meizu/media/render/GLBlurViewRenderer;
.super Ljava/lang/Object;
.source "GLBlurViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;,
        Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;,
        Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;
    }
.end annotation


# static fields
.field public static final TEX_VERTICES:[F

.field public static final TEX_VERTICES2:[F


# instance fields
.field private mAlphaBlenderRender:Lcom/meizu/media/render/AlphaBlenderRender;

.field private mBlurLayer:Lcom/meizu/media/render/BlurLayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentFrame:I

.field private mFrameBuffer:I

.field private mFrameChangeListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

.field private mGraphLayer:Lcom/meizu/media/render/GraphLayer;

.field private mGraphRender:Lcom/meizu/media/render/GraphRender;

.field private mListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;

.field private mOnRenderVisibilityListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

.field private final mQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRender:Lcom/meizu/media/render/Render;

.field private mSceneHeight:I

.field private mSceneWidth:I

.field private mSoftLightLayerComposer:Lcom/meizu/media/render/SoftLightLayerComposer;

.field private mSourceTexture:Lcom/meizu/media/render/gles/GLTexture;

.field private mVisibility:I


# direct methods
.method static synthetic -get0(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/AlphaBlenderRender;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mAlphaBlenderRender:Lcom/meizu/media/render/AlphaBlenderRender;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/BlurLayer;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mBlurLayer:Lcom/meizu/media/render/BlurLayer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/gles/GLTexture;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSourceTexture:Lcom/meizu/media/render/gles/GLTexture;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/media/render/GLBlurViewRenderer;)I
    .locals 1

    iget v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameBuffer:I

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/GraphLayer;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphLayer:Lcom/meizu/media/render/GraphLayer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/GraphRender;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphRender:Lcom/meizu/media/render/GraphRender;

    return-object v0
.end method

.method static synthetic -get6(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/Render;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mRender:Lcom/meizu/media/render/Render;

    return-object v0
.end method

.method static synthetic -get9(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/SoftLightLayerComposer;
    .locals 1

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSoftLightLayerComposer:Lcom/meizu/media/render/SoftLightLayerComposer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/AlphaBlenderRender;)Lcom/meizu/media/render/AlphaBlenderRender;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mAlphaBlenderRender:Lcom/meizu/media/render/AlphaBlenderRender;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/BlurLayer;)Lcom/meizu/media/render/BlurLayer;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mBlurLayer:Lcom/meizu/media/render/BlurLayer;

    return-object p1
.end method

.method static synthetic -set2(Lcom/meizu/media/render/GLBlurViewRenderer;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameBuffer:I

    return p1
.end method

.method static synthetic -set3(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/GraphLayer;)Lcom/meizu/media/render/GraphLayer;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphLayer:Lcom/meizu/media/render/GraphLayer;

    return-object p1
.end method

.method static synthetic -set4(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/GraphRender;)Lcom/meizu/media/render/GraphRender;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphRender:Lcom/meizu/media/render/GraphRender;

    return-object p1
.end method

.method static synthetic -set5(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/Render;)Lcom/meizu/media/render/Render;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mRender:Lcom/meizu/media/render/Render;

    return-object p1
.end method

.method static synthetic -set6(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/SoftLightLayerComposer;)Lcom/meizu/media/render/SoftLightLayerComposer;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSoftLightLayerComposer:Lcom/meizu/media/render/SoftLightLayerComposer;

    return-object p1
.end method

.method static synthetic -set7(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/gles/GLTexture;)Lcom/meizu/media/render/gles/GLTexture;
    .locals 0

    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSourceTexture:Lcom/meizu/media/render/gles/GLTexture;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/media/render/GLBlurViewRenderer;->TEX_VERTICES:[F

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/media/render/GLBlurViewRenderer;->TEX_VERTICES2:[F

    .line 19
    return-void

    .line 56
    nop

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

    .line 58
    :array_1
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    .line 49
    iput v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mCurrentFrame:I

    .line 50
    iput v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mVisibility:I

    .line 62
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method protected doDrawEndFrameCallback()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameChangeListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameChangeListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    invoke-interface {v0}, Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;->onDrawEndFrame()V

    .line 267
    :cond_0
    return-void
.end method

.method protected doDrawFirstFrameCallback()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameChangeListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameChangeListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    invoke-interface {v0}, Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;->onDrawFirstFrame()V

    .line 261
    :cond_0
    return-void
.end method

.method public initRenderer()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 195
    const/4 v11, 0x0

    .line 196
    .local v11, "r":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    .end local v11    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 200
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 202
    :cond_1
    iget v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 203
    return-void

    .line 197
    .restart local v11    # "r":Ljava/lang/Runnable;
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "r":Ljava/lang/Runnable;
    check-cast v11, Ljava/lang/Runnable;

    .local v11, "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 205
    .end local v11    # "r":Ljava/lang/Runnable;
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSourceTexture:Lcom/meizu/media/render/gles/GLTexture;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mRender:Lcom/meizu/media/render/Render;

    if-nez v0, :cond_4

    .line 206
    return-void

    .line 208
    :cond_4
    iget v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mCurrentFrame:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_9

    .line 209
    iget v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mCurrentFrame:I

    if-nez v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mRender:Lcom/meizu/media/render/Render;

    iget-object v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSourceTexture:Lcom/meizu/media/render/gles/GLTexture;

    iget v4, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSceneWidth:I

    .line 211
    iget v5, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSceneHeight:I

    move v3, v2

    .line 210
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/media/render/Render;->doRender(Lcom/meizu/media/render/gles/GLTexture;IIII[F)V

    .line 212
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurViewRenderer;->doDrawFirstFrameCallback()V

    .line 194
    :cond_5
    :goto_1
    return-void

    .line 214
    :cond_6
    const/4 v4, 0x0

    .local v4, "blurTexture":Lcom/meizu/media/render/gles/GLTexture;
    const/4 v5, 0x0

    .line 215
    .local v5, "graphTexture":Lcom/meizu/media/render/gles/GLTexture;
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mBlurLayer:Lcom/meizu/media/render/BlurLayer;

    if-eqz v0, :cond_7

    .line 216
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mBlurLayer:Lcom/meizu/media/render/BlurLayer;

    iget v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mCurrentFrame:I

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/BlurLayer;->render(I)V

    .line 217
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mBlurLayer:Lcom/meizu/media/render/BlurLayer;

    invoke-virtual {v0}, Lcom/meizu/media/render/BlurLayer;->getOutputTexture()Lcom/meizu/media/render/gles/GLTexture;

    move-result-object v4

    .line 219
    .end local v4    # "blurTexture":Lcom/meizu/media/render/gles/GLTexture;
    :cond_7
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphLayer:Lcom/meizu/media/render/GraphLayer;

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphLayer:Lcom/meizu/media/render/GraphLayer;

    iget v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mCurrentFrame:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/GraphLayer;->render(F)V

    .line 221
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mGraphLayer:Lcom/meizu/media/render/GraphLayer;

    invoke-virtual {v0}, Lcom/meizu/media/render/GraphLayer;->getOutputTexture()Lcom/meizu/media/render/gles/GLTexture;

    move-result-object v5

    .line 223
    .end local v5    # "graphTexture":Lcom/meizu/media/render/gles/GLTexture;
    :cond_8
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSoftLightLayerComposer:Lcom/meizu/media/render/SoftLightLayerComposer;

    if-eqz v0, :cond_5

    .line 224
    invoke-static {v2, v2}, Lcom/meizu/media/render/gles/GLES20Utils;->setFramebuffer(II)V

    .line 225
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 226
    iget-object v3, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSoftLightLayerComposer:Lcom/meizu/media/render/SoftLightLayerComposer;

    .line 227
    iget v8, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSceneWidth:I

    iget v9, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSceneHeight:I

    const v10, 0x3dcccccd    # 0.1f

    move v6, v2

    move v7, v2

    .line 226
    invoke-virtual/range {v3 .. v10}, Lcom/meizu/media/render/SoftLightLayerComposer;->render(Lcom/meizu/media/render/gles/GLTexture;Lcom/meizu/media/render/gles/GLTexture;IIIIF)V

    goto :goto_1

    .line 232
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurViewRenderer;->doDrawEndFrameCallback()V

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 238
    iput p2, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSceneWidth:I

    .line 239
    iput p3, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSceneHeight:I

    .line 237
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurViewRenderer;->requestRender()V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public releaseRenderer()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    new-instance v2, Lcom/meizu/media/render/GLBlurViewRenderer$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/render/GLBlurViewRenderer$1;-><init>(Lcom/meizu/media/render/GLBlurViewRenderer;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/meizu/media/render/GLBlurViewRenderer;->requestRender()V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method protected requestRender()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;

    invoke-interface {v0}, Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;->onRequestRender()V

    .line 255
    :cond_0
    return-void
.end method

.method public setOnFrameChangedListener(Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mFrameChangeListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnFrameChangedListener;

    .line 115
    return-void
.end method

.method public setOnRenderListener(Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderListener;

    .line 111
    return-void
.end method

.method public setOnRenderVisibilityListener(Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mOnRenderVisibilityListener:Lcom/meizu/media/render/GLBlurViewRenderer$OnRenderVisibilityListener;

    .line 130
    return-void
.end method

.method public shouldEGLDisplayUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    iget v2, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mVisibility:I

    if-nez v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mSourceTexture:Lcom/meizu/media/render/gles/GLTexture;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/render/GLBlurViewRenderer;->mRender:Lcom/meizu/media/render/Render;

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 287
    goto :goto_0

    :cond_2
    move v0, v1

    .line 286
    goto :goto_0
.end method
