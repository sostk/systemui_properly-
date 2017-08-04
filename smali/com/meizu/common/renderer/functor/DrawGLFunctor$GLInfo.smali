.class public Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;
.super Ljava/lang/Object;
.source "DrawGLFunctor.java"


# annotations
.annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLInfo"
.end annotation


# instance fields
.field public clipBottom:I

.field public clipLeft:I

.field public clipRight:I

.field public clipTop:I

.field public isLayer:Z

.field public transform:[F

.field public viewportHeight:I

.field public viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 257
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    .line 258
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 259
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    .line 263
    iput p2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    .line 264
    return-void
.end method
