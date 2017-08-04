.class public Lcom/meizu/sharewidget/utils/ColorUiUtil;
.super Ljava/lang/Object;
.source "ColorUiUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeStyle(Landroid/view/View;I)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "styleRes"    # I

    .prologue
    .line 32
    instance-of v2, p0, Lcom/meizu/sharewidget/utils/ColorUiInterface;

    if-nez v2, :cond_1

    .line 35
    :goto_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 41
    :cond_0
    return-void

    :cond_1
    move-object v2, p0

    .line 33
    check-cast v2, Lcom/meizu/sharewidget/utils/ColorUiInterface;

    invoke-interface {v2, p1}, Lcom/meizu/sharewidget/utils/ColorUiInterface;->setStyle(I)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    .line 36
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 37
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    move-object v2, p0

    .line 38
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/meizu/sharewidget/utils/ColorUiUtil;->changeStyle(Landroid/view/View;I)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
