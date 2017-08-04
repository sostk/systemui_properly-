.class public Lcom/meizu/common/widget/PinnedHeaderListView;
.super Lcom/meizu/common/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderListView$1;,
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mHeaderPaddingLeft:I

.field private mHeaderPaddingTop:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x1010074

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010074

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    const/16 v0, 0x14

    .line 111
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "header"    # Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .param p3, "currentTime"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 560
    iget-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v3, :cond_0

    .line 571
    :goto_0
    iget-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v3, :cond_2

    .line 586
    :goto_1
    return-void

    .line 561
    :cond_0
    iget-wide v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v4, p3

    long-to-int v1, v4

    .line 562
    .local v1, "timeLeft":I
    if-lez v1, :cond_1

    .line 567
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v5, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 563
    :cond_1
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 564
    iget-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 565
    iput-boolean v6, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    goto :goto_0

    .line 572
    .end local v1    # "timeLeft":I
    :cond_2
    iget-object v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 573
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 574
    .local v0, "saveCount":I
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v3, :cond_4

    .line 575
    :cond_3
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    :goto_2
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eq v3, v8, :cond_5

    .line 583
    :goto_3
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 584
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 574
    :cond_4
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eq v3, v8, :cond_3

    .line 577
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 580
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 581
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_3
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .param p1, "viewIndex"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 388
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 390
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_1

    .line 406
    :goto_0
    return-void

    .line 390
    :cond_0
    return-void

    .line 393
    :cond_1
    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 395
    .local v4, "widthSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 396
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_3

    .line 399
    :cond_2
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 401
    .local v1, "heightSpec":I
    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 402
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 403
    .local v0, "height":I
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 404
    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 396
    .end local v0    # "height":I
    .end local v1    # "heightSpec":I
    :cond_3
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_2

    .line 397
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightSpec":I
    goto :goto_1
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    iput-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    const/4 v0, 0x0

    .line 498
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lt v0, v1, :cond_0

    .line 505
    return-void

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 501
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidate()V

    .line 502
    return-void
.end method

.method private smoothScrollToPartition(I)Z
    .locals 6
    .param p1, "partition"    # I

    .prologue
    const/4 v5, 0x0

    .line 479
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .local v3, "position":I
    const/4 v4, -0x1

    .line 480
    if-eq v3, v4, :cond_0

    const/4 v2, 0x0

    .local v2, "offset":I
    const/4 v1, 0x0

    .line 485
    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 493
    const/4 v4, 0x1

    return v4

    .line 481
    .end local v1    # "i":I
    .end local v2    # "offset":I
    :cond_0
    return v5

    .line 486
    .restart local v1    # "i":I
    .restart local v2    # "offset":I
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 487
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v4, :cond_2

    .line 485
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_2
    iget v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 509
    iget-boolean v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    if-nez v8, :cond_1

    const-wide/16 v2, 0x0

    .local v2, "currentTime":J
    :goto_0
    const/4 v7, 0x0

    .line 512
    .local v7, "top":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 513
    .local v0, "bottom":I
    const/4 v1, 0x0

    .local v1, "hasVisibleHeaders":Z
    const/4 v5, 0x0

    .line 514
    .local v5, "i":I
    :goto_1
    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lt v5, v8, :cond_2

    .line 529
    if-nez v1, :cond_9

    .line 535
    :goto_2
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 537
    if-nez v1, :cond_a

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 557
    return-void

    .line 509
    .end local v0    # "bottom":I
    .end local v1    # "hasVisibleHeaders":Z
    .end local v2    # "currentTime":J
    .end local v5    # "i":I
    .end local v7    # "top":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 515
    .restart local v0    # "bottom":I
    .restart local v1    # "hasVisibleHeaders":Z
    .restart local v2    # "currentTime":J
    .restart local v5    # "i":I
    .restart local v7    # "top":I
    :cond_2
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 516
    .local v4, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v8, :cond_4

    .line 514
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 517
    :cond_4
    const/4 v1, 0x1

    .line 518
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eq v8, v11, :cond_7

    .line 520
    :cond_5
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v8, :cond_8

    .line 521
    :cond_6
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 522
    .local v6, "newTop":I
    if-le v6, v7, :cond_3

    .line 523
    move v7, v6

    goto :goto_3

    .line 518
    .end local v6    # "newTop":I
    :cond_7
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_5

    .line 519
    iget v0, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_3

    .line 520
    :cond_8
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eq v8, v12, :cond_6

    goto :goto_3

    .line 530
    .end local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 531
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v10, v10, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 532
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_2

    .line 538
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 541
    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    :cond_b
    :goto_4
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_d

    const/4 v5, 0x0

    .line 548
    :goto_5
    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_0

    .line 549
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 550
    .restart local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v8, :cond_10

    .line 548
    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 542
    .end local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_d
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 543
    .restart local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_b

    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v8, :cond_f

    .line 544
    :cond_e
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    .line 543
    :cond_f
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eq v8, v12, :cond_e

    goto :goto_4

    .line 550
    :cond_10
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_c

    .line 551
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_6
.end method

