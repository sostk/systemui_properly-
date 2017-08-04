.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;
.super Landroid/widget/FrameLayout;
.source "MiniHeadsupSecondGroup.java"


# instance fields
.field private final mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mImageFinalMargeLeft:F

.field private mImageOriginMargeLeft:F

.field private mTextFinalMargeLeft:F

.field private mTextOriginMargeLeft:F

.field private mlevel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    .line 24
    const v0, 0x7f02021b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 25
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->getChildCount()I

    move-result v0

    .line 54
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 55
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 57
    iget v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageOriginMargeLeft:F

    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    sub-float v5, v7, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageFinalMargeLeft:F

    iget v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 58
    .local v2, "tempL":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v8, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 54
    .end local v2    # "tempL":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 60
    iget v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextOriginMargeLeft:F

    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    sub-float v5, v7, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextFinalMargeLeft:F

    iget v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 61
    .restart local v2    # "tempL":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v8, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 52
    .end local v2    # "tempL":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setButtonColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 30
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 29
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 28
    return-void
.end method

.method public setLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    .line 33
    return-void
.end method

.method public updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .prologue
    .line 38
    iget v0, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_ICON_MARGE_LEFT:F

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageOriginMargeLeft:F

    .line 39
    iget v0, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MARGE_LEFT:F

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageFinalMargeLeft:F

    .line 40
    iget v0, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextOriginMargeLeft:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextFinalMargeLeft:F

    .line 37
    return-void
.end method
