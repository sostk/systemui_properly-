.class public Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;
.super Ljava/lang/Object;
.source "ImageCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;
    }
.end annotation


# static fields
.field private static volatile imageCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;


# instance fields
.field private mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private getCache()Lcom/meizu/flyme/activeview/utils/ImageCache;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;-><init>(Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    goto :goto_0
.end method

.method public static getInstance()Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->imageCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->imageCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    return-object v0

    :cond_0
    const-class v1, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->imageCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    if-eqz v0, :cond_1

    .line 18
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    invoke-direct {v0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->imageCacheUtilsInstance:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getCache()Lcom/meizu/flyme/activeview/utils/ImageCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/flyme/activeview/utils/ImageCache;->clearCache()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    .line 71
    return-void
.end method

.method public getBitmapFromImageCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getCache()Lcom/meizu/flyme/activeview/utils/ImageCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/meizu/flyme/activeview/utils/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 65
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 62
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public putBitmapToImageCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getCache()Lcom/meizu/flyme/activeview/utils/ImageCache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/meizu/flyme/activeview/utils/ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 53
    return-void
.end method

.method public setImageCache(Lcom/meizu/flyme/activeview/utils/ImageCache;)V
    .locals 1
    .param p1, "cache"    # Lcom/meizu/flyme/activeview/utils/ImageCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    iput-object p1, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    .line 36
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->mImageCache:Lcom/meizu/flyme/activeview/utils/ImageCache;

    invoke-interface {v0}, Lcom/meizu/flyme/activeview/utils/ImageCache;->clearCache()V

    goto :goto_0
.end method
