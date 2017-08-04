.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;
.super Landroid/widget/FrameLayout;
.source "MiniHeadsupThirdGroup.java"


# instance fields
.field private final mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mlevel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mlevel:F

    .line 19
    const v0, 0x7f02021b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 20
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method public setButtonColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 25
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 24
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 23
    return-void
.end method

.method public setLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mlevel:F

    .line 28
    return-void
.end method

.method public updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .prologue
    .line 32
    return-void
.end method
