.class Lcom/meizu/common/widget/StretchSearchView$3;
.super Ljava/lang/Object;
.source "StretchSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 664
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$000(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "txt":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$100(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$200(Lcom/meizu/common/widget/StretchSearchView;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 670
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/StretchSearchView;->showIme(Z)V

    .line 677
    :goto_1
    return-void

    .line 665
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$300(Lcom/meizu/common/widget/StretchSearchView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 675
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$100(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 667
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$300(Lcom/meizu/common/widget/StretchSearchView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$400(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 673
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$400(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 680
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 683
    return-void
.end method
