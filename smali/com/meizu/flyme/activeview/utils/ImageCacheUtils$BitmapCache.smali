.class public Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;
.super Ljava/lang/Object;
.source "ImageCacheUtils.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/utils/ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapCache"
.end annotation


# instance fields
.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;)V
    .locals 4

    .prologue
    .line 76
    iput-object p1, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->this$0:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    .line 81
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x4

    .line 83
    .local v0, "cacheSize":I
    new-instance v2, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache$1;-><init>(Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;ILcom/meizu/flyme/activeview/utils/ImageCacheUtils;)V

    iput-object v2, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 90
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 111
    :goto_1
    iput-object v1, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    goto :goto_1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/MD5Util;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/meizu/flyme/activeview/utils/MD5Util;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "hashKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->this$0:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getBitmapFromImageCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
