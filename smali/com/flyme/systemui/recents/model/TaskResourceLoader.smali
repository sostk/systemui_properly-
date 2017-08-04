.class Lcom/flyme/systemui/recents/model/TaskResourceLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

.field mWaitingOnLoadQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "TaskResourceLoader"

    sput-object v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;Lcom/flyme/systemui/recents/model/DrawableLruCache;Lcom/flyme/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .param p1, "loadQueue"    # Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;
    .param p2, "applicationIconCache"    # Lcom/flyme/systemui/recents/model/DrawableLruCache;
    .param p3, "thumbnailCache"    # Lcom/flyme/systemui/recents/model/BitmapLruCache;
    .param p4, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "defaultApplicationIcon"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    .line 122
    iput-object p2, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    .line 123
    iput-object p3, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    .line 124
    iput-object p4, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 125
    iput-object p5, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Recents-TaskResourceLoader"

    .line 128
    const/16 v2, 0xa

    .line 127
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method


# virtual methods
.method getTaskDescriptionIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskKey"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .param p2, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "iconFilename"    # Ljava/lang/String;
    .param p4, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .param p5, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 329
    if-eqz p2, :cond_0

    .line 330
    move-object v0, p2

    .line 332
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 333
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v2, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p4, v1, v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 331
    .end local v0    # "tdIcon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p3}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "tdIcon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 335
    :cond_1
    return-object v1
.end method

