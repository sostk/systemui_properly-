.class Lcom/meizu/common/widget/PraiseView$2;
.super Ljava/lang/Object;
.source "PraiseView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PraiseView;->initAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PraiseView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PraiseView;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {v0}, Lcom/meizu/common/widget/PraiseView;->access$200(Lcom/meizu/common/widget/PraiseView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    new-instance v1, Lcom/meizu/common/widget/PraiseView$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/PraiseView$2$1;-><init>(Lcom/meizu/common/widget/PraiseView$2;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PraiseView;->post(Ljava/lang/Runnable;)Z

    .line 276
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {v0}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/PraiseView;->access$102(Lcom/meizu/common/widget/PraiseView;Z)Z

    .line 281
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {v0}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->praAnimEnd()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 286
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/PraiseView;->access$102(Lcom/meizu/common/widget/PraiseView;Z)Z

    .line 264
    return-void
.end method
