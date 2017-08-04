.class public Lcom/meizu/common/widget/NoClipView;
.super Landroid/view/View;
.source "NoClipView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final sDirtyField:Ljava/lang/reflect/Field;

.field private static final sGetViewRootImplMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/meizu/common/widget/NoClipView;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/NoClipView;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 24
    invoke-static {}, Lcom/meizu/common/widget/NoClipView;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/NoClipView;->sDirtyField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method private static getField()Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    :try_start_0
    const-string/jumbo v2, "android.view.ViewRootImpl"

    .line 88
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mDirty"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 93
    return-object v2
.end method

.method private static getMethod()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string/jumbo v2, "getViewRootImpl"

    const/4 v3, 0x0

    .line 80
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    .line 82
    return-object v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 41
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/NoClipView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 43
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 44
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 51
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 53
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    iput-object v1, p0, Lcom/meizu/common/widget/NoClipView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public onDraw()V
    .locals 4

    .prologue
    .line 61
    :try_start_0
    sget-object v1, Lcom/meizu/common/widget/NoClipView;->sDirtyField:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/meizu/common/widget/NoClipView;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 63
    .local v0, "diryRect":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 71
    .end local v0    # "diryRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "diryRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "diryRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/NoClipView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/NoClipView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 76
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/NoClipView;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
