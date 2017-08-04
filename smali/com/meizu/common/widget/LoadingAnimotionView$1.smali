.class Lcom/meizu/common/widget/LoadingAnimotionView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoadingAnimotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingAnimotionView;->createAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingAnimotionView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingAnimotionView;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingAnimotionView;->access$000(Lcom/meizu/common/widget/LoadingAnimotionView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingAnimotionView;->access$100(Lcom/meizu/common/widget/LoadingAnimotionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_2

    .line 207
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingAnimotionView;->access$100(Lcom/meizu/common/widget/LoadingAnimotionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    new-instance v1, Lcom/meizu/common/widget/LoadingAnimotionView$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/LoadingAnimotionView$1$1;-><init>(Lcom/meizu/common/widget/LoadingAnimotionView$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingAnimotionView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/LoadingAnimotionView;->access$002(Lcom/meizu/common/widget/LoadingAnimotionView;Z)Z

    .line 205
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/LoadingAnimotionView;->access$202(Lcom/meizu/common/widget/LoadingAnimotionView;Z)Z

    goto :goto_0
.end method
