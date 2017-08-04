.class public Lcom/meizu/common/widget/TabLayout;
.super Landroid/widget/FrameLayout;
.source "TabLayout.java"


# instance fields
.field private mTabScroller:Lcom/meizu/common/util/TabScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcom/meizu/common/util/TabScroller;

    invoke-direct {v0, p1, p0}, Lcom/meizu/common/util/TabScroller;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/meizu/common/widget/TabLayout;->mTabScroller:Lcom/meizu/common/util/TabScroller;

    .line 30
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/meizu/common/widget/TabLayout;->mTabScroller:Lcom/meizu/common/util/TabScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/TabScroller;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method

.method public getTabScroller()Lcom/meizu/common/util/TabScroller;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/common/widget/TabLayout;->mTabScroller:Lcom/meizu/common/util/TabScroller;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/TabLayout;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
