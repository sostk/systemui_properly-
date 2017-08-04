.class public abstract Lcom/meizu/flyme/activeview/views/IActiveView;
.super Landroid/widget/FrameLayout;
.source "IActiveView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultWidth"    # I
    .param p3, "defaultHeight"    # I
    .param p4, "defaultResId"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useAssetsResources"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract cancelAllRunningTasks()V
.end method

.method public abstract cancelDownload()V
.end method

.method public abstract cancelExtract()V
.end method

.method public abstract cancelLoadImage()V
.end method

.method public abstract clearImageCache()V
.end method

.method public abstract downloadImage(Ljava/lang/String;)V
.end method

.method public abstract downloadImage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
.end method

.method public abstract downloadPackage(Ljava/lang/String;)V
.end method

.method public abstract downloadPackage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
.end method

.method public abstract downloadVideo(Ljava/lang/String;II)V
.end method

.method public abstract getActiveViewBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getColorPrimary()I
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract gotoAnimEnd()V
.end method

.method public abstract gotoAnimStart()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/IActiveView;->isShown()Z

    move-result v0

    return v0
.end method

.method public abstract loadData(Ljava/lang/String;)V
.end method

.method public loadFromWeb(Ljava/lang/String;)V
    .locals 1
    .param p1, "webUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, v0, v0}, Lcom/meizu/flyme/activeview/views/IActiveView;->loadFromWeb(Ljava/lang/String;II)V

    .line 235
    return-void
.end method

.method public abstract loadFromWeb(Ljava/lang/String;II)V
.end method

.method public abstract loadResourceFile(Ljava/lang/String;)V
.end method

.method public abstract pauseAnimation()V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract resumeAnimation()V
.end method

.method public abstract setAutoGradientDisplay(Z)V
.end method

.method public abstract setAutoRunAnimation(Z)V
.end method

.method public abstract setDefaultImage(I)V
.end method

.method public abstract setDefaultImage(III)V
.end method

.method public abstract setDefaultImage(IILandroid/graphics/Bitmap;)V
.end method

.method public abstract setDefaultImage(IILandroid/graphics/drawable/Drawable;)V
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, -0x1

    .line 110
    invoke-virtual {p0, v0, v0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;->setDefaultImage(IILandroid/graphics/Bitmap;)V

    .line 111
    return-void
.end method

.method public abstract setDefaultImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFrameDelay(J)V
.end method

.method public abstract setImageCache(Lcom/meizu/flyme/activeview/utils/ImageCache;)V
.end method

.method protected setOnActiveViewUpgradeListener(Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;)V
    .locals 0
    .param p1, "onActiveViewUpgradeListener"    # Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    .prologue
    .line 346
    return-void
.end method

.method public abstract setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V
.end method

.method public abstract setOnLoadImageListener(Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
.end method

.method public abstract setOnUpdateListener(Lcom/meizu/flyme/activeview/listener/OnUpdateListener;)V
.end method

.method public abstract setOnVersionListener(Lcom/meizu/flyme/activeview/listener/OnVersionListener;)V
.end method

.method public abstract setParallaxListener(Lcom/meizu/flyme/activeview/listener/OnParallaxListener;)V
.end method

.method public abstract setParallaxListener(Ljava/lang/Boolean;)V
.end method

.method public abstract setPassword(Ljava/lang/String;)V
.end method

.method public abstract setTextContent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUseAssetsResources(Z)V
.end method

.method public abstract startAnimation()V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopAnimation()V
.end method

.method public abstract stopVideo()V
.end method

.method public abstract updateResource(Ljava/lang/String;)V
.end method
