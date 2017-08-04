.class Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;
.super Ljava/lang/Object;
.source "StrokeDrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/sharewidget/utils/StrokeDrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrokeLruCache"
.end annotation


# static fields
.field private static mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final mCacheSize:I

.field private static final mMaxMemory:I

.field private static mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mStrokeCanvas:Landroid/graphics/Canvas;

.field private static mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMaxMemory:I

    .line 190
    sget v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMaxMemory:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mCacheSize:I

    .line 191
    new-instance v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache$1;

    sget v1, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache$1;-><init>(I)V

    sput-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMemoryCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLruCache()V
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMemoryCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    goto :goto_0
.end method

.method public static getExtraAlphaBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "hashCode"    # I
    .param p3, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "imageKey":Ljava/lang/String;
    sget-object v5, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainBlurMaskFilter()Landroid/graphics/BlurMaskFilter;

    move-result-object v3

    .line 207
    .local v3, "maskFilter":Landroid/graphics/BlurMaskFilter;
    invoke-static {}, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 208
    .local v1, "filterPaint":Landroid/graphics/Paint;
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v5, 0x2

    .line 209
    new-array v5, v5, [I

    invoke-virtual {p3, v1, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 210
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object v4

    .line 204
    .end local v1    # "filterPaint":Landroid/graphics/Paint;
    .end local v3    # "maskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public static obtainBlurMaskFilter()Landroid/graphics/BlurMaskFilter;
    .locals 3

    .prologue
    .line 230
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41200000    # 10.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_0
.end method

.method public static obtainStokePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mStrokePaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public static obtainStrokeCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mStrokeCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    sget-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mStrokeCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 224
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/meizu/sharewidget/utils/StrokeDrawableUtils$StrokeLruCache;->mStrokeCanvas:Landroid/graphics/Canvas;

    goto :goto_0
.end method
