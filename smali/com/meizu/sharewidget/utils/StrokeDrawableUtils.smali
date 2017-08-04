.class public Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;
.super Ljava/lang/Object;
.source "StrokeDrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;
    }
.end annotation


# static fields
.field private static final DEF_STROKE_RADIUS:I = 0xa

.field private static final EFFECTIVE_COLOR:I = 0x23000000

.field private static final MAX_LENGTH:I = 0x3e8

.field private static final STROKE_ALPHA_VALUE:I = 0xff

.field private static final STROKE_RECT_ALPHA_VALUE:I = 0x1a

.field private static final syncStroke:Ljava/lang/Object;

.field private static final syncStrokeRect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->syncStroke:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->syncStrokeRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method public static clearStrokeDrawableCache()V
    .locals 0

    .prologue
    .line 176
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->clearLruCache()V

    .line 177
    return-void
.end method

.method public static createRectStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 148
    sget-object v11, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->syncStrokeRect:Ljava/lang/Object;

    monitor-enter v11

    const/4 v8, 0x0

    .line 150
    .local v8, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 151
    .local v7, "createWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 152
    .local v6, "createHeight":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 154
    .local v10, "strokeBitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_1

    .line 171
    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-eqz v8, :cond_0

    move-object p0, v8

    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    monitor-exit v11

    return-object p0

    .restart local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    .line 155
    invoke-virtual {v10, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 156
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 157
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0, v1, v2, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v5

    .local v5, "strokePaint":Landroid/graphics/Paint;
    const/high16 v1, 0x41200000    # 10.0f

    .line 162
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x23000000

    .line 163
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x1a

    .line 164
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 166
    add-int/lit8 v3, v7, -0xa

    int-to-float v3, v3

    add-int/lit8 v4, v6, -0xa

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, p1, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v9, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v8, v9

    .end local v9    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v8, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 171
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "strokePaint":Landroid/graphics/Paint;
    .end local v6    # "createHeight":I
    .end local v7    # "createWidth":I
    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "strokeBitmap":Landroid/graphics/Bitmap;
    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    .line 172
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "recycle"    # Ljava/lang/Boolean;

    .prologue
    .line 50
    sget-object v11, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->syncStroke:Ljava/lang/Object;

    monitor-enter v11

    const/4 v7, 0x0

    .line 54
    .local v7, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-static {p0}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 55
    .local v6, "mapBitmap":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 79
    .end local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    move-object p0, v7

    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    monitor-exit v11

    return-object p0

    .line 56
    .restart local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/lit8 v2, v10, 0x14

    .line 57
    .local v2, "createHeight":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/lit8 v3, v10, 0x14

    .line 58
    .local v3, "createWidth":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 60
    .local v9, "strokeBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .local v5, "hashCode":I
    const/4 v10, 0x0

    .line 62
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 63
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 64
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 66
    .local v4, "filterPaint":Landroid/graphics/Paint;
    invoke-static {v3, v2, v5, v6}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->getExtraAlphaBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "alphaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    const/high16 v10, 0x23000000

    .line 70
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v3, v10

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v12, v2, v12

    shr-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v1, v0, v10, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v3, v10

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v12, v2, v12

    shr-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v1, v6, v10, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, p1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v8, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 76
    :try_start_1
    invoke-virtual {v8, v10, v12, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v7, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 79
    .end local v0    # "alphaBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "createHeight":I
    .end local v3    # "createWidth":I
    .end local v4    # "filterPaint":Landroid/graphics/Paint;
    .end local v5    # "hashCode":I
    .end local v6    # "mapBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "strokeBitmap":Landroid/graphics/Bitmap;
    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v10

    .line 80
    :goto_1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 79
    .restart local v0    # "alphaBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "createHeight":I
    .restart local v3    # "createWidth":I
    .restart local v4    # "filterPaint":Landroid/graphics/Paint;
    .restart local v5    # "hashCode":I
    .restart local v6    # "mapBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "strokeBitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v3, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 102
    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 106
    :cond_0
    return-object v6

    .line 103
    :cond_1
    return-object v6

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 108
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_5

    .line 110
    instance-of v2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_6

    .line 122
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gtz v2, :cond_8

    .line 123
    :cond_4
    return-object v6

    .line 109
    :cond_5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 110
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v2, p0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/LevelListDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/PaintDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/PictureDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/RotateDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/ClipDrawable;

    if-nez v2, :cond_3

    .line 137
    :cond_7
    return-object v6

    .line 122
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_4

    .line 125
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 129
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 130
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    return-object v0
.end method
