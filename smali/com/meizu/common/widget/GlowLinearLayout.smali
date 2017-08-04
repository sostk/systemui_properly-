.class public Lcom/meizu/common/widget/GlowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "GlowLinearLayout.java"


# instance fields
.field private mDelegate:Lcom/meizu/common/widget/GlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GlowLinearLayout;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GlowLinearLayout;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GlowLinearLayout;->initView(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Lcom/meizu/common/widget/GlowDelegate;

    invoke-direct {v0, p1, p0}, Lcom/meizu/common/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    .line 36
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {p0}, Lcom/meizu/common/widget/GlowLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GlowDelegate;->setGlowBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GlowLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/GlowLinearLayout;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GlowLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GlowDelegate;->setGlowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 52
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 60
    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GlowDelegate;->setGlowScale(F)V

    .line 68
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/common/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/common/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GlowDelegate;->setPressed(Z)V

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 73
    return-void
.end method
