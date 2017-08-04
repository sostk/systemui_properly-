.class Lcom/meizu/media/render/GLBlurView$BlurRender;
.super Lcom/meizu/media/render/BaseRender;
.source "GLBlurView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/render/GLBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurRender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/render/GLBlurView;


# direct methods
.method private constructor <init>(Lcom/meizu/media/render/GLBlurView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/render/GLBlurView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-direct {p0}, Lcom/meizu/media/render/BaseRender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/render/GLBlurView;Lcom/meizu/media/render/GLBlurView$BlurRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/render/GLBlurView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/render/GLBlurView$BlurRender;-><init>(Lcom/meizu/media/render/GLBlurView;)V

    return-void
.end method


# virtual methods
.method public onCreated(II)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->initRenderer()V

    .line 103
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 104
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lcom/meizu/media/render/GLBlurViewRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyed()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->releaseRenderer()V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRender()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->shouldEGLDisplayUpdate()Z

    move-result v0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(II)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurView$BlurRender;->this$0:Lcom/meizu/media/render/GLBlurView;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurView;->-get0(Lcom/meizu/media/render/GLBlurView;)Lcom/meizu/media/render/GLBlurViewRenderer;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lcom/meizu/media/render/GLBlurViewRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