.method public getCurrentOverScrollDistance()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    :cond_0
    return v2

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 609
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 610
    .local v0, "firstTop":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHeaderPaddingTop()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    return v0
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 259
    return v0
.end method

.method public getPositionAt(I)I
    .locals 5
    .param p1, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildCount()I

    move-result v0

    .line 437
    .local v0, "childCount":I
    if-gtz v0, :cond_1

    .line 456
    :cond_0
    return v4

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->isStackFromBottom()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 447
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 448
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 449
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le p1, v3, :cond_4

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 440
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 441
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 439
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    return v3

    .line 450
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    return v3
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 412
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    .line 418
    return v3

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 414
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 415
    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    return v2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 641
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/PinnedHeaderListView;

    .line 642
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 643
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    .local v7, "height":I
    const/4 v11, 0x0

    .line 220
    .local v11, "windowTop":I
    move v10, v7

    .local v10, "windowBottom":I
    const/4 v8, 0x0

    .line 222
    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lt v8, v0, :cond_1

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 235
    .local v9, "selectedView":Landroid/view/View;
    if-nez v9, :cond_5

    .line 243
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_7

    .line 246
    :goto_3
    return-void

    .line 223
    .end local v9    # "selectedView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 224
    .local v6, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v0, :cond_3

    .line 222
    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 225
    :cond_3
    iget v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v0, :cond_4

    .line 227
    iget v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 228
    iget v10, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_1

    .line 226
    :cond_4
    iget v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    goto :goto_4

    .line 236
    .end local v6    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v9    # "selectedView":Landroid/view/View;
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt v0, v11, :cond_6

    .line 238
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 239
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 237
    :cond_6
    invoke-virtual {p0, p3, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AutoScrollListView;->onLayout(ZIIII)V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 137
    sub-int v0, p4, p2

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 138
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 165
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-nez v3, :cond_0

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-nez v3, :cond_8

    .line 195
    :goto_1
    return-void

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 167
    .local v0, "count":I
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_2
    const/4 v2, 0x0

    .line 178
    .local v2, "i":I
    :goto_3
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lt v2, v3, :cond_4

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 188
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 189
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_2
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    .line 169
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_1

    .line 172
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 173
    .local v1, "headers":[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 174
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 170
    .end local v1    # "headers":[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_3
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    goto :goto_2

    .line 179
    .restart local v2    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-eqz v3, :cond_6

    .line 182
    :goto_4
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 183
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 178
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 180
    :cond_6
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    invoke-direct {v4, v6}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/meizu/common/widget/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    goto :goto_4

    .line 183
    :cond_7
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 184
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 193
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 205
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mScrollState:I

    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 147
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 4
    .param p1, "viewIndex"    # I
    .param p2, "position"    # I
    .param p3, "fade"    # Z

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 328
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v3, p1

    .line 329
    .local v1, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v3, 0x2

    .line 330
    iput v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/16 v3, 0xff

    .line 331
    iput v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 332
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 334
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v2

    .line 335
    .local v2, "top":I
    iput v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 345
    return-void

    .line 326
    .end local v1    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .end local v2    # "top":I
    :cond_0
    return-void
.end method

.method public setHeaderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 626
    if-nez p1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 632
    :goto_1
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 634
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->requestLayout()V

    .line 635
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidate()V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .param p1, "viewIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 372
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 373
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    iput-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 385
    :goto_1
    return-void

    .line 373
    :cond_1
    if-eqz p2, :cond_3

    :cond_2
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_0

    .line 374
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 375
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_4

    .line 379
    :goto_2
    iput-boolean v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 380
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 381
    iput-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    goto :goto_1

    .line 373
    :cond_3
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 376
    :cond_4
    iput-boolean v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 377
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_2
.end method

.method public setHeaderPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 616
    if-gez p1, :cond_0

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 4
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 292
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 293
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 294
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 295
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_0

    .line 299
    if-nez p3, :cond_1

    .line 311
    :goto_0
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 312
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 314
    :goto_1
    return-void

    .line 296
    :cond_0
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 297
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 298
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_1

    .line 299
    :cond_1
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-eq v1, p2, :cond_3

    .line 300
    :cond_2
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_4

    .line 303
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 304
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 306
    :goto_2
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 307
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 308
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 309
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_1

    .line 299
    :cond_3
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 301
    :cond_4
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_2
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 275
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 276
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 277
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 278
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 281
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 282
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 159
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 153
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    return-void
.end method

.method public setPinnedHeaderAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 142
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    instance-of v2, v2, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    if-nez v2, :cond_1

    .line 604
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    .line 605
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    .line 592
    .local v0, "indexerListAdapter":Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    move-result-object v1

    .line 593
    .local v1, "placement":Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    iget-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v2, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 598
    invoke-super {p0, p1, v3}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 601
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    .line 596
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v2

    invoke-super {p0, p1, v2}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setTranslateHeader(II)V
    .locals 3
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 355
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, p1

    .line 356
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v2, 0x2

    .line 357
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/16 v2, 0xff

    .line 358
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 359
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 361
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v1

    .line 362
    .local v1, "top":I
    add-int v2, v1, p2

    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 363
    return-void
.end method
