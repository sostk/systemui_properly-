.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$8;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setAutoGradientDisplay(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$8;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$8;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$1400(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$8;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->startAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1755
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1744
    return-void
.end method
