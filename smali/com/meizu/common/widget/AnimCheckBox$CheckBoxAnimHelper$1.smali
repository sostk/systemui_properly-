.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$200(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 172
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v0

    iget v0, v0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    if-nez v0, :cond_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 180
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v1

    iget v1, v1, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/AnimCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/AnimCheckBox;->setVisibility(I)V

    goto :goto_0
.end method
