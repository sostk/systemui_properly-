.class Lcom/meizu/common/widget/ProgressTextButtonView$2;
.super Ljava/lang/Object;
.source "ProgressTextButtonView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ProgressTextButtonView;->showText(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ProgressTextButtonView;Z)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    iput-boolean p2, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 207
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 195
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->val$show:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$100(Lcom/meizu/common/widget/ProgressTextButtonView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$000(Lcom/meizu/common/widget/ProgressTextButtonView;)Lcom/meizu/common/widget/CircularProgressButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setVisibility(I)V

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$100(Lcom/meizu/common/widget/ProgressTextButtonView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressTextButtonView$2;->this$0:Lcom/meizu/common/widget/ProgressTextButtonView;

    invoke-static {v0}, Lcom/meizu/common/widget/ProgressTextButtonView;->access$000(Lcom/meizu/common/widget/ProgressTextButtonView;)Lcom/meizu/common/widget/CircularProgressButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 212
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 191
    return-void
.end method
