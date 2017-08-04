.class Lcom/meizu/common/widget/CircularProgressButton$4;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CircularProgressButton;->directprogressToError()V
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
    .line 912
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 915
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton;->access$700(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v3}, Lcom/meizu/common/widget/CircularProgressButton;->access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/CircularProgressButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CircularProgressButton;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setWidth(I)V

    .line 920
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$800(Lcom/meizu/common/widget/CircularProgressButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v0, v4}, Lcom/meizu/common/widget/CircularProgressButton;->access$902(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 922
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$1002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 924
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$4;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$700(Lcom/meizu/common/widget/CircularProgressButton;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$200(Lcom/meizu/common/widget/CircularProgressButton;I)V

    goto :goto_0
.end method
