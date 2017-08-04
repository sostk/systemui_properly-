.class Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$1;
.super Landroid/os/Handler;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$1;->this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView$1;->this$0:Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->setVisibility(I)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
