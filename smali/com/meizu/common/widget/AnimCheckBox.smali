.class public Lcom/meizu/common/widget/AnimCheckBox;
.super Landroid/widget/CheckBox;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;,
        Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;
    }
.end annotation


# instance fields
.field private checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

.field private mActivated:Z

.field mInitVisible:I

.field private mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimCheckBox;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-virtual {p0}, Lcom/meizu/common/widget/AnimCheckBox;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 53
    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/AnimCheckBox;)Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    return-object v0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 308
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 309
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 319
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 320
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    if-ne v0, p1, :cond_0

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setActivated(Z)V

    .line 85
    :goto_1
    return-void

    .line 77
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    const v0, 0x8000

    .line 78
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AnimCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setActivated(Z)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setInitVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 61
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    .line 63
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    .line 60
    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0
.end method

.method public setIsAnimation(Z)V
    .locals 1
    .param p1, "isAnimation"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setIsAnimation(Z)V

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;-><init>(Lcom/meizu/common/widget/AnimCheckBox;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    goto :goto_0
.end method

.method public setUpdateListner(Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    .line 131
    return-void
.end method

.method public superSetActivate(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 112
    return-void
.end method

.method public superSetCheck(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    return-void
.end method
