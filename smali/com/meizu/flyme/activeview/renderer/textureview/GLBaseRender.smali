.class public Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;
.super Ljava/lang/Object;
.source "GLBaseRender.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFragGlsl:Ljava/lang/String;

.field protected mHeight:I

.field protected mVertexGlsl:Ljava/lang/String;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vertex"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mVertexGlsl:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mFragGlsl:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public renderChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 31
    return-void
.end method

.method public renderInit(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 35
    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mWidth:I

    .line 39
    iput p2, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;->mHeight:I

    .line 40
    return-void
.end method
