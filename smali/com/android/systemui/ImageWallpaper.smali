.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;,
        Lcom/android/systemui/ImageWallpaper$1;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field mIsHwAccelerated:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;

.field private wallpaperObserver:Lcom/meizu/keyguard/auto_color/WallpaperObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ImageWallpaper;I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper;->updateBackground(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 792
    new-instance v0, Lcom/android/systemui/ImageWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$1;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 65
    return-void
.end method

.method private initObserver()V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    .line 787
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->register()V

    .line 788
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 788
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 790
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->updateWallpaperColorBroadcast()V

    .line 785
    return-void
.end method

.method private static isEmulator()Z
    .locals 3

    .prologue
    .line 109
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.kernel.qemu"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateBackground(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 800
    if-nez p1, :cond_1

    const v0, 0x3d4ccccd    # 0.05f

    .line 802
    .local v0, "alpha":F
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/flyme/systemui/recents/misc/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-boolean v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceCreated:Z

    if-eqz v2, :cond_0

    .line 809
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v2, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 799
    :cond_0
    return-void

    .line 800
    .end local v0    # "alpha":F
    :cond_1
    if-ne p1, v3, :cond_2

    const v0, 0x3dcccccd    # 0.1f

    .restart local v0    # "alpha":F
    goto :goto_0

    .end local v0    # "alpha":F
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    iput-object v4, p0, Lcom/android/systemui/ImageWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    .line 805
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 806
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 84
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 88
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper;->initObserver()V

    .line 82
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->unregister()V

    .line 96
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    .line 102
    :cond_0
    return-void
.end method
