.class public Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;
.super Landroid/widget/LinearLayout;
.source "AlwaysShowAreaView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;
.implements Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;


# instance fields
.field private mNeedAutoColor:Z

.field private mShowText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 18
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 18
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 18
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mShowText:Z

    .line 61
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->postInvalidate()V

    .line 59
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColorFilter(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 34
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    if-eqz v3, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->getChildCount()I

    move-result v1

    .line 36
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 37
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 33
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public setNeedAutoColor(Z)V
    .locals 0
    .param p1, "isAutoColor"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;->mNeedAutoColor:Z

    .line 47
    return-void
.end method
