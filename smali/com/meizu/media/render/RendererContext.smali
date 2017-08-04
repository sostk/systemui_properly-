.class public Lcom/meizu/media/render/RendererContext;
.super Ljava/lang/Object;
.source "RendererContext.java"


# instance fields
.field private mCameraPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private mCameraPreviewTextureID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCameraPreviewTexture(ILandroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "cameraPreviewTextureID"    # I
    .param p2, "cameraPreviewTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 17
    iput p1, p0, Lcom/meizu/media/render/RendererContext;->mCameraPreviewTextureID:I

    .line 18
    iput-object p2, p0, Lcom/meizu/media/render/RendererContext;->mCameraPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    return-void
.end method
