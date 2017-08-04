.class public Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;
.super Lcom/meizu/common/renderer/drawable/GLBlurBitmapDrawable;
.source "GLBlurWindowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable$BlurWindowState;
    }
.end annotation


# instance fields
.field private mDefaultBimtap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable$BlurWindowState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable$BlurWindowState;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable$BlurWindowState;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable$BlurWindowState;)V
    .locals 0
    .param p1, "state"    # Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable$BlurWindowState;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurBitmapDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurBitmapDrawable$BlurBitmapState;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "progress"    # Z

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public captureScreen()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->captureScreen(II)V

    .line 34
    return-void
.end method

.method public captureScreen(II)V
    .locals 3
    .param p1, "minLayer"    # I
    .param p2, "maxLayer"    # I

    .prologue
    .line 37
    sget-object v2, Lcom/meizu/common/renderer/functor/DrawBlurWindowFunctor;->METRICS:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v2, 0x2

    .line 38
    .local v1, "width":I
    sget-object v2, Lcom/meizu/common/renderer/functor/DrawBlurWindowFunctor;->METRICS:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v2, 0x2

    .line 39
    .local v0, "height":I
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->captureScreen(IIII)V

    .line 40
    return-void
.end method

.method public captureScreen(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I

    .prologue
    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->captureScreen(Landroid/graphics/Rect;IIII)V

    .line 48
    return-void
.end method

.method public captureScreen(Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "sourceRect"    # Landroid/graphics/Rect;
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->captureScreen(Landroid/graphics/Rect;IIII)V

    .line 52
    return-void
.end method

.method public captureScreen(Landroid/graphics/Rect;IIII)V
    .locals 4
    .param p1, "sourceRect"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I

    .prologue
    .line 55
    invoke-static {p1, p2, p3, p4, p5}, Lcom/meizu/common/renderer/RendererUtils;->captureScreen(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->mDefaultBimtap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->mDefaultBimtap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    const/16 v2, 0x10

    .line 58
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->mDefaultBimtap:Landroid/graphics/Bitmap;

    .line 59
    iget-object v1, p0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->mDefaultBimtap:Landroid/graphics/Bitmap;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1
.end method

.method public setDefaultBimtap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->mDefaultBimtap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method
