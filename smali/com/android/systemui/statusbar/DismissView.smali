.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "DismissView.java"


# instance fields
.field private mDismissAllInProgress:Z

.field private mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected findContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0f0256

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isButtonVisible()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissViewButton;->isButtonStatic()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->findContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    .line 40
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissAllInProgress:Z

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 68
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 64
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissAllInProgress:Z

    .line 60
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public showClearButton()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissViewButton;->showButton()V

    .line 56
    return-void
.end method
