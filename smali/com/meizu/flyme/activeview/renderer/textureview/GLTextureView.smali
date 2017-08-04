.class public Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;
    }
.end annotation


# static fields
.field private static DEBUG_FLAG:Z = false

.field private static final TAG:Ljava/lang/String; = "GLTextureView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$1;-><init>(Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mContext:Landroid/content/Context;

    const v0, 0x3f666666    # 0.9f

    .line 56
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->setAlpha(F)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->DEBUG_FLAG:Z

    return v0
.end method


# virtual methods
.method public getThreadSleepTime()I
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->getSleepTime()I

    move-result v0

    return v0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 74
    sput-boolean p1, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->DEBUG_FLAG:Z

    .line 75
    return-void
.end method

.method public setInnnerSurfaceChangedListener(Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;)V
    .locals 1
    .param p1, "render"    # Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;

    .prologue
    .line 61
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;

    invoke-direct {v0, p0, p1}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;-><init>(Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mListener:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;

    .line 62
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mListener:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 63
    return-void
.end method

.method public setThreadRun()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mListener:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    return-void
.end method

.method public setThreadSleepTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 78
    invoke-static {p1}, Lcom/meizu/flyme/activeview/renderer/textureview/GLDrawThread;->setSleepTime(I)V

    .line 79
    return-void
.end method

.method public setThreadStop()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->mListener:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;

    iget-object v0, v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$InnerListener;->mShouldRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    return-void
.end method
