.class public Lcom/flyme/systemui/recents/model/RunningScapture;
.super Ljava/lang/Object;
.source "RunningScapture.java"


# static fields
.field static mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capture()Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v5, 0x3f19999a    # 0.6f

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 19
    .local v10, "start":J
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v7

    .line 20
    .local v7, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    const v9, 0x3f19999a    # 0.6f

    .line 23
    .local v9, "scaptureScaled":F
    :try_start_0
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v1, :cond_0

    .line 24
    iget-object v0, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 27
    .local v0, "source":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 29
    const/16 v3, 0x4e20

    const v4, 0x222df

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 25
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 44
    .end local v0    # "source":Landroid/graphics/Rect;
    :goto_0
    if-eqz v12, :cond_1

    .line 46
    :try_start_1
    new-instance v1, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;-><init>(Landroid/graphics/Bitmap;Z)V

    sput-object v1, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    :goto_1
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenshot spend : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/Constants;->pfmLog(Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    return-object v1

    .line 31
    :cond_0
    :try_start_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v7, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    .restart local v0    # "source":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 36
    const/16 v3, 0x4e20

    const v4, 0x222df

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    .local v12, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 38
    .end local v0    # "source":Landroid/graphics/Rect;
    .end local v12    # "thumbnail":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 39
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 40
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 41
    const/4 v12, 0x0

    .local v12, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 47
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .end local v12    # "thumbnail":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v8

    .line 48
    .restart local v8    # "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 49
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 50
    new-instance v1, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    invoke-direct {v1, v13}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    goto :goto_1

    .line 54
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    new-instance v1, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    invoke-direct {v1, v13}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    goto :goto_2
.end method

.method public static getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    sget-object v0, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    iget-object v0, v0, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 65
    :cond_0
    return-object v1
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/systemui/recents/model/RunningScapture;->mBitmapWithColor:Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 68
    return-void
.end method
