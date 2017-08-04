.class public Lcom/meizu/flyme/activeview/task/LoadImageTask;
.super Landroid/os/AsyncTask;
.source "LoadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LoadImageTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field mOnAsyncTaskListener:Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;

.field private mReqHeight:F

.field private mReqWidth:F

.field private mView:Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

.field mbIsCached:Z

.field private mbUseAssetsFile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/views/BaseActiveItemView;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;FF)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Lcom/meizu/flyme/activeview/views/BaseActiveItemView;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;
    .param p5, "reqWidth"    # F
    .param p6, "reqHeight"    # F

    .prologue
    .line 37
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/meizu/flyme/activeview/task/LoadImageTask;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/views/BaseActiveItemView;Ljava/lang/String;ZLcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;FF)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/views/BaseActiveItemView;Ljava/lang/String;ZLcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Lcom/meizu/flyme/activeview/views/BaseActiveItemView;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "useAssetsFile"    # Z
    .param p5, "listener"    # Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;
    .param p6, "reqWidth"    # F
    .param p7, "reqHeight"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mView:Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

    .line 43
    iput-object p3, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mbUseAssetsFile:Z

    .line 45
    iput-object p5, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mOnAsyncTaskListener:Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;

    .line 47
    iput p6, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mReqWidth:F

    .line 48
    iput p7, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mReqHeight:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mbIsCached:Z

    .line 50
    return-void
.end method

.method private removeRetainedViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mView:Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

    .line 118
    iput-object v0, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 63
    .local v6, "startTime":J
    :try_start_0
    invoke-static {}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getInstance()Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getBitmapFromImageCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v8, "LoadImageTask"

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GET MemoryCache="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", bitmap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez v0, :cond_3

    .line 69
    :cond_0
    iget-boolean v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mbUseAssetsFile:Z

    if-nez v8, :cond_4

    .line 76
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 82
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .local v2, "endTime":J
    const-string/jumbo v8, "LoadImageTask"

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Load image file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", UseTime ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-object v0

    .line 59
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "endTime":J
    .end local v6    # "startTime":J
    :cond_2
    return-object v12

    .line 65
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "startTime":J
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 66
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mbIsCached:Z

    .line 67
    return-object v0

    .line 70
    :cond_4
    iget-object v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 71
    iget-object v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 72
    .local v5, "imgInputStream":Ljava/io/InputStream;
    iget v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mReqWidth:F

    float-to-int v8, v8

    iget v9, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mReqHeight:F

    float-to-int v9, v9

    invoke-static {v5, v8, v9}, Lcom/meizu/flyme/activeview/utils/BitmapUtils;->decodeSampledBitmapFromStream(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "imgInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "LoadImageTask"

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "create image error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v12

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "file":Ljava/io/File;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    iget v9, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mReqWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mReqHeight:F

    float-to-int v10, v10

    invoke-static {v8, v9, v10}, Lcom/meizu/flyme/activeview/utils/BitmapUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mOnAsyncTaskListener:Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;

    if-nez v1, :cond_1

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    if-nez p1, :cond_3

    .line 114
    :cond_0
    :goto_1
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mOnAsyncTaskListener:Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;

    invoke-interface {v1, p0}, Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;->onLoadFinished(Landroid/os/AsyncTask;)V

    .line 96
    iput-object v2, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mOnAsyncTaskListener:Lcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;

    goto :goto_0

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->removeRetainedViews()V

    .line 100
    return-void

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mView:Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LoadImageTask"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reqWidth  bm.getWidth()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bm.getHeight()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", byteCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mView:Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mbIsCached:Z

    if-eqz v1, :cond_4

    .line 112
    :goto_2
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->removeRetainedViews()V

    goto :goto_1

    .line 109
    :cond_4
    invoke-static {}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getInstance()Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/task/LoadImageTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->putBitmapToImageCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
