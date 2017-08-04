.class Lcom/meizu/media/render/GLBlurViewRenderer$1;
.super Ljava/lang/Object;
.source "GLBlurViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/render/GLBlurViewRenderer;->releaseRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/render/GLBlurViewRenderer;


# direct methods
.method constructor <init>(Lcom/meizu/media/render/GLBlurViewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/render/GLBlurViewRenderer;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get10(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/gles/GLTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get10(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/gles/GLTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/gles/GLTexture;->recyle()V

    .line 74
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set7(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/gles/GLTexture;)Lcom/meizu/media/render/gles/GLTexture;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get6(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/Render;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get6(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/Render;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/Render;->release()V

    .line 78
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set5(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/Render;)Lcom/meizu/media/render/Render;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get1(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/BlurLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get1(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/BlurLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/BlurLayer;->release()V

    .line 82
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set1(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/BlurLayer;)Lcom/meizu/media/render/BlurLayer;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get0(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/AlphaBlenderRender;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get0(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/AlphaBlenderRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/AlphaBlenderRender;->release()V

    .line 86
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set0(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/AlphaBlenderRender;)Lcom/meizu/media/render/AlphaBlenderRender;

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get3(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/GraphLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get3(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/GraphLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/GraphLayer;->release()V

    .line 90
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set3(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/GraphLayer;)Lcom/meizu/media/render/GraphLayer;

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get4(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/GraphRender;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get4(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/GraphRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/GraphRender;->release()V

    .line 94
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set4(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/GraphRender;)Lcom/meizu/media/render/GraphRender;

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get9(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/SoftLightLayerComposer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get9(Lcom/meizu/media/render/GLBlurViewRenderer;)Lcom/meizu/media/render/SoftLightLayerComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/render/SoftLightLayerComposer;->release()V

    .line 98
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v1}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set6(Lcom/meizu/media/render/GLBlurViewRenderer;Lcom/meizu/media/render/SoftLightLayerComposer;)Lcom/meizu/media/render/SoftLightLayerComposer;

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get2(Lcom/meizu/media/render/GLBlurViewRenderer;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0}, Lcom/meizu/media/render/GLBlurViewRenderer;->-get2(Lcom/meizu/media/render/GLBlurViewRenderer;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/media/render/gles/GLES20Utils;->deleteFramebuffer(I)V

    .line 102
    iget-object v0, p0, Lcom/meizu/media/render/GLBlurViewRenderer$1;->this$0:Lcom/meizu/media/render/GLBlurViewRenderer;

    invoke-static {v0, v2}, Lcom/meizu/media/render/GLBlurViewRenderer;->-set2(Lcom/meizu/media/render/GLBlurViewRenderer;I)I

    .line 71
    :cond_7
    return-void
.end method
