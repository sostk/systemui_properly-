.class Lcom/meizu/common/widget/EnhanceGallery$2;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 839
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "lastView":Landroid/view/View;
    const/4 v1, 0x0

    .line 841
    .local v1, "scrollAmount":I
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 846
    if-nez v0, :cond_3

    .line 851
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 853
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 857
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    .line 858
    return-void

    .line 842
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 843
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    .line 846
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v4}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 847
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    .line 853
    :cond_4
    if-eqz v1, :cond_1

    .line 854
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2, v5}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto :goto_1
.end method
