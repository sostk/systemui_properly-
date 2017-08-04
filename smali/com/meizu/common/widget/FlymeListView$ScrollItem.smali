.class Lcom/meizu/common/widget/FlymeListView$ScrollItem;
.super Ljava/lang/Object;
.source "FlymeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FlymeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollItem"
.end annotation


# instance fields
.field private mCurrentOffset:F

.field private mDownScrollOffsetRatio:F

.field private mDownThreshold:F

.field private mEffectLength:F

.field private mOffsetAfterSmoothBack:F

.field private mOffsetBeforeSmoothBack:F

.field private mOriginalTransilationY:F

.field private mTranslateView:Landroid/view/View;

.field private mUpScrollOffsetRatio:F

.field private mUpThreshold:F

.field private mViewHolder:Landroid/view/View;

.field final synthetic this$0:Lcom/meizu/common/widget/FlymeListView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/FlymeListView;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 582
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    .line 570
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 573
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    const/high16 v0, -0x3db80000    # -50.0f

    .line 574
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    .line 579
    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    .line 580
    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mEffectLength:F

    .line 583
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/FlymeListView;Landroid/view/View;FF)V
    .locals 3
    .param p2, "translateView"    # Landroid/view/View;
    .param p3, "downScrollOffsetRatio"    # F
    .param p4, "upScrollOffsetRatio"    # F

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x3db80000    # -50.0f

    .line 585
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->this$0:Lcom/meizu/common/widget/FlymeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    .line 570
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    .line 573
    iput v2, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    .line 574
    iput v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    .line 579
    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    .line 580
    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mEffectLength:F

    .line 586
    iput-object p2, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    .line 587
    iput p3, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    .line 588
    iput p4, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    .line 589
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    .line 590
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    .line 591
    return-void
.end method


# virtual methods
.method public getCurrentOffset()F
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mCurrentOffset:F

    return v0
.end method

.method public getDownScrollOffsetRatio()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    return v0
.end method

.method public getDownThreshold()F
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    return v0
.end method

.method public getOffsetAfterSmoothBack()F
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetAfterSmoothBack:F

    return v0
.end method

.method public getOffsetBeforeSmoothBack()F
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetBeforeSmoothBack:F

    return v0
.end method

.method public getTranslateView()Landroid/view/View;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    return-object v0
.end method

.method public getUpScrollOffsetRatio()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    return v0
.end method

.method public getUpThreshold()F
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    return v0
.end method

.method public getViewHolder()Landroid/view/View;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mViewHolder:Landroid/view/View;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 645
    iput-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    .line 646
    iput-object v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mViewHolder:Landroid/view/View;

    .line 647
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    .line 648
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 649
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    const/high16 v0, -0x3db80000    # -50.0f

    .line 650
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    .line 651
    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    const/4 v0, 0x0

    .line 652
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mCurrentOffset:F

    .line 653
    return-void
.end method

.method public setOffsetAfterSmoothBack(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 688
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetAfterSmoothBack:F

    .line 689
    return-void
.end method

.method public setOffsetBeforeSmoothBack(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 679
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetBeforeSmoothBack:F

    .line 680
    return-void
.end method

.method public setOriginalTransilationY(F)V
    .locals 0
    .param p1, "originalY"    # F

    .prologue
    .line 724
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    .line 725
    return-void
.end method

.method public setScrollOffsetRatio(FF)V
    .locals 2
    .param p1, "downScrollOffsetRatio"    # F
    .param p2, "upScrollOffsetRatio"    # F

    .prologue
    .line 612
    iput p2, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    .line 613
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    .line 614
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    .line 615
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    const/high16 v1, -0x3db80000    # -50.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    .line 616
    return-void
.end method

.method public setTranslateView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    .line 595
    return-void
.end method

.method public setViewHolder(Landroid/view/View;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/view/View;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mViewHolder:Landroid/view/View;

    .line 599
    return-void
.end method

.method public translateItemY(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 627
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 630
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    .line 633
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mCurrentOffset:F

    .line 634
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 635
    return-void

    .line 628
    :cond_1
    return-void
.end method
