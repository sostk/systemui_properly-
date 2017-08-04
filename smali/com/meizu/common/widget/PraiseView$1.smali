.class Lcom/meizu/common/widget/PraiseView$1;
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
    .line 239
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {v0}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {v0}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->praAlphAnimEnd()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 243
    return-void
.end method
