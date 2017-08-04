.class public Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;
.super Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;
.source "GLRendererImpl.java"


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private tle:Lcom/meizu/flyme/activeview/renderer/utils/Triangle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vertes"    # Ljava/lang/String;
    .param p3, "frag"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x320

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mWidth:I

    .line 12
    iput v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mHeight:I

    .line 20
    return-void
.end method

.method private drawFun()V
    .locals 1

    .prologue
    const/16 v0, 0x4100

    .line 58
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 59
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->tle:Lcom/meizu/flyme/activeview/renderer/utils/Triangle;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->drawSelf()V

    .line 60
    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 1

    .prologue
    const/16 v0, 0x4000

    .line 52
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 53
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->drawFun()V

    .line 55
    return-void
.end method

.method public renderChanged(II)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 38
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mWidth:I

    .line 39
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mHeight:I

    invoke-static {v2, v3, v4, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 42
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mHeight:I

    int-to-float v3, v3

    div-float v5, v2, v3

    .line 43
    .local v5, "ratio":F
    sget-object v2, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mProjMatrix:[F

    const/4 v3, 0x0

    neg-float v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 44
    sget-object v6, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mVMatrix:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->tle:Lcom/meizu/flyme/activeview/renderer/utils/Triangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mWidth:I

    int-to-float v3, v3

    iput v3, v2, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mResolutionx:F

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->tle:Lcom/meizu/flyme/activeview/renderer/utils/Triangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mHeight:I

    int-to-float v3, v3

    iput v3, v2, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;->mResolutiony:F

    .line 48
    return-void
.end method

.method public renderInit(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 30
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mVertexGlsl:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mFragGlsl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/flyme/activeview/renderer/utils/Triangle;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->tle:Lcom/meizu/flyme/activeview/renderer/utils/Triangle;

    const/16 v0, 0xb71

    .line 31
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->renderChanged(II)V

    .line 35
    return-void
.end method

.method public setViewport(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mWidth:I

    .line 25
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;->mHeight:I

    .line 26
    return-void
.end method
