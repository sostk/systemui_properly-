.class public Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FlymeLinearLayout.java"


# instance fields
.field private mKeyguardTextArea:Landroid/view/ViewGroup;

.field private mNotificationIconArea:Landroid/view/ViewGroup;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    .line 33
    const v0, 0x7f0f01cd

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mNotificationIconArea:Landroid/view/ViewGroup;

    .line 34
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mSystemIconsContainer:Landroid/view/ViewGroup;

    .line 30
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 39
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 41
    .local v3, "margin":I
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v0, v4, v3

    .line 44
    .local v0, "allWidth":I
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 45
    .local v1, "childWidthMeasureSpec":I
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 47
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v0, v4

    .line 48
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 49
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 51
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v0, v4

    .line 52
    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 53
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->setMeasuredDimension(II)V

    .line 38
    return-void
.end method
