.class public Lcom/meizu/common/widget/ImageViewShadow;
.super Landroid/widget/ImageView;
.source "ImageViewShadow.java"


# static fields
.field private static final DEFAULT_OFFSETY:I = -0x1

.field private static final DEFAULT_RADIUS:I = 0x1


# instance fields
.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mBlurRadius:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private offsetXY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ImageViewShadow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ImageViewShadow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v1, Lcom/meizu/common/R$styleable;->ImageViewShadow:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->ImageViewShadow_mcBlurRadius:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setBlurRadius(F)V

    .line 51
    sget v1, Lcom/meizu/common/R$styleable;->ImageViewShadow_mcOffsetX:I

    iget v2, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setOffsetX(I)V

    .line 52
    sget v1, Lcom/meizu/common/R$styleable;->ImageViewShadow_mcOffsetY:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setOffsetY(I)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->setImageShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method private convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "originalBitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 93
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/ImageViewShadow;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "mapBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 95
    .local v5, "newBitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v4, :cond_0

    .line 111
    .end local v5    # "newBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v5

    .line 96
    .restart local v5    # "newBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .local v6, "outterShadowPaint":Landroid/graphics/Paint;
    sget v8, Lcom/meizu/common/R$color;->mc_image_view_shadow:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 98
    .local v2, "color":I
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v8, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v8, 0x2

    .line 100
    new-array v8, v8, [I

    iput-object v8, p0, Lcom/meizu/common/widget/ImageViewShadow;->offsetXY:[I

    .line 101
    iget-object v8, p0, Lcom/meizu/common/widget/ImageViewShadow;->offsetXY:[I

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 102
    .local v7, "shadowBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 104
    .local v3, "createBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .local v0, "bitmapPaint":Landroid/graphics/Paint;
    const/16 v8, 0x34

    .line 106
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget v8, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetY:I

    int-to-float v9, v9

    invoke-virtual {v1, v7, v8, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {v1, v4, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "newBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v5, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v5, "newBitmap":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 116
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 118
    instance-of v2, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 129
    return-object v2

    .line 117
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 119
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    return-object v0

    .line 119
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public getBlurRadius()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetX:I

    return v0
.end method

.method public getOffsetXY()[I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->offsetXY:[I

    return-object v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetY:I

    return v0
.end method

.method public invalidateImageShadow()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/ImageViewShadow;->convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ImageViewShadow;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setBlurMaskFilter(Landroid/graphics/BlurMaskFilter;)V
    .locals 1
    .param p1, "blurMaskFilter"    # Landroid/graphics/BlurMaskFilter;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBlurRadius(F)V
    .locals 0
    .param p1, "mBlurRadius"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mBlurRadius:F

    .line 139
    return-void
.end method

.method public setImageShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/ImageViewShadow;->convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ImageViewShadow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageShadowResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/meizu/common/widget/ImageViewShadow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/ImageViewShadow;->convertDrawableShadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ImageViewShadow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOffsetX(I)V
    .locals 0
    .param p1, "offsetX"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetX:I

    .line 151
    return-void
.end method

.method public setOffsetY(I)V
    .locals 0
    .param p1, "offsetY"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/meizu/common/widget/ImageViewShadow;->mOffsetY:I

    .line 159
    return-void
.end method
