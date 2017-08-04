.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;
.super Landroid/widget/LinearLayout;
.source "MiniHeadsupFirstGroup.java"


# static fields
.field private static sXfermode:Landroid/graphics/Xfermode;


# instance fields
.field private mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->sXfermode:Landroid/graphics/Xfermode;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v0, 0x7f02021b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 24
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 26
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->sXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 37
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method public setButtonColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 31
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 30
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 29
    return-void
.end method
