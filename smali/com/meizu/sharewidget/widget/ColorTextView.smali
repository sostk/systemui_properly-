.class public Lcom/meizu/sharewidget/widget/ColorTextView;
.super Landroid/widget/TextView;
.source "ColorTextView.java"

# interfaces
.implements Lcom/meizu/sharewidget/utils/ColorUiInterface;


# instance fields
.field private attr_drawable:I

.field private attr_textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorTextView;->attr_drawable:I

    .line 20
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorTextView;->attr_textColor:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorTextView;->attr_drawable:I

    .line 20
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorTextView;->attr_textColor:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorTextView;->attr_drawable:I

    .line 20
    iput v0, p0, Lcom/meizu/sharewidget/widget/ColorTextView;->attr_textColor:I

    .line 36
    return-void
.end method


# virtual methods
.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public setStyle(I)V
    .locals 4
    .param p1, "style"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/meizu/sharewidget/widget/ColorTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/meizu/sharewidget/R$styleable;->ShareViewGroup:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 41
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/meizu/sharewidget/R$styleable;->ShareViewGroup_titleColor:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 42
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/widget/ColorTextView;->setTextColor(I)V

    .line 43
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method
