.class public Lcom/meizu/common/widget/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SearchEditText$SearchHandler;
    }
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field private mHandler:Lcom/meizu/common/widget/SearchEditText$SearchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/widget/SearchEditText;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    invoke-virtual {p0}, Lcom/meizu/common/widget/SearchEditText;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-virtual {p0}, Lcom/meizu/common/widget/SearchEditText;->init()V

    .line 101
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 108
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/meizu/common/widget/SearchEditText;>;"
    new-instance v1, Lcom/meizu/common/widget/SearchEditText$SearchHandler;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/SearchEditText$SearchHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/meizu/common/widget/SearchEditText;->mHandler:Lcom/meizu/common/widget/SearchEditText$SearchHandler;

    .line 109
    return-void
.end method

.method public isInputComplete()Z
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/meizu/common/widget/SearchEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 127
    .local v1, "dtb":Landroid/text/Editable;
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .local v0, "composeStart":I
    const/4 v2, -0x1

    .line 128
    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/SearchEditText;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public showIme(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 116
    iget-object v2, p0, Lcom/meizu/common/widget/SearchEditText;->mHandler:Lcom/meizu/common/widget/SearchEditText$SearchHandler;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/SearchEditText$SearchHandler;->removeMessages(I)V

    .line 117
    iget-object v2, p0, Lcom/meizu/common/widget/SearchEditText;->mHandler:Lcom/meizu/common/widget/SearchEditText$SearchHandler;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/SearchEditText$SearchHandler;->removeMessages(I)V

    .line 118
    iget-object v2, p0, Lcom/meizu/common/widget/SearchEditText;->mHandler:Lcom/meizu/common/widget/SearchEditText$SearchHandler;

    if-nez p1, :cond_0

    :goto_0
    const-wide/16 v4, 0x14

    invoke-virtual {v2, v0, v4, v5}, Lcom/meizu/common/widget/SearchEditText$SearchHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0
.end method
