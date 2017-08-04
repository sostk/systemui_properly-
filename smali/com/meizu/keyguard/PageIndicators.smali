.class public Lcom/meizu/keyguard/PageIndicators;
.super Landroid/widget/LinearLayout;
.source "PageIndicators.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurIndex:I

.field private mIndicaotrs:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/PageIndicators;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput p2, p0, Lcom/meizu/keyguard/PageIndicators;->mCount:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/keyguard/PageIndicators;->mCurIndex:I

    .line 25
    iput-object p1, p0, Lcom/meizu/keyguard/PageIndicators;->mContext:Landroid/content/Context;

    .line 26
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/PageIndicators;->setGravity(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public setCurrentPage(II)V
    .locals 2
    .param p1, "curIndex"    # I
    .param p2, "lastIndex"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    array-length v0, v0

    if-le v0, p2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_current_index_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_index_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public setIndicatorCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v5, -0x2

    .line 42
    iget v3, p0, Lcom/meizu/keyguard/PageIndicators;->mCount:I

    if-eq v3, p1, :cond_2

    .line 43
    iput p1, p0, Lcom/meizu/keyguard/PageIndicators;->mCount:I

    .line 44
    iget v3, p0, Lcom/meizu/keyguard/PageIndicators;->mCount:I

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0}, Lcom/meizu/keyguard/PageIndicators;->removeAllViews()V

    .line 46
    iget v3, p0, Lcom/meizu/keyguard/PageIndicators;->mCount:I

    if-lez v3, :cond_2

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/meizu/keyguard/PageIndicators;->mCount:I

    if-ge v0, v3, :cond_2

    .line 48
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/meizu/keyguard/PageIndicators;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "image":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget v3, p0, Lcom/meizu/keyguard/PageIndicators;->mCurIndex:I

    if-ne v0, v3, :cond_1

    .line 51
    sget v3, Lcom/android/keyguard/R$drawable;->keyguard_current_index_bg:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :goto_1
    iget-object v3, p0, Lcom/meizu/keyguard/PageIndicators;->mIndicaotrs:[Landroid/widget/ImageView;

    aput-object v1, v3, v0

    .line 56
    if-lez v0, :cond_0

    .line 57
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/keyguard/PageIndicators;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_select_index_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/keyguard/PageIndicators;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/meizu/keyguard/PageIndicators;->postInvalidate()V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    sget v3, Lcom/android/keyguard/R$drawable;->keyguard_index_bg:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 41
    .end local v0    # "i":I
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method
