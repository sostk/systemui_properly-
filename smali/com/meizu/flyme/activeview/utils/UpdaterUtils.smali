.class public Lcom/meizu/flyme/activeview/utils/UpdaterUtils;
.super Ljava/lang/Object;
.source "UpdaterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;,
        Lcom/meizu/flyme/activeview/utils/UpdaterUtils$BitmapCache;
    }
.end annotation


# static fields
.field private static volatile updaterUtilsInstance:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mQueue:Lcom/android/volley/RequestQueue;

    .line 46
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$BitmapCache;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$BitmapCache;-><init>(Lcom/meizu/flyme/activeview/utils/UpdaterUtils;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/flyme/activeview/utils/UpdaterUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/UpdaterUtils;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->updaterUtilsInstance:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->updaterUtilsInstance:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    return-object v0

    :cond_0
    const-class v1, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->updaterUtilsInstance:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    if-eqz v0, :cond_1

    .line 38
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 36
    :cond_1
    :try_start_1
    new-instance v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->updaterUtilsInstance:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getImageListener(Landroid/widget/ImageView;IILcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultImageResId"    # I
    .param p3, "errorImageResId"    # I
    .param p4, "listener"    # Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    .prologue
    .line 83
    new-instance v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;-><init>(Lcom/meizu/flyme/activeview/utils/UpdaterUtils;ILandroid/widget/ImageView;Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;I)V

    return-object v0
.end method

.method public getJsonByUrl(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 63
    .local v0, "jsonObjectRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 64
    return-void

    .line 60
    .end local v0    # "jsonObjectRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    return-void
.end method

.method public getJsonPost(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONObject;
    .param p3, "listener"    # Lcom/android/volley/Response$Listener;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$1;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$1;-><init>(Lcom/meizu/flyme/activeview/utils/UpdaterUtils;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 79
    .local v0, "jsonObjectRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 80
    return-void

    .line 68
    .end local v0    # "jsonObjectRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "defaultImageResId"    # I
    .param p4, "errorImageResId"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IILcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;)V

    .line 51
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;IILcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "defaultImageResId"    # I
    .param p4, "errorImageResId"    # I
    .param p5, "listener"    # Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->getImageListener(Landroid/widget/ImageView;IILcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v0

    .line 55
    .local v0, "imageListener":Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v1, p2, v0}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 56
    return-void
.end method
