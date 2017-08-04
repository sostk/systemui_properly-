.class public Lcom/flyme/systemui/statusbar/phone/FlymeIconLayout;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "FlymeIconLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 28
    .local v1, "allWidth":I
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 29
    .local v5, "clip":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 30
    .local v0, "allChildWidth":I
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconLayout;->getChildCount()I

    move-result v3

    .line 31
    .local v3, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 32
    sub-int v7, v3, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/flyme/systemui/statusbar/phone/FlymeIconLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 34
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 35
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 37
    .local v4, "childWidth":I
    add-int/2addr v0, v4

    .line 38
    if-le v0, v1, :cond_1

    .line 39
    sub-int/2addr v0, v4

    .line 40
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 45
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childWidth":I
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0, v0, v7}, Lcom/flyme/systemui/statusbar/phone/FlymeIconLayout;->setMeasuredDimension(II)V

    .line 26
    :goto_1
    return-void

    .line 31
    .restart local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onMeasure(II)V

    goto :goto_1
.end method
