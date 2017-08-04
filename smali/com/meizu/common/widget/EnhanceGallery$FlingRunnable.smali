.class Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastDelta:I

.field private mLastFlingX:I

.field private mLastOverFlingX:I

.field private mScroller:Lcom/meizu/common/widget/OverScroller;

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1864
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1861
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1865
    new-instance v0, Lcom/meizu/common/widget/OverScroller;

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    .line 1866
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/common/widget/OverScroller;->setEnableMZOverScroll(ZZ)V

    .line 1868
    return-void
.end method

.method private endFling(Z)V
    .locals 3
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1914
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/OverScroller;->forceFinished(Z)V

    .line 1916
    if-nez p1, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1921
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1000(Lcom/meizu/common/widget/EnhanceGallery;)V

    goto :goto_0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1873
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1925
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v7, v7, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-eqz v7, :cond_0

    .line 1929
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    .line 1931
    .local v5, "scroller":Lcom/meizu/common/widget/OverScroller;
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7}, Lcom/meizu/common/widget/EnhanceGallery;->access$200(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1986
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7, v10}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1987
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    if-nez v7, :cond_9

    .line 1991
    :goto_0
    return-void

    .line 1926
    .end local v5    # "scroller":Lcom/meizu/common/widget/OverScroller;
    :cond_0
    invoke-direct {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    .line 1927
    return-void

    .line 1935
    .restart local v5    # "scroller":Lcom/meizu/common/widget/OverScroller;
    :pswitch_0
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7, v8}, Lcom/meizu/common/widget/EnhanceGallery;->access$1102(Lcom/meizu/common/widget/EnhanceGallery;Z)Z

    .line 1937
    invoke-virtual {v5}, Lcom/meizu/common/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    .line 1938
    .local v4, "more":Z
    invoke-virtual {v5}, Lcom/meizu/common/widget/OverScroller;->getCurrX()I

    move-result v6

    .line 1942
    .local v6, "x":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastFlingX:I

    sub-int v1, v7, v6

    .line 1944
    .local v1, "delta":I
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v7, v1}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    move-result v3

    .line 1946
    .local v3, "isAtEdge":Z
    if-nez v4, :cond_3

    .line 1950
    :cond_1
    if-nez v4, :cond_4

    .line 1965
    :cond_2
    invoke-direct {p0, v11}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    goto :goto_0

    .line 1946
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7}, Lcom/meizu/common/widget/EnhanceGallery;->access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_1

    .line 1947
    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastFlingX:I

    .line 1948
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastDelta:I

    .line 1949
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v7, p0}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1950
    :cond_4
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7}, Lcom/meizu/common/widget/EnhanceGallery;->access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_2

    .line 1952
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    .line 1953
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7}, Lcom/meizu/common/widget/EnhanceGallery;->access$200(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    if-eq v7, v9, :cond_5

    .line 1956
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1959
    :goto_1
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 1963
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 1954
    :cond_5
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    goto :goto_1

    .line 1960
    :cond_6
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v7, v9}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto :goto_2

    .line 1971
    .end local v1    # "delta":I
    .end local v3    # "isAtEdge":Z
    .end local v4    # "more":Z
    .end local v6    # "x":I
    :pswitch_1
    invoke-virtual {v5}, Lcom/meizu/common/widget/OverScroller;->computeScrollOffset()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1981
    invoke-direct {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    .line 1982
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v7, v10}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    goto :goto_0

    .line 1972
    :cond_7
    invoke-virtual {v5}, Lcom/meizu/common/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1973
    .local v0, "currX":I
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    sub-int v2, v0, v7

    .line 1974
    .local v2, "deltaX":I
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1976
    if-nez v2, :cond_8

    .line 1978
    :goto_3
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v7}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 1979
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v7, p0}, Lcom/meizu/common/widget/EnhanceGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1977
    :cond_8
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    neg-int v8, v2

    invoke-virtual {v7, v8}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    goto :goto_3

    .line 1988
    .end local v0    # "currX":I
    .end local v2    # "deltaX":I
    :cond_9
    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v7, v8}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 1931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1894
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$900(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1902
    :goto_0
    return-void

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1896
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$900(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1897
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 1898
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 1876
    if-eqz p1, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 1880
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startCommon()V

    .line 1882
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mLastFlingX:I

    .line 1883
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1884
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/OverScroller;->startScroll(IIIII)V

    .line 1885
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1886
    return-void

    .line 1876
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1906
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->endFling(Z)V

    .line 1907
    return-void
.end method
