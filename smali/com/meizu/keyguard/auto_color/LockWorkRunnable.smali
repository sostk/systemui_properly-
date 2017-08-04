.class abstract Lcom/meizu/keyguard/auto_color/LockWorkRunnable;
.super Ljava/lang/Object;
.source "LockWallpaperObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public isAlive:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetaBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperObserver"    # Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;
    .param p3, "metaBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->isAlive:Z

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mMetaBitmap:Ljava/lang/ref/WeakReference;

    .line 162
    return-void
.end method

.method private static cBright(I)D
    .locals 6
    .param p0, "color"    # I

    .prologue
    .line 243
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static cColor(FII)I
    .locals 4
    .param p0, "bit"    # F
    .param p1, "base"    # I
    .param p2, "newColor"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 238
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v3, p0

    mul-float/2addr v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v3, p0

    mul-float/2addr v1, v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, p0

    mul-float/2addr v2, v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private static getBitmapBrightLevel(Landroid/graphics/Bitmap;Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;)F
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "wallpaperObserver"    # Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    .prologue
    .line 248
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 249
    :cond_0
    const/4 v12, 0x0

    return v12

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 252
    .local v6, "localWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 254
    .local v3, "localHeight":I
    iget-object v12, p1, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    array-length v7, v12

    .line 255
    .local v7, "numX":I
    iget-object v12, p1, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    const/4 v13, 0x0

    aget-object v12, v12, v13

    array-length v8, v12

    .line 257
    .local v8, "numY":I
    new-array v10, v7, [I

    .line 258
    .local v10, "x":[I
    new-array v11, v8, [I

    .line 260
    .local v11, "y":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v12, v10

    if-ge v1, v12, :cond_2

    .line 261
    mul-int v12, v6, v1

    div-int/2addr v12, v7

    aput v12, v10, v1

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_2
    const/4 v1, 0x0

    :goto_1
    array-length v12, v11

    if-ge v1, v12, :cond_3

    .line 264
    mul-int v12, v3, v1

    div-int/2addr v12, v8

    aput v12, v11, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_3
    const/4 v9, 0x0

    .line 268
    .local v9, "number":F
    const/4 v0, 0x0

    .line 270
    .local v0, "bright":F
    const/4 v1, 0x0

    :goto_2
    array-length v12, v10

    if-ge v1, v12, :cond_6

    .line 271
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    array-length v12, v11

    if-ge v2, v12, :cond_5

    .line 272
    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v9, v12

    .line 273
    aget v12, v10, v1

    aget v13, v11, v2

    invoke-virtual {p0, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-static {v12}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cBright(I)D

    move-result-wide v4

    .line 275
    .local v4, "localTemp":D
    iget-object v12, p1, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->brightXY:[[I

    aget-object v12, v12, v1

    double-to-int v13, v4

    aput v13, v12, v2

    .line 276
    const-wide v12, 0x406a400000000000L    # 210.0

    cmpl-double v12, v4, v12

    if-lez v12, :cond_4

    .line 277
    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v0, v12

    .line 271
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 270
    .end local v4    # "localTemp":D
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    .end local v2    # "j":I
    :cond_6
    div-float v12, v0, v9

    return v12
.end method

.method private getColorByProp(FLandroid/support/v7/graphics/Palette;)I
    .locals 10
    .param p1, "Prop"    # F
    .param p2, "palette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 286
    float-to-double v6, p1

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_6

    .line 287
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    .line 288
    .local v1, "swatch1":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 289
    .local v2, "swatch2":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-static {v7, v5, v6}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, -0x1000000

    invoke-static {v6, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v0

    .line 320
    .end local v1    # "swatch1":Landroid/support/v7/graphics/Palette$Swatch;
    .end local v2    # "swatch2":Landroid/support/v7/graphics/Palette$Swatch;
    .local v0, "color":I
    :goto_0
    return v0

    .line 291
    .end local v0    # "color":I
    .restart local v1    # "swatch1":Landroid/support/v7/graphics/Palette$Swatch;
    .restart local v2    # "swatch2":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_0
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 292
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 293
    .local v3, "swatch3":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    .line 295
    .local v4, "swatch4":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-static {v7, v5, v6}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, -0x1000000

    invoke-static {v6, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 297
    .end local v0    # "color":I
    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 298
    const/16 v5, 0xe6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 300
    .end local v0    # "color":I
    :cond_2
    if-eqz v3, :cond_3

    .line 301
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, -0x1000000

    invoke-static {v6, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 303
    .end local v0    # "color":I
    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, -0x1000000

    invoke-static {v6, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 307
    .end local v0    # "color":I
    .end local v3    # "swatch3":Landroid/support/v7/graphics/Palette$Swatch;
    .end local v4    # "swatch4":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_4
    if-eqz v1, :cond_5

    .line 308
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, -0x1000000

    invoke-static {v6, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 310
    .end local v0    # "color":I
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, -0x1000000

    invoke-static {v6, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->cColor(FII)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 313
    .end local v0    # "color":I
    .end local v1    # "swatch1":Landroid/support/v7/graphics/Palette$Swatch;
    .end local v2    # "swatch2":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_6
    float-to-double v6, p1

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpg-double v5, v6, v8

    if-gez v5, :cond_7

    float-to-double v6, p1

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_7

    .line 314
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .restart local v0    # "color":I
    goto/16 :goto_0

    .line 315
    .end local v0    # "color":I
    :cond_7
    float-to-double v6, p1

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpg-double v5, v6, v8

    if-gez v5, :cond_8

    float-to-double v6, p1

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_8

    .line 316
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .restart local v0    # "color":I
    goto/16 :goto_0

    .line 318
    .end local v0    # "color":I
    :cond_8
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .restart local v0    # "color":I
    goto/16 :goto_0
.end method


# virtual methods
.method abstract onCompleted()V
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide v12, 0x3fee666666666666L    # 0.95

    const-wide v10, 0x3feb333333333333L    # 0.85

    .line 170
    iget-boolean v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->isAlive:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mMetaBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 174
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->onLockMusicChanged(ZII)V

    .line 175
    invoke-virtual {p0}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 176
    return-void

    .line 179
    :cond_2
    const/4 v4, 0x1

    .line 181
    .local v4, "isLight":Z
    const/4 v0, 0x0

    .line 182
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static {v7}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 185
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 184
    invoke-static {v7}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v8

    .line 185
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 184
    invoke-virtual {v8, v7}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v6

    .line 186
    .local v6, "wrapper":Lcom/meizu/keyguard/theme/LockscreenWrapper;
    if-eqz v6, :cond_3

    .line 187
    invoke-virtual {v6}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-nez v0, :cond_4

    .line 190
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .end local v6    # "wrapper":Lcom/meizu/keyguard/theme/LockscreenWrapper;
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_7

    .line 232
    :cond_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 198
    return-void

    .line 194
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static {v7}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v7

    invoke-virtual {v7}, Lmeizu/wallpaper/FlymeWallpaperManager;->getDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 200
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    const/16 v7, 0xc

    invoke-static {v0, v7}, Landroid/support/v7/graphics/Palette;->generate(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/Palette;

    move-result-object v5

    .line 202
    .local v5, "palette":Landroid/support/v7/graphics/Palette;
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    if-nez v7, :cond_8

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 202
    return-void

    .line 204
    :cond_8
    :try_start_3
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :try_start_4
    iget-boolean v8, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->isAlive:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    if-nez v8, :cond_a

    :cond_9
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 206
    return-void

    .line 208
    :cond_a
    :try_start_6
    iget-object v8, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-static {v0, v8}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->getBitmapBrightLevel(Landroid/graphics/Bitmap;Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;)F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    .local v1, "bitmapBrightLevel":F
    :try_start_7
    monitor-exit v7

    .line 210
    float-to-double v8, v1

    cmpl-double v7, v8, v12

    if-ltz v7, :cond_c

    .line 211
    const/4 v2, 0x3

    .line 222
    .local v2, "brightLevel":I
    :goto_1
    invoke-direct {p0, v1, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->getColorByProp(FLandroid/support/v7/graphics/Palette;)I

    move-result v3

    .line 223
    .local v3, "color":I
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mMetaBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_b

    .line 224
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    sget-object v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_b

    .line 225
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    .line 226
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-virtual {v7}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->getTimeBrightProp()F

    move-result v7

    invoke-direct {p0, v7, v5}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->getColorByProp(FLandroid/support/v7/graphics/Palette;)I

    move-result v7

    .line 225
    sput v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mColor:I

    .line 229
    :cond_b
    iget-object v7, p0, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-virtual {v7, v4, v2, v3}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->onLockWallPaperChanged(ZII)V

    .line 230
    invoke-virtual {p0}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;->onCompleted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 169
    return-void

    .line 204
    .end local v1    # "bitmapBrightLevel":F
    .end local v2    # "brightLevel":I
    .end local v3    # "color":I
    :catchall_0
    move-exception v8

    :try_start_8
    monitor-exit v7

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 231
    .end local v4    # "isLight":Z
    .end local v5    # "palette":Landroid/support/v7/graphics/Palette;
    :catchall_1
    move-exception v7

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 231
    throw v7

    .line 212
    .restart local v1    # "bitmapBrightLevel":F
    .restart local v4    # "isLight":Z
    .restart local v5    # "palette":Landroid/support/v7/graphics/Palette;
    :cond_c
    float-to-double v8, v1

    cmpg-double v7, v8, v12

    if-gez v7, :cond_d

    float-to-double v8, v1

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_d

    .line 213
    const/4 v2, 0x2

    .restart local v2    # "brightLevel":I
    goto :goto_1

    .line 214
    .end local v2    # "brightLevel":I
    :cond_d
    float-to-double v8, v1

    cmpg-double v7, v8, v10

    if-gez v7, :cond_e

    float-to-double v8, v1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_e

    .line 215
    const/4 v2, 0x1

    .restart local v2    # "brightLevel":I
    goto :goto_1

    .line 217
    .end local v2    # "brightLevel":I
    :cond_e
    float-to-double v8, v1

    const-wide v10, 0x3fd3333333333333L    # 0.3

    cmpg-double v7, v8, v10

    if-gez v7, :cond_f

    .line 218
    const/4 v4, 0x0

    .line 220
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "brightLevel":I
    goto :goto_1
.end method