.method public run()V
    .locals 15

    .prologue
    .line 160
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v10

    .line 169
    .local v10, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 165
    .end local v10    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 173
    :cond_1
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v8

    .line 174
    .local v8, "config":Lcom/flyme/systemui/recents/RecentsConfiguration;
    iget-object v4, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 177
    .local v4, "ssp":Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    if-eqz v4, :cond_d

    .line 179
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/flyme/systemui/recents/model/Task;

    move-result-object v13

    .line 180
    .local v13, "t":Lcom/flyme/systemui/recents/model/Task;
    if-eqz v13, :cond_d

    .line 181
    iget-object v0, v13, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    if-eqz v0, :cond_e

    .line 182
    const/4 v0, 0x2

    new-array v14, v0, [Lcom/flyme/systemui/recents/model/Task;

    .line 183
    .local v14, "tasks":[Lcom/flyme/systemui/recents/model/Task;
    const/4 v0, 0x0

    aput-object v13, v14, v0

    .line 184
    iget-object v0, v13, Lcom/flyme/systemui/recents/model/Task;->splitedTask:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    const/4 v1, 0x1

    aput-object v0, v14, v1

    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "cachedIcon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 189
    .local v7, "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    const/4 v9, 0x1

    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    .local v9, "i":I
    :goto_2
    if-ltz v9, :cond_c

    .line 190
    aget-object v12, v14, v9

    .line 191
    .local v12, "loadTask":Lcom/flyme/systemui/recents/model/Task;
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v1, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->get(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 192
    .local v6, "cachedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v1, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->get(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 194
    .local v7, "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-nez v6, :cond_5

    .line 195
    iget-object v1, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v2, v12, Lcom/flyme/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    iget-object v3, v12, Lcom/flyme/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p0

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 198
    if-nez v6, :cond_3

    .line 200
    iget-object v0, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 199
    invoke-virtual {v4, v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 201
    .local v11, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v11, :cond_3

    .line 202
    sget-boolean v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    iget-object v0, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v11, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 207
    .end local v11    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    if-nez v6, :cond_4

    .line 208
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v1, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v6}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 215
    :cond_5
    iput-object v6, v12, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    if-nez v9, :cond_b

    .line 217
    if-nez v7, :cond_9

    .line 218
    iget v0, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    .line 219
    sget-boolean v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 220
    sget-object v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_6
    iget-object v0, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    move-result-object v7

    .line 223
    :cond_7
    if-nez v7, :cond_8

    .line 224
    new-instance v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .end local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    invoke-direct {v7}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;-><init>()V

    .line 225
    .restart local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 226
    iget v0, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    iput v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    .line 231
    :cond_8
    iget v0, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 232
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v1, v12, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v7}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 235
    :cond_9
    iget-object v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v12, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 236
    iget v0, v12, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    iget v1, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    if-eq v0, v1, :cond_a

    iget v0, v12, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    const v1, -0x101011

    if-ne v0, v1, :cond_b

    .line 237
    :cond_a
    iget v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    invoke-virtual {v12, v0}, Lcom/flyme/systemui/recents/model/Task;->updateColorPrimary(I)V

    .line 189
    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 241
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    .end local v12    # "loadTask":Lcom/flyme/systemui/recents/model/Task;
    :cond_c
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_d

    .line 243
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/recents/model/TaskResourceLoader$1;

    invoke-direct {v1, p0, v13}, Lcom/flyme/systemui/recents/model/TaskResourceLoader$1;-><init>(Lcom/flyme/systemui/recents/model/TaskResourceLoader;Lcom/flyme/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    .end local v9    # "i":I
    .end local v13    # "t":Lcom/flyme/systemui/recents/model/Task;
    .end local v14    # "tasks":[Lcom/flyme/systemui/recents/model/Task;
    :cond_d
    :goto_3
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v1

    .line 315
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    .line 316
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/model/TaskResourceLoadQueue;->wait()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    monitor-exit v1

    goto/16 :goto_0

    .line 251
    .restart local v13    # "t":Lcom/flyme/systemui/recents/model/Task;
    :cond_e
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v1, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->get(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 252
    .restart local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v1, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->get(Lcom/flyme/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .line 255
    .restart local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    if-nez v6, :cond_12

    .line 256
    iget-object v1, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v2, v13, Lcom/flyme/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    iget-object v3, v13, Lcom/flyme/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p0

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/flyme/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 259
    if-nez v6, :cond_10

    .line 261
    iget-object v0, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    .line 260
    invoke-virtual {v4, v0, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 262
    .restart local v11    # "info":Landroid/content/pm/ActivityInfo;
    if-eqz v11, :cond_10

    .line 263
    sget-boolean v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_f
    iget-object v0, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v11, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 268
    .end local v11    # "info":Landroid/content/pm/ActivityInfo;
    :cond_10
    if-nez v6, :cond_11

    .line 269
    iget-object v6, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 274
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/flyme/systemui/recents/model/DrawableLruCache;

    iget-object v1, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v6}, Lcom/flyme/systemui/recents/model/DrawableLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 277
    :cond_12
    if-nez v7, :cond_16

    .line 278
    iget v0, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    .line 279
    sget-boolean v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_13
    iget-object v0, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    move-result-object v7

    .line 282
    :cond_14
    if-nez v7, :cond_15

    .line 283
    new-instance v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;

    .end local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    invoke-direct {v7}, Lcom/flyme/systemui/recents/misc/BitmapWithColor;-><init>()V

    .line 284
    .restart local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget v0, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    iput v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    .line 290
    :cond_15
    iget v0, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_16

    .line 291
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/flyme/systemui/recents/model/BitmapLruCache;

    iget-object v1, v13, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v7}, Lcom/flyme/systemui/recents/model/BitmapLruCache;->put(Lcom/flyme/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 294
    :cond_16
    iput-object v6, v13, Lcom/flyme/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v13, Lcom/flyme/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 296
    iget v0, v13, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    iget v1, v8, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    if-eq v0, v1, :cond_17

    iget v0, v13, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    const v1, -0x101011

    if-ne v0, v1, :cond_18

    .line 297
    :cond_17
    iget v0, v7, Lcom/flyme/systemui/recents/misc/BitmapWithColor;->mColor:I

    invoke-virtual {v13, v0}, Lcom/flyme/systemui/recents/model/Task;->updateColorPrimary(I)V

    .line 299
    :cond_18
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_d

    .line 300
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/recents/model/TaskResourceLoader$2;

    invoke-direct {v1, p0, v13}, Lcom/flyme/systemui/recents/model/TaskResourceLoader$2;-><init>(Lcom/flyme/systemui/recents/model/TaskResourceLoader;Lcom/flyme/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 318
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Lcom/flyme/systemui/recents/misc/BitmapWithColor;
    .end local v13    # "t":Lcom/flyme/systemui/recents/model/Task;
    :catch_1
    move-exception v10

    .line 319
    .restart local v10    # "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    .line 313
    .end local v10    # "ie":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 138
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 140
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 135
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 149
    iput-object v1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 152
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    .line 153
    iput-object v1, p0, Lcom/flyme/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 146
    :cond_0
    return-void
.end method
