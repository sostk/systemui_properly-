.class public Lcom/flyme/systemui/recents/model/WallPaperHelper;
.super Ljava/lang/Object;
.source "WallPaperHelper.java"


# static fields
.field static wallpaper:[Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v9, Lcom/flyme/systemui/recents/model/WallPaperHelper;

    monitor-enter v9

    .line 17
    :try_start_0
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 22
    .local v8, "manager":Landroid/app/WallpaperManager;
    :try_start_1
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 23
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 24
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 26
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 27
    sget-object v10, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v11, v12, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    aput-object v11, v10, v1

    .line 28
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .end local v0    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "manager":Landroid/app/WallpaperManager;
    :goto_0
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    return-object v1

    .line 29
    .restart local v8    # "manager":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v7

    .line 30
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 31
    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 32
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "manager":Landroid/app/WallpaperManager;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 35
    :cond_0
    const/4 v1, 0x2

    :try_start_4
    new-array v2, v1, [Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sput-object v2, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized resetWallPaper()V
    .locals 2

    .prologue
    const-class v0, Lcom/flyme/systemui/recents/model/WallPaperHelper;

    monitor-enter v0

    .line 41
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/flyme/systemui/recents/model/WallPaperHelper;->wallpaper:[Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 40
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
