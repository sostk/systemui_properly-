.class Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;-><init>(Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;

.field final synthetic val$this$0:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;ILcom/meizu/flyme/activeview/utils/ImageCacheUtils;)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache$1;->this$1:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache;

    iput-object p3, p0, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache$1;->val$this$0:Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 83
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils$BitmapCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
