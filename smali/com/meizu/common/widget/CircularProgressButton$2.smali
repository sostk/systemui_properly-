.class Lcom/meizu/common/widget/CircularProgressButton$2;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton;->access$100(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v0

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$300(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CircularProgressButton;->access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 833
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 835
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$400(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 837
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$2;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$100(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V

    goto :goto_0
.end method
