.class Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;
.super Ljava/lang/Object;
.source "ViewPagerOverScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizonalFlingRunnable"
.end annotation


# instance fields
.field private final mScroller:Landroid/widget/OverScroller;

.field start:Z

.field final synthetic this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;


# direct methods
.method constructor <init>(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;)V
    .locals 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->start:Z

    .line 236
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 237
    return-void
.end method


# virtual methods
.method endFling()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0, p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 251
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v11, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 256
    .local v11, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v11}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->endFling()V

    .line 276
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v3

    .line 258
    .local v3, "scrollX":I
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 259
    .local v10, "currX":I
    sub-int v1, v10, v3

    .line 260
    .local v1, "deltaX":I
    iput-boolean v2, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->start:Z

    .line 261
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    iget-object v4, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    iget v7, v4, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->access$200(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;IIIIIIIIZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->invalidate()V

    .line 271
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0, p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 263
    :cond_1
    if-lez v3, :cond_3

    :cond_2
    if-gez v3, :cond_5

    .line 267
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->startSpringback()V

    goto :goto_0

    .line 263
    :cond_3
    if-lez v10, :cond_2

    .line 265
    :cond_4
    invoke-virtual {v11}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 263
    :cond_5
    if-ltz v10, :cond_4

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v1}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->start:Z

    .line 242
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->invalidate()V

    .line 243
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-virtual {v0, p0}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
