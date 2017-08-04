.class public Lcom/meizu/common/widget/LimitedWHLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LimitedWHLinearLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x7fffffff

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 34
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/LimitedWHLinearLayout;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 51
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 52
    .local v2, "width":I
    const/4 v1, 0x0

    .line 55
    .local v1, "measure":Z
    iget v3, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    if-gt v0, v3, :cond_0

    .line 61
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    if-gt v2, v3, :cond_1

    .line 67
    :goto_1
    if-nez v1, :cond_2

    .line 70
    :goto_2
    return-void

    .line 56
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 57
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 63
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 64
    const/4 v1, 0x1

    goto :goto_1

    .line 68
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_2
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 78
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 94
    return-void
.end method
