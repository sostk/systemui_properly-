.class public Lcom/meizu/sharewidget/widget/ColorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ColorRelativeLayout.java"

# interfaces
.implements Lcom/meizu/sharewidget/utils/ColorUiInterface;


# instance fields
.field private attr_background:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorRelativeLayout;->attr_background:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorRelativeLayout;->attr_background:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorRelativeLayout;->attr_background:I

    .line 34
    return-void
.end method


# virtual methods
.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public setStyle(I)V
    .locals 4
    .param p1, "style"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ColorRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/meizu/sharewidget/R$styleable;->ShareViewGroup:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/sharewidget/R$styleable;->ShareViewGroup_bgColor:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 45
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/widget/ColorRelativeLayout;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method
