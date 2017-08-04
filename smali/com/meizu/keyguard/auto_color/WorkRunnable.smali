.class abstract Lcom/meizu/keyguard/auto_color/WorkRunnable;
.super Ljava/lang/Object;
.source "WallpaperObserver.java"

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

.field private final mWallpaperObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/keyguard/auto_color/WallpaperObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/keyguard/auto_color/WallpaperObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperObserver"    # Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->isAlive:Z

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method

.method private static cBright(I)D
    .locals 6
    .param p0, "color"    # I

    .prologue
    .line 141
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

.method private static getBitmapBrightLevel(Landroid/graphics/Bitmap;Lcom/meizu/keyguard/auto_color/WallpaperObserver;)F
    .locals 18
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "wallpaperObserver"    # Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 147
    .local v7, "localWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 149
    .local v6, "localHeight":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->brightXY:[[I

    array-length v10, v15

    .line 150
    .local v10, "numX":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->brightXY:[[I

    const/16 v16, 0x0

    aget-object v15, v15, v16

    array-length v11, v15

    .line 152
    .local v11, "numY":I
    new-array v13, v10, [I

    .line 153
    .local v13, "x":[I
    new-array v14, v11, [I

    .line 155
    .local v14, "y":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v15, v13

    if-ge v4, v15, :cond_0

    .line 156
    mul-int v15, v7, v4

    div-int/2addr v15, v10

    aput v15, v13, v4

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v15, v14

    if-ge v4, v15, :cond_1

    .line 159
    mul-int v15, v6, v4

    div-int/2addr v15, v11

    aput v15, v14, v4

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_1
    const/4 v12, 0x0

    .line 163
    .local v12, "number":I
    const-wide/16 v2, 0x0

    .line 165
    .local v2, "bright":D
    const/4 v4, 0x0

    :goto_2
    array-length v15, v13

    if-ge v4, v15, :cond_4

    .line 166
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v15, v14

    if-ge v5, v15, :cond_3

    .line 167
    add-int/lit8 v12, v12, 0x1

    .line 168
    aget v15, v13, v4

    aget v16, v14, v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15}, Lcom/meizu/keyguard/auto_color/WorkRunnable;->cBright(I)D

    move-result-wide v8

    .line 170
    .local v8, "localTemp":D
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->brightXY:[[I

    aget-object v15, v15, v4

    double-to-int v0, v8

    move/from16 v16, v0

    aput v16, v15, v5

    .line 171
    sget v15, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->threshold_bright:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    cmpl-double v15, v8, v16

    if-lez v15, :cond_2

    .line 172
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, v16

    .line 166
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 165
    .end local v8    # "localTemp":D
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 176
    .end local v5    # "j":I
    :cond_4
    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v16, v2, v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    return v15
.end method


# virtual methods
.method abstract onCompleted()V
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide v6, 0x3fee666666666666L    # 0.95

    .line 105
    iget-boolean v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->isAlive:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 110
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    iget-object v3, v3, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->openDesktopMask()Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    const/4 v2, 0x2

    .line 132
    .local v2, "brightLevel":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    iget-object v3, v3, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onWallPaperChanged(I)V

    .line 133
    invoke-virtual {p0}, Lcom/meizu/keyguard/auto_color/WorkRunnable;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 104
    return-void

    .line 113
    .end local v2    # "brightLevel":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-nez v3, :cond_3

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 115
    return-void

    .line 117
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    :try_start_3
    iget-boolean v4, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->isAlive:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    if-nez v4, :cond_5

    :cond_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 119
    return-void

    .line 121
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/meizu/keyguard/auto_color/WorkRunnable;->mWallpaperObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    invoke-static {v0, v4}, Lcom/meizu/keyguard/auto_color/WorkRunnable;->getBitmapBrightLevel(Landroid/graphics/Bitmap;Lcom/meizu/keyguard/auto_color/WallpaperObserver;)F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    .local v1, "bitmapBrightLevel":F
    :try_start_6
    monitor-exit v3

    .line 123
    float-to-double v4, v1

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_6

    .line 124
    const/4 v2, 0x2

    .restart local v2    # "brightLevel":I
    goto :goto_0

    .line 117
    .end local v1    # "bitmapBrightLevel":F
    .end local v2    # "brightLevel":I
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v3

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 134
    throw v3

    .line 125
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapBrightLevel":F
    :cond_6
    float-to-double v4, v1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_7

    float-to-double v4, v1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_7

    .line 126
    const/4 v2, 0x1

    .restart local v2    # "brightLevel":I
    goto/16 :goto_0

    .line 128
    .end local v2    # "brightLevel":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "brightLevel":I
    goto/16 :goto_0
.end method
