.class Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
.super Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;
.source "EnhanceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 1

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/EnhanceGallery;
    .param p2, "x1"    # Lcom/meizu/common/widget/EnhanceGallery$1;

    .prologue
    .line 2712
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2717
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-boolean v3, v3, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v3, :cond_1

    .line 2719
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 2720
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 2721
    .local v1, "motionPosition":I
    if-nez v0, :cond_2

    .line 2731
    :cond_0
    :goto_0
    return-void

    .line 2717
    .end local v0    # "adapter":Landroid/widget/SpinnerAdapter;
    .end local v1    # "motionPosition":I
    :cond_1
    return-void

    .line 2721
    .restart local v0    # "adapter":Landroid/widget/SpinnerAdapter;
    .restart local v1    # "motionPosition":I
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v3, v3, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-lez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2724
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2727
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2728
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->performItemClicks(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
