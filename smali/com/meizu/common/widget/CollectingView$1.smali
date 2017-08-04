.class Lcom/meizu/common/widget/CollectingView$1;
.super Ljava/lang/Object;
.source "CollectingView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CollectingView;->initAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CollectingView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CollectingView;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$200(Lcom/meizu/common/widget/CollectingView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    new-instance v1, Lcom/meizu/common/widget/CollectingView$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CollectingView$1$1;-><init>(Lcom/meizu/common/widget/CollectingView$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CollectingView;->post(Ljava/lang/Runnable;)Z

    .line 254
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CollectingView;->access$102(Lcom/meizu/common/widget/CollectingView;Z)Z

    .line 258
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->collectEndAnim()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 263
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CollectingView;->access$102(Lcom/meizu/common/widget/CollectingView;Z)Z

    .line 242
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->collectStartAnim()V

    goto :goto_0
.end method
