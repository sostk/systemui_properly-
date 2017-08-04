.class public Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
.super Lcom/meizu/flyme/activeview/views/IActiveView;
.source "ActiveViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;,
        Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;,
        Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    }
.end annotation


# static fields
.field private static final ACTIVE_TIMELINE_KEY:Ljava/lang/String; = "active_view_timeline"

.field static final ELEMENT_BUTTON:Ljava/lang/String; = "button"

.field static final ELEMENT_IMAGE:Ljava/lang/String; = "image"

.field static final ELEMENT_PARTICLE:Ljava/lang/String; = "particle"

.field static final ELEMENT_PARTICLE2D:Ljava/lang/String; = "particle2D"

.field static final ELEMENT_TEXT:Ljava/lang/String; = "text"

.field static final ELEMENT_VIDEO:Ljava/lang/String; = "video"

.field public static final EVENT_TYPE_CLICK:Ljava/lang/String; = "click"

.field public static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "touch"

.field private static final INTERPOLATOR_TYPE_LINEAR:Ljava/lang/String; = "linear"

.field private static final INTERPOLATOR_TYPE_SHAKE:Ljava/lang/String; = "shake"

.field private static final LOG_TAG:Ljava/lang/String; = "activeview.ActiveView"

.field private static final VIEW_IMAGEVIEW:Ljava/lang/String; = "imageview"

.field private static final VIEW_TEXTVIEW:Ljava/lang/String; = "textview"


# instance fields
.field private mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

.field private mAsyncTaskListener:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;

.field private mAutoGradientDisplay:Z

.field private mAutoRunAnim:Z

.field private mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCacheDir:Ljava/lang/String;

.field private mColorPrimary:I

.field private mContext:Landroid/content/Context;

.field private mDefaultImageView:Landroid/widget/ImageView;

.field private mDownloadTask:Landroid/os/AsyncTask;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGraphicsAnimViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;",
            ">;"
        }
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field private mLoadDataTask:Lcom/meizu/flyme/activeview/task/LoadDataTask;

.field private mLoadImageTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/AsyncTask;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasured:Z

.field private mMeasuredWidth:I

.field private mOnActiveViewUpgradeListener:Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

.field private mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

.field private mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

.field private mOnParallaxListener:Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

.field private mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

.field private mOnVersionListener:Lcom/meizu/flyme/activeview/listener/OnVersionListener;

.field private mParallaxData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;",
            ">;"
        }
    .end annotation
.end field

.field private mRender:Landroid/opengl/GLSurfaceView$Renderer;

.field private mScaleRate:F

.field private mShowAfterImagesLoaded:Z

.field private mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

.field private mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

.field private mTimelineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/flyme/activeview/moveline/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field private mTweenItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpgradeChecked:Z

.field private mUrl:Ljava/lang/String;

.field private mUseParallax:Z

.field private mViewElementCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;

.field private mZipExtractTask:Landroid/os/AsyncTask;

.field private mZipExtractedDir:Ljava/lang/String;

.field private mZipPassword:Ljava/lang/String;

.field private mbUseAssetsResources:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;-><init>(Landroid/content/Context;Z)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultWidth"    # I
    .param p3, "defaultHeight"    # I
    .param p4, "defaultResId"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;-><init>(Landroid/content/Context;Z)V

    .line 227
    invoke-virtual {p0, p2, p3, p4}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImage(III)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTweenItemMap:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    iput v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    .line 164
    iput v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    .line 165
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasured:Z

    .line 182
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoRunAnim:Z

    .line 183
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoGradientDisplay:Z

    .line 186
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUseParallax:Z

    .line 190
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mShowAfterImagesLoaded:Z

    .line 191
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUpgradeChecked:Z

    .line 232
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->init(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useAssetsResources"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/IActiveView;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTweenItemMap:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    iput v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    .line 164
    iput v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    .line 165
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasured:Z

    .line 182
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoRunAnim:Z

    .line 183
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoGradientDisplay:Z

    .line 186
    iput-boolean v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUseParallax:Z

    .line 190
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mShowAfterImagesLoaded:Z

    .line 191
    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUpgradeChecked:Z

    .line 210
    iput-boolean p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    .line 211
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->init(Landroid/content/Context;)V

    .line 212
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->loadData(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->clearActiveView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->createViewsFromActiveData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnActiveViewUpgradeListener:Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoRunAnim:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/json/NewElementInfo;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
    .param p1, "x1"    # Lcom/meizu/flyme/activeview/json/NewElementInfo;
    .param p2, "x2"    # Lcom/meizu/flyme/activeview/adapter/ViewAdapter;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateData(Lcom/meizu/flyme/activeview/json/NewElementInfo;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Landroid/os/AsyncTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setLoadImageFinished(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Lcom/meizu/flyme/activeview/listener/OnUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->extractZipFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUpgradeChecked:Z

    return p1
.end method

.method static synthetic access$902(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/json/ActiveData;)Lcom/meizu/flyme/activeview/json/ActiveData;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/flyme/activeview/views/ActiveViewImpl;
    .param p1, "x1"    # Lcom/meizu/flyme/activeview/json/ActiveData;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    return-object p1
.end method

.method private calScaleRate(F)F
    .locals 5
    .param p1, "styleWidth"    # F

    .prologue
    .line 1252
    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1253
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1254
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1255
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1258
    .local v1, "width":I
    iget v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    if-nez v3, :cond_1

    .line 1262
    :cond_0
    int-to-float v3, v1

    div-float v3, p1, v3

    return v3

    :cond_1
    const/4 v3, 0x0

    .line 1258
    cmpl-float v3, p1, v3

    if-eqz v3, :cond_0

    .line 1259
    iget v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    int-to-float v3, v3

    div-float v3, p1, v3

    return v3
.end method

.method private cancelLoadData()V
    .locals 2

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadDataTask:Lcom/meizu/flyme/activeview/task/LoadDataTask;

    if-nez v0, :cond_0

    .line 2048
    :goto_0
    return-void

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadDataTask:Lcom/meizu/flyme/activeview/task/LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/LoadDataTask;->cancel(Z)Z

    goto :goto_0
.end method

.method private checkVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "infoVersion"    # Ljava/lang/String;
    .param p2, "miniVersion"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "activeview.ActiveView"

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VERSION:2.0.0, infoVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", miniVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "2.0.0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0
.end method

.method private clearActiveView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    .line 365
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->stopAnimation()V

    .line 366
    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 367
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 368
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->removeAllViews()V

    .line 373
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private clearCacheFolder()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mCacheDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 708
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$4;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$4;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private create2DParticleView(Lcom/meizu/flyme/activeview/json/Particle2DAttr;)Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    .locals 14
    .param p1, "particle2DAttr"    # Lcom/meizu/flyme/activeview/json/Particle2DAttr;

    .prologue
    .line 1083
    if-eqz p1, :cond_0

    .line 1087
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "className"

    .line 1088
    sget-object v12, Lcom/meizu/flyme/activeview/graphicsanim/renderable/ParticleSystem;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "id"

    .line 1089
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getPositionValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v5

    .line 1092
    .local v5, "position":[Ljava/lang/Float;
    if-nez v5, :cond_1

    .line 1097
    :goto_0
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getOffsetValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v2

    .line 1098
    .local v2, "offset":[Ljava/lang/Float;
    if-nez v2, :cond_2

    .line 1103
    :goto_1
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getSpeedValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v9

    .line 1104
    .local v9, "speed":[Ljava/lang/Float;
    if-nez v9, :cond_3

    .line 1109
    :goto_2
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getRandomSpeedValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v6

    .line 1110
    .local v6, "randomSpeed":[Ljava/lang/Float;
    if-nez v6, :cond_4

    .line 1115
    :goto_3
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getTransmitCycle()Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_5

    .line 1119
    :goto_4
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getTransmitNum()Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_6

    .line 1124
    :goto_5
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getRegionRadiusValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v11

    if-nez v11, :cond_7

    .line 1128
    :goto_6
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getColors()[I

    move-result-object v11

    if-nez v11, :cond_8

    .line 1133
    :goto_7
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "circle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1135
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "image"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1141
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "rect"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1145
    :goto_8
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getWidthValues(Landroid/content/Context;)[F

    move-result-object v11

    if-nez v11, :cond_c

    .line 1154
    :goto_9
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getHeightValues(Landroid/content/Context;)[F

    move-result-object v11

    if-nez v11, :cond_e

    .line 1181
    :goto_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v7, "renders":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v3, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v3, v11, v12, v7}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/List;)V

    .line 1187
    .local v3, "particleView":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    return-object v3

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "offset":[Ljava/lang/Float;
    .end local v3    # "particleView":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    .end local v5    # "position":[Ljava/lang/Float;
    .end local v6    # "randomSpeed":[Ljava/lang/Float;
    .end local v7    # "renders":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v9    # "speed":[Ljava/lang/Float;
    :cond_0
    const/4 v11, 0x0

    .line 1084
    return-object v11

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "position":[Ljava/lang/Float;
    :cond_1
    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    .line 1093
    aget-object v12, v5, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v11, "y"

    const/4 v12, 0x1

    .line 1094
    aget-object v12, v5, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .restart local v2    # "offset":[Ljava/lang/Float;
    :cond_2
    const-string/jumbo v11, "randomOutsetX"

    const/4 v12, 0x0

    .line 1099
    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v11, "randomOutsetY"

    const/4 v12, 0x1

    .line 1100
    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_1

    .restart local v9    # "speed":[Ljava/lang/Float;
    :cond_3
    const-string/jumbo v11, "speedX"

    const/4 v12, 0x0

    .line 1105
    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v11, "speedY"

    const/4 v12, 0x1

    .line 1106
    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_2

    .restart local v6    # "randomSpeed":[Ljava/lang/Float;
    :cond_4
    const-string/jumbo v11, "randomSpeedX"

    const/4 v12, 0x0

    .line 1111
    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v11, "randomSpeedY"

    const/4 v12, 0x1

    .line 1112
    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v11, "transmitCycle"

    .line 1116
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getTransmitCycle()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v11, "activeview.ActiveView"

    .line 1120
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "particle2DAttr.getTransmitNum()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getTransmitNum()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "transmitNum"

    .line 1121
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getTransmitNum()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v11, "regionRadius"

    .line 1125
    iget-object v12, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v12}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getRegionRadiusValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v11, "colorList"

    .line 1129
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getColors()[I

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_7

    :cond_9
    const-string/jumbo v11, "particleType"

    const-string/jumbo v12, "circle"

    .line 1134
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v11, "particleType"

    const-string/jumbo v12, "image"

    .line 1136
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "path":Ljava/lang/String;
    const-string/jumbo v11, "activeview.ActiveView"

    .line 1138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "paticle image path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "bitmapPath"

    .line 1139
    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v4    # "path":Ljava/lang/String;
    :cond_b
    const-string/jumbo v11, "particleType"

    const-string/jumbo v12, "rect"

    .line 1142
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1146
    :cond_c
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getWidthValues(Landroid/content/Context;)[F

    move-result-object v10

    .line 1147
    .local v10, "tempValues":[F
    array-length v8, v10

    .local v8, "size":I
    const/4 v1, 0x0

    .line 1148
    .local v1, "i":I
    :goto_b
    if-lt v1, v8, :cond_d

    const-string/jumbo v11, "particleWidth"

    .line 1151
    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_9

    .line 1149
    :cond_d
    aget v11, v10, v1

    iget v12, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v11, v12

    aput v11, v10, v1

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1155
    .end local v1    # "i":I
    .end local v8    # "size":I
    .end local v10    # "tempValues":[F
    :cond_e
    iget-object v11, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v11}, Lcom/meizu/flyme/activeview/json/Particle2DAttr;->getHeightValues(Landroid/content/Context;)[F

    move-result-object v10

    .line 1156
    .restart local v10    # "tempValues":[F
    array-length v8, v10

    .restart local v8    # "size":I
    const/4 v1, 0x0

    .line 1157
    .restart local v1    # "i":I
    :goto_c
    if-lt v1, v8, :cond_f

    const-string/jumbo v11, "particleHeight"

    .line 1160
    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_a

    .line 1158
    :cond_f
    aget v11, v10, v1

    iget v12, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v11, v12

    aput v11, v10, v1

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private createGLTextureView()Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1209
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1f4

    const/16 v3, 0x19a

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x12c

    const/16 v3, 0x14

    .line 1210
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1212
    new-instance v0, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 1213
    .local v0, "glTextureView":Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;
    new-instance v2, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vertex.sh"

    const-string/jumbo v5, "frag4.sh"

    invoke-direct {v2, v3, v4, v5}, Lcom/meizu/flyme/activeview/renderer/utils/GLRendererImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->setInnnerSurfaceChangedListener(Lcom/meizu/flyme/activeview/renderer/textureview/GLBaseRender;)V

    .line 1215
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/renderer/textureview/GLTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    return-object v0
.end method

.method private createParticleView(Lcom/meizu/flyme/activeview/json/Element;)V
    .locals 9
    .param p1, "elementData"    # Lcom/meizu/flyme/activeview/json/Element;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 1191
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x1f4

    const/16 v2, 0x19a

    invoke-direct {v7, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v7, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x12c

    const/16 v2, 0x14

    .line 1192
    invoke-virtual {v7, v0, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1194
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v8, "shooters":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/renderer/particle/ParticleShooter;>;"
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/renderer/particle/RenderCreator;->createParticleRender(Landroid/content/Context;)Lcom/meizu/flyme/activeview/renderer/particle/ParticleRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mRender:Landroid/opengl/GLSurfaceView$Renderer;

    .line 1200
    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1201
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 1202
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1203
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1204
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1205
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mRender:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1206
    return-void
.end method

.method private createViewsFromActiveData()V
    .locals 23

    .prologue
    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    const-string/jumbo v19, "activeview.ActiveView"

    .line 902
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mActiveInfo = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, ", mActiveInfo.getContent()="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    return-void

    .line 901
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/flyme/activeview/json/ActiveData;->getContent()Lcom/meizu/flyme/activeview/json/Content;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/flyme/activeview/json/ActiveData;->getContent()Lcom/meizu/flyme/activeview/json/Content;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/flyme/activeview/json/Content;->getPages()Ljava/util/List;

    move-result-object v13

    .line 907
    .local v13, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Page;>;"
    if-eqz v13, :cond_4

    .line 911
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 912
    .local v14, "pageSize":I
    if-gtz v14, :cond_5

    :goto_1
    const/4 v8, 0x0

    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v12, 0x0

    .line 929
    .end local v8    # "frameLayout":Landroid/widget/FrameLayout;
    .local v12, "pageIndex":I
    :goto_2
    if-lt v12, v14, :cond_7

    .line 1063
    if-nez v8, :cond_17

    const-string/jumbo v18, "activeview.ActiveView"

    const-string/jumbo v19, "ActiveView has no content!"

    .line 1077
    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_2
    :goto_3
    return-void

    .line 902
    .end local v12    # "pageIndex":I
    .end local v13    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Page;>;"
    .end local v14    # "pageSize":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/flyme/activeview/json/ActiveData;->getContent()Lcom/meizu/flyme/activeview/json/Content;

    move-result-object v18

    goto :goto_0

    .restart local v13    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Page;>;"
    :cond_4
    const-string/jumbo v18, "activeview.ActiveView"

    const-string/jumbo v19, "pageList is NULL!"

    .line 908
    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    return-void

    .line 913
    .restart local v14    # "pageSize":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->cancelLoadImage()V

    const/high16 v18, 0x3f800000    # 1.0f

    .line 914
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->removeAllViews()V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->stopAnimation()V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    const/16 v18, 0x0

    .line 918
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 923
    :goto_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mShowAfterImagesLoaded:Z

    const/16 v18, 0x4

    .line 924
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setVisibility(I)V

    goto :goto_1

    .line 920
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    const/16 v18, 0x0

    .line 921
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    goto :goto_4

    .line 930
    .restart local v12    # "pageIndex":I
    :cond_7
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/flyme/activeview/json/Page;

    .line 931
    .local v11, "page":Lcom/meizu/flyme/activeview/json/Page;
    if-nez v11, :cond_9

    .line 929
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 932
    :cond_9
    new-instance v8, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 934
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v11}, Lcom/meizu/flyme/activeview/json/Page;->getStyle()Lcom/meizu/flyme/activeview/json/Style;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/meizu/flyme/activeview/json/Style;->getWidthValue(Landroid/content/Context;)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->calScaleRate(F)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    const-string/jumbo v18, "activeview.ActiveView"

    .line 936
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mScaleRate = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v11}, Lcom/meizu/flyme/activeview/json/Page;->getStyle()Lcom/meizu/flyme/activeview/json/Style;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setStyleProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Style;)V

    .line 941
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasured:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 950
    invoke-virtual {v11}, Lcom/meizu/flyme/activeview/json/Page;->getEvents()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setEvent(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    .line 953
    invoke-virtual {v11}, Lcom/meizu/flyme/activeview/json/Page;->getElements()Ljava/util/List;

    move-result-object v7

    .line 954
    .local v7, "elementsList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Element;>;"
    if-eqz v7, :cond_d

    .line 959
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "elementSize":I
    const-string/jumbo v18, "activeview.ActiveView"

    .line 960
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "elementSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 961
    .local v9, "i":I
    :goto_5
    if-ge v9, v5, :cond_8

    .line 962
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/activeview/json/Element;

    .line 963
    .local v4, "element":Lcom/meizu/flyme/activeview/json/Element;
    if-eqz v4, :cond_e

    .line 968
    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getType()Ljava/lang/String;

    move-result-object v6

    .line 969
    .local v6, "elementType":Ljava/lang/String;
    if-eqz v6, :cond_f

    const-string/jumbo v18, "activeview.ActiveView"

    .line 974
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "elementType ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "image"

    .line 976
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    const-string/jumbo v18, "button"

    .line 1001
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string/jumbo v18, "video"

    .line 1004
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    const-string/jumbo v18, "text"

    .line 1006
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_12

    const-string/jumbo v18, "particle"

    .line 1029
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13

    const-string/jumbo v18, "particle2D"

    .line 1035
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 961
    .end local v6    # "elementType":Ljava/lang/String;
    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 942
    .end local v4    # "element":Lcom/meizu/flyme/activeview/json/Element;
    .end local v5    # "elementSize":I
    .end local v7    # "elementsList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Element;>;"
    .end local v9    # "i":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->removeAllViews()V

    .line 943
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->addView(Landroid/view/View;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 947
    :goto_7
    return-void

    .line 945
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ActiveView is ready, but not added to a View. Url="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v18 .. v21}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_7

    .restart local v7    # "elementsList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Element;>;"
    :cond_d
    const-string/jumbo v18, "activeview.ActiveView"

    const-string/jumbo v19, "elementsList is NULL!"

    .line 955
    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void

    .restart local v4    # "element":Lcom/meizu/flyme/activeview/json/Element;
    .restart local v5    # "elementSize":I
    .restart local v9    # "i":I
    :cond_e
    const-string/jumbo v18, "activeview.ActiveView"

    const-string/jumbo v19, "element == null"

    .line 964
    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .restart local v6    # "elementType":Ljava/lang/String;
    :cond_f
    const-string/jumbo v18, "activeview.ActiveView"

    const-string/jumbo v19, "elementType == null"

    .line 970
    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string/jumbo v18, "activeview.ActiveView"

    .line 977
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Element["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]: ImageView is Created ! Id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", url="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    new-instance v10, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v6}, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 984
    .local v10, "iv":Lcom/meizu/flyme/activeview/views/BaseActiveItemView;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v4, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Element;Z)V

    .line 985
    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getAnimations()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementAnimation(Landroid/view/View;Ljava/util/List;)V

    .line 993
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 995
    new-instance v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;)V

    .line 996
    .local v3, "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    iput-object v10, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    const-string/jumbo v18, "imageview"

    .line 997
    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    .line 998
    iput-object v4, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mElementData:Lcom/meizu/flyme/activeview/json/Element;

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .end local v3    # "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    .end local v10    # "iv":Lcom/meizu/flyme/activeview/views/BaseActiveItemView;
    :cond_11
    const-string/jumbo v18, "activeview.ActiveView"

    .line 1002
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Element["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]: Button is Created ! elementSize"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1010
    :cond_12
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1012
    .local v17, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setTextAttrs(Landroid/widget/TextView;Lcom/meizu/flyme/activeview/json/Element;)V

    .line 1014
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Element;Z)V

    .line 1015
    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getAnimations()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementAnimation(Landroid/view/View;Ljava/util/List;)V

    .line 1021
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1023
    new-instance v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;)V

    .line 1024
    .restart local v3    # "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    const-string/jumbo v18, "textview"

    .line 1025
    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    .line 1026
    iput-object v4, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mElementData:Lcom/meizu/flyme/activeview/json/Element;

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1030
    .end local v3    # "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    .end local v17    # "tv":Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->createParticleView(Lcom/meizu/flyme/activeview/json/Element;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 1036
    :cond_14
    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getParticle2DAttr()Lcom/meizu/flyme/activeview/json/Particle2DAttr;

    move-result-object v15

    .line 1037
    .local v15, "particle2DAttr":Lcom/meizu/flyme/activeview/json/Particle2DAttr;
    if-nez v15, :cond_15

    const-string/jumbo v18, "activeview.ActiveView"

    const-string/jumbo v19, "particle2DAttr is NULL !"

    .line 1056
    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1038
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->create2DParticleView(Lcom/meizu/flyme/activeview/json/Particle2DAttr;)Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;

    move-result-object v16

    .line 1042
    .local v16, "particleView":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Element;Z)V

    .line 1044
    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getAnimations()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementAnimation(Landroid/view/View;Ljava/util/List;)V

    .line 1046
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 1051
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/json/Element;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v18, "activeview.ActiveView"

    .line 1053
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "particle2DAttr mGraphicsAnimViewMap="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1049
    :cond_16
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    goto :goto_8

    .line 1064
    .end local v4    # "element":Lcom/meizu/flyme/activeview/json/Element;
    .end local v5    # "elementSize":I
    .end local v6    # "elementType":Ljava/lang/String;
    .end local v7    # "elementsList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Element;>;"
    .end local v8    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v9    # "i":I
    .end local v11    # "page":Lcom/meizu/flyme/activeview/json/Page;
    .end local v15    # "particle2DAttr":Lcom/meizu/flyme/activeview/json/Particle2DAttr;
    .end local v16    # "particleView":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->addView(Landroid/view/View;)V

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mShowAfterImagesLoaded:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/16 v18, 0x0

    .line 1067
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setVisibility(I)V

    .line 1068
    invoke-direct/range {p0 .. p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->startFirstAnimation()V

    goto/16 :goto_3
.end method

.method private extractZipFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "zipFile"    # Ljava/lang/String;

    .prologue
    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mCacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getDirNameByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "upzipToPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getPassword()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$3;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    invoke-static {p1, v0, v1, v2}, Lcom/meizu/flyme/activeview/utils/ZipExtractor;->extractFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnZipExtractListener;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractTask:Landroid/os/AsyncTask;

    .line 704
    return-void
.end method

.method private getDirNameByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileWithPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 649
    if-eqz p1, :cond_0

    const-string/jumbo v2, "/"

    .line 653
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "splitArray":[Ljava/lang/String;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .local v1, "zipFileNoPath":Ljava/lang/String;
    const-string/jumbo v2, "activeview.ActiveView"

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zipFileName zipFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 657
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 650
    .end local v0    # "splitArray":[Ljava/lang/String;
    .end local v1    # "zipFileNoPath":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    .line 242
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "ActiveViewImpl version = 2.0.0"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/FileUtil;->getActiveViewCachesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mCacheDir:Ljava/lang/String;

    .line 245
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->clearCacheFolder()V

    goto :goto_0
.end method

.method private isImageURL(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, ".png"

    .line 419
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private isVideoURL(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, ".mp4"

    .line 428
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, ".3gp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".webm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".mov"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private setBackgroundImage(Lcom/meizu/flyme/activeview/views/BaseActiveItemView;Ljava/lang/String;FF)V
    .locals 9
    .param p1, "view"    # Lcom/meizu/flyme/activeview/views/BaseActiveItemView;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "reqWidth"    # F
    .param p4, "reqHeight"    # F

    .prologue
    const/4 v8, 0x0

    .line 1648
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    if-nez v1, :cond_0

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1656
    .local v3, "imgPath":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAsyncTaskListener:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;

    if-eqz v1, :cond_1

    .line 1659
    :goto_1
    new-instance v0, Lcom/meizu/flyme/activeview/task/LoadImageTask;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAsyncTaskListener:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/meizu/flyme/activeview/task/LoadImageTask;-><init>(Landroid/content/Context;Lcom/meizu/flyme/activeview/views/BaseActiveItemView;Ljava/lang/String;ZLcom/meizu/flyme/activeview/listener/OnAsyncTaskListener;FF)V

    .line 1660
    .local v0, "loadImageTask":Lcom/meizu/flyme/activeview/task/LoadImageTask;
    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1661
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    return-void

    .line 1650
    .end local v0    # "loadImageTask":Lcom/meizu/flyme/activeview/task/LoadImageTask;
    .end local v3    # "imgPath":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activeres/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "imgPath":Ljava/lang/String;
    goto :goto_0

    .line 1657
    :cond_1
    new-instance v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;

    invoke-direct {v1, p0, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAsyncTaskListener:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$AsyncTaskListener;

    goto :goto_1
.end method

.method private setDefaultImageDrawable(IILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDefaultImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDefaultImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDefaultImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    :goto_1
    return-void

    .line 348
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDefaultImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->clearActiveView()V

    .line 355
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 356
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDefaultImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private setElementAnimation(Landroid/view/View;Ljava/util/List;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Animation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1526
    .local p2, "animations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Animation;>;"
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .local v2, "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    const/4 v3, 0x0

    .line 1535
    .local v3, "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    .line 1537
    .local v13, "animationFrameNum":I
    if-gtz v13, :cond_1

    .end local v3    # "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    :goto_0
    const/16 v16, 0x0

    .line 1546
    .end local v2    # "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-lt v0, v13, :cond_3

    .line 1636
    return-void

    .line 1527
    .end local v13    # "animationFrameNum":I
    .end local v16    # "i":I
    :cond_0
    return-void

    .line 1538
    .restart local v2    # "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    .restart local v3    # "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    .restart local v13    # "animationFrameNum":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    if-eqz v4, :cond_2

    .line 1542
    :goto_2
    new-instance v3, Lcom/meizu/flyme/activeview/moveline/item/BlurViewTweenItem;

    .end local v3    # "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/meizu/flyme/activeview/moveline/item/BlurViewTweenItem;-><init>(Landroid/view/View;)V

    .line 1543
    .local v3, "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTweenItemMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1539
    .local v3, "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    :cond_2
    new-instance v4, Lcom/meizu/flyme/activeview/moveline/Timeline;

    invoke-direct {v4}, Lcom/meizu/flyme/activeview/moveline/Timeline;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    const-string/jumbo v7, "active_view_timeline"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1547
    .end local v2    # "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    .end local v3    # "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    .restart local v16    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->buildFrameStyle()Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    move-result-object v5

    .line 1548
    .local v5, "itemStyle":Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/flyme/activeview/json/Animation;

    .line 1551
    .local v14, "animationsFrame":Lcom/meizu/flyme/activeview/json/Animation;
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->isRepeat()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1561
    .local v2, "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/meizu/flyme/activeview/json/Animation;->getTransform2dValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v4, v4, v7

    if-nez v4, :cond_6

    .line 1564
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/meizu/flyme/activeview/json/Animation;->getTransform2dValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v4, v4, v7

    if-nez v4, :cond_7

    .line 1568
    :goto_5
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getScale2d()[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v4, v4, v7

    if-nez v4, :cond_8

    .line 1571
    :goto_6
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getScale2d()[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v4, v4, v7

    if-nez v4, :cond_9

    .line 1575
    :goto_7
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRotate3d()[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v4, v4, v7

    if-nez v4, :cond_a

    .line 1578
    :goto_8
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRotate3d()[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v4, v4, v7

    if-nez v4, :cond_b

    .line 1581
    :goto_9
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRotate3d()[Ljava/lang/Float;

    move-result-object v4

    const/4 v7, 0x2

    aget-object v4, v4, v7

    if-nez v4, :cond_c

    .line 1585
    :goto_a
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getOpacity()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1589
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/meizu/flyme/activeview/json/Animation;->getTrackPathValue(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    .line 1604
    :goto_c
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getInterpolator()Lcom/meizu/flyme/activeview/json/Interpolator;

    move-result-object v17

    .line 1605
    .local v17, "interpolator":Lcom/meizu/flyme/activeview/json/Interpolator;
    if-nez v17, :cond_10

    const-string/jumbo v4, "activeview.ActiveView"

    const-string/jumbo v7, "Use no Interpolator."

    .line 1632
    invoke-static {v4, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getDuration()I

    move-result v9

    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getStartTime()I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, v3

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/meizu/flyme/activeview/moveline/Timeline;->to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;II)Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1546
    :cond_4
    :goto_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1552
    .end local v2    # "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    .end local v17    # "interpolator":Lcom/meizu/flyme/activeview/json/Interpolator;
    :cond_5
    new-instance v2, Lcom/meizu/flyme/activeview/moveline/Timeline;

    invoke-direct {v2}, Lcom/meizu/flyme/activeview/moveline/Timeline;-><init>()V

    .line 1553
    .restart local v2    # "timeline":Lcom/meizu/flyme/activeview/moveline/Timeline;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRepeatCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setRepeatCount(I)V

    .line 1555
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRepeatMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setRepeatMode(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getStartTime()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setDelayTime(I)V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v4, "left"

    .line 1562
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Lcom/meizu/flyme/activeview/json/Animation;->getTransform2dValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v4, "top"

    .line 1565
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Lcom/meizu/flyme/activeview/json/Animation;->getTransform2dValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v4, "scaleX"

    .line 1569
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getScale2d()[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    const-string/jumbo v4, "scaleY"

    .line 1572
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getScale2d()[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v4, "rotationX"

    .line 1576
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRotate3d()[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    const-string/jumbo v4, "rotationY"

    .line 1579
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRotate3d()[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_c
    const-string/jumbo v4, "rotation"

    .line 1582
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getRotate3d()[Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_d
    const-string/jumbo v4, "alpha"

    .line 1586
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getOpacity()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 1590
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/meizu/flyme/activeview/json/Animation;->getTrackPathValue(Landroid/content/Context;)Ljava/util/List;

    move-result-object v21

    .line 1591
    .local v21, "tempValues":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    .local v20, "size":I
    const/16 v18, 0x0

    .line 1592
    .local v18, "k":I
    :goto_e
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_f

    const-string/jumbo v4, "trackPath"

    .line 1597
    move-object/from16 v0, v21

    invoke-interface {v5, v4, v0}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 1593
    :cond_f
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v9, 0x0

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v7, v9

    aput v7, v4, v8

    .line 1594
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    const/4 v8, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v9, 0x1

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v7, v9

    aput v7, v4, v8

    .line 1592
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 1606
    .end local v18    # "k":I
    .end local v20    # "size":I
    .end local v21    # "tempValues":Ljava/util/List;, "Ljava/util/List<[F>;"
    .restart local v17    # "interpolator":Lcom/meizu/flyme/activeview/json/Interpolator;
    :cond_10
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/flyme/activeview/json/Interpolator;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "shake"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1613
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/flyme/activeview/json/Interpolator;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "linear"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1614
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_4

    .line 1615
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/flyme/activeview/json/Interpolator;->getArgs()Lcom/meizu/flyme/activeview/json/Args;

    move-result-object v15

    .line 1617
    .local v15, "args":Lcom/meizu/flyme/activeview/json/Args;
    if-nez v15, :cond_13

    .line 1622
    :cond_11
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1624
    .local v6, "pathInterpolator":Landroid/view/animation/PathInterpolator;
    :goto_f
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->isRepeat()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1627
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getDuration()I

    move-result v4

    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getStartTime()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/flyme/activeview/moveline/Timeline;->to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;Landroid/view/animation/Interpolator;II)Lcom/meizu/flyme/activeview/moveline/Timeline;

    goto/16 :goto_d

    .line 1607
    .end local v6    # "pathInterpolator":Landroid/view/animation/PathInterpolator;
    .end local v15    # "args":Lcom/meizu/flyme/activeview/json/Args;
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/meizu/flyme/activeview/json/Interpolator;->getArgs()Lcom/meizu/flyme/activeview/json/Args;

    move-result-object v15

    .line 1608
    .restart local v15    # "args":Lcom/meizu/flyme/activeview/json/Args;
    if-eqz v15, :cond_4

    const-string/jumbo v4, "activeview.ActiveView"

    .line 1609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Use Shake Frequency ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Lcom/meizu/flyme/activeview/json/Args;->getFrequency()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getDuration()I

    move-result v4

    new-instance v6, Landroid/view/animation/CycleInterpolator;

    invoke-virtual {v15}, Lcom/meizu/flyme/activeview/json/Args;->getFrequency()F

    move-result v7

    invoke-direct {v6, v7}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getStartTime()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/flyme/activeview/moveline/Timeline;->to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;Landroid/view/animation/Interpolator;II)Lcom/meizu/flyme/activeview/moveline/Timeline;

    goto/16 :goto_d

    .line 1617
    :cond_13
    invoke-virtual {v15}, Lcom/meizu/flyme/activeview/json/Args;->getPath()[F

    move-result-object v4

    array-length v4, v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_11

    .line 1618
    invoke-virtual {v15}, Lcom/meizu/flyme/activeview/json/Args;->getPath()[F

    move-result-object v19

    .local v19, "path":[F
    const-string/jumbo v4, "activeview.ActiveView"

    .line 1619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Use PathInterpolator path ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    aget v4, v19, v4

    const/4 v7, 0x1

    aget v7, v19, v7

    const/4 v8, 0x2

    aget v8, v19, v8

    const/4 v9, 0x3

    aget v9, v19, v9

    invoke-direct {v6, v4, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .restart local v6    # "pathInterpolator":Landroid/view/animation/PathInterpolator;
    goto/16 :goto_f

    .line 1625
    .end local v19    # "path":[F
    :cond_14
    invoke-virtual {v14}, Lcom/meizu/flyme/activeview/json/Animation;->getDuration()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/flyme/activeview/moveline/Timeline;->to(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;Landroid/view/animation/Interpolator;II)Lcom/meizu/flyme/activeview/moveline/Timeline;

    goto/16 :goto_d
.end method

.method private setElementProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Element;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elementData"    # Lcom/meizu/flyme/activeview/json/Element;
    .param p3, "isUpdate"    # Z

    .prologue
    .line 1287
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v6, "activeview.ActiveView"

    const-string/jumbo v7, "view or element is NULL!"

    .line 1288
    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void

    .line 1287
    :cond_1
    if-eqz p2, :cond_0

    .line 1292
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1294
    .local v1, "elementType":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Lcom/meizu/flyme/activeview/json/Element;->getRectRegion(Landroid/content/Context;)[F

    move-result-object v5

    .line 1300
    .local v5, "rect":[F
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1303
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x2

    aget v6, v5, v6

    iget v7, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x3

    aget v7, v5, v7

    iget v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1305
    .local v4, "rcp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    .line 1308
    aget v6, v5, v6

    iget v7, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    const/4 v6, 0x1

    .line 1309
    aget v6, v5, v6

    iget v7, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1311
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getParallax()Lcom/meizu/flyme/activeview/json/Parallax;

    move-result-object v2

    .line 1312
    .local v2, "parallax":Lcom/meizu/flyme/activeview/json/Parallax;
    if-nez v2, :cond_4

    const-string/jumbo v6, "activeview.ActiveView"

    .line 1315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " don\'t set parallax!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :goto_1
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6}, Lcom/meizu/flyme/activeview/json/Element;->getRadiusValue(Landroid/content/Context;)F

    move-result v3

    .line 1319
    .local v3, "radius":F
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_5

    .line 1324
    :goto_2
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getBackgroundColorValue()Ljava/lang/Integer;

    move-result-object v0

    .line 1325
    .local v0, "backgroundColor":Ljava/lang/Integer;
    if-nez v0, :cond_6

    .line 1330
    :goto_3
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getScale2d()[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1331
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getScale2d()[F

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1334
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getRotate3d()[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotationX(F)V

    .line 1335
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getRotate3d()[F

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotationY(F)V

    .line 1336
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getRotate3d()[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    .line 1339
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getOpacity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1342
    if-nez p3, :cond_7

    .line 1351
    .end local p1    # "view":Landroid/view/View;
    :cond_2
    :goto_4
    return-void

    .line 1301
    .end local v0    # "backgroundColor":Ljava/lang/Integer;
    .end local v2    # "parallax":Lcom/meizu/flyme/activeview/json/Parallax;
    .end local v3    # "radius":F
    .end local v4    # "rcp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x2

    aget v6, v5, v6

    iget v7, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v4    # "rcp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 1313
    .restart local v2    # "parallax":Lcom/meizu/flyme/activeview/json/Parallax;
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setParallax(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Parallax;)V

    goto :goto_1

    .line 1321
    .restart local v3    # "radius":F
    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setRoundCorner(Landroid/view/View;F)V

    goto :goto_2

    .line 1326
    .restart local v0    # "backgroundColor":Ljava/lang/Integer;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 1344
    :cond_7
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getEvents()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v6, v7}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setEvent(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v6, "image"

    .line 1346
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1347
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mShowAfterImagesLoaded:Z

    .line 1348
    check-cast p1, Lcom/meizu/flyme/activeview/views/BaseActiveItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, v5, v7

    iget v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v5, v8

    iget v9, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v8, v9

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setBackgroundImage(Lcom/meizu/flyme/activeview/views/BaseActiveItemView;Ljava/lang/String;FF)V

    goto :goto_4
.end method

.method private setEvent(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "eId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1800
    .local p3, "event":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/Event;>;"
    if-nez p1, :cond_1

    .line 1801
    :cond_0
    return-void

    .line 1800
    :cond_1
    if-eqz p3, :cond_0

    .line 1803
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 1805
    .local v3, "size":I
    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 1809
    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_3

    .line 1851
    return-void

    .line 1806
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 1810
    .restart local v2    # "i":I
    :cond_3
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/activeview/json/Event;

    .line 1811
    .local v0, "event1":Lcom/meizu/flyme/activeview/json/Event;
    if-eqz v0, :cond_4

    .line 1816
    invoke-static {p1, p2, v0}, Lcom/meizu/flyme/activeview/handler/EventHandler;->registerEventHandler(Landroid/view/View;Ljava/lang/String;Lcom/meizu/flyme/activeview/json/Event;)Lcom/meizu/flyme/activeview/handler/EventHandler;

    move-result-object v1

    .line 1817
    .local v1, "eventHandler":Lcom/meizu/flyme/activeview/handler/EventHandler;
    if-nez v1, :cond_5

    .line 1809
    .end local v1    # "eventHandler":Lcom/meizu/flyme/activeview/handler/EventHandler;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1818
    .restart local v1    # "eventHandler":Lcom/meizu/flyme/activeview/handler/EventHandler;
    :cond_5
    iget-object v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

    invoke-virtual {v1, v4}, Lcom/meizu/flyme/activeview/handler/EventHandler;->setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V

    goto :goto_1
.end method

.method private setLoadImageFinished(Landroid/os/AsyncTask;)V
    .locals 7
    .param p1, "asyncTask"    # Landroid/os/AsyncTask;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1670
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1679
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1706
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "activeview.ActiveView"

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LoadImageTask is cancelled.image="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/meizu/flyme/activeview/task/LoadImageTask;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    if-nez v1, :cond_2

    .line 1676
    .end local p1    # "asyncTask":Landroid/os/AsyncTask;
    :goto_1
    return-void

    .line 1673
    .restart local p1    # "asyncTask":Landroid/os/AsyncTask;
    :cond_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LoadImageTask is cancelled. image="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/meizu/flyme/activeview/task/LoadImageTask;

    .end local p1    # "asyncTask":Landroid/os/AsyncTask;
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/task/LoadImageTask;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v4, v2}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_1

    .line 1681
    .restart local p1    # "asyncTask":Landroid/os/AsyncTask;
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    if-nez v1, :cond_4

    .line 1685
    :goto_2
    iget-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasured:Z

    if-nez v1, :cond_5

    .line 1701
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    if-eqz v1, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActiveView is ready, but not added to a View. Url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v5, v3}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_0

    .line 1682
    :cond_4
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v5, v2}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_2

    .line 1686
    :cond_5
    invoke-virtual {p0, v4}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setVisibility(I)V

    .line 1688
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->startFirstAnimation()V

    .line 1690
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    if-nez v1, :cond_6

    .line 1695
    :goto_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    if-nez v1, :cond_7

    .line 1699
    :goto_4
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateParallaxData()V

    goto/16 :goto_0

    .line 1691
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getActiveViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1692
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    invoke-interface {v1, v5, v0}, Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;->onLoadFinished(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1696
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActiveView is ready, and is added to a View. Url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v5, v3}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_4
.end method

.method private setParallax(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Parallax;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parallax"    # Lcom/meizu/flyme/activeview/json/Parallax;

    .prologue
    const/4 v3, 0x0

    .line 1507
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1510
    :goto_0
    new-instance v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;

    invoke-direct {v0, p0, v3}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;)V

    .line 1511
    .local v0, "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;
    iput-object p1, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;->mView:Landroid/view/View;

    .line 1512
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Parallax;->getParameter()Lcom/meizu/flyme/activeview/json/Parameter;

    move-result-object v1

    .line 1513
    .local v1, "parameter":Lcom/meizu/flyme/activeview/json/Parameter;
    if-nez v1, :cond_1

    .line 1516
    :goto_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    return-void

    .line 1508
    .end local v0    # "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;
    .end local v1    # "parameter":Lcom/meizu/flyme/activeview/json/Parameter;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    goto :goto_0

    .line 1514
    .restart local v0    # "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;
    .restart local v1    # "parameter":Lcom/meizu/flyme/activeview/json/Parameter;
    :cond_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/json/Parameter;->getRangeValue(Landroid/content/Context;)[Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;->mRange:[Ljava/lang/Float;

    goto :goto_1
.end method

.method private setRoundCorner(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "radius"    # F

    .prologue
    .line 1483
    if-eqz p1, :cond_0

    .line 1486
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 1498
    :goto_0
    return-void

    .line 1484
    :cond_0
    return-void

    .line 1487
    :cond_1
    new-instance v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$7;

    invoke-direct {v0, p0, p2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$7;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;F)V

    .line 1495
    .local v0, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1496
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0
.end method

.method private setStyleProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Style;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "style"    # Lcom/meizu/flyme/activeview/json/Style;

    .prologue
    .line 1227
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "activeview.ActiveView"

    const-string/jumbo v2, "view or style is NULL!"

    .line 1228
    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void

    .line 1227
    :cond_1
    if-eqz p2, :cond_0

    .line 1232
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/meizu/flyme/activeview/json/Style;->getWidthValue(Landroid/content/Context;)F

    move-result v2

    iget v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/meizu/flyme/activeview/json/Style;->getHeightValue(Landroid/content/Context;)F

    move-result v3

    iget v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v1, "activeview.ActiveView"

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScaleRate ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Style width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/meizu/flyme/activeview/json/Style;->getWidthValue(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Style height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/meizu/flyme/activeview/json/Style;->getHeightValue(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; Real width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/meizu/flyme/activeview/json/Style;->getWidthValue(Landroid/content/Context;)F

    move-result v3

    iget v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Real height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/meizu/flyme/activeview/json/Style;->getHeightValue(Landroid/content/Context;)F

    move-result v3

    iget v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Style;->getRadiusValue()F

    move-result v0

    .line 1236
    .local v0, "radius":F
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    .line 1241
    :goto_0
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Style;->getBackgroundColorValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1243
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Style;->getColorPrimary()I

    move-result v1

    iput v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mColorPrimary:I

    .line 1244
    return-void

    .line 1238
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setRoundCorner(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setTextAttrs(Landroid/widget/TextView;Lcom/meizu/flyme/activeview/json/Element;)V
    .locals 13
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "elementData"    # Lcom/meizu/flyme/activeview/json/Element;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1354
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v8, "activeview.ActiveView"

    const-string/jumbo v9, "Don\'t set TextAttrs."

    .line 1355
    invoke-static {v8, v9}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    return-void

    .line 1354
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getTextAttrs()Lcom/meizu/flyme/activeview/json/TextAttrs;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1359
    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1361
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Element;->getTextAttrs()Lcom/meizu/flyme/activeview/json/TextAttrs;

    move-result-object v5

    .line 1363
    .local v5, "textAttrs":Lcom/meizu/flyme/activeview/json/TextAttrs;
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getTextSizeValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1369
    :goto_0
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getTextColor()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1373
    :goto_1
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getBackground()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_9

    .line 1377
    :goto_2
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getOpacity()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_a

    .line 1381
    :goto_3
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getMaxLines()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_b

    .line 1385
    :goto_4
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getMaxLength()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_c

    .line 1389
    :goto_5
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getSingleLine()Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_d

    .line 1393
    :cond_2
    :goto_6
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getGravity()Ljava/lang/String;

    move-result-object v4

    .line 1394
    .local v4, "gravity":Ljava/lang/String;
    if-nez v4, :cond_e

    .line 1412
    :cond_3
    :goto_7
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getTextStyle()Ljava/lang/String;

    move-result-object v6

    .local v6, "textStyle":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1414
    .local v7, "typeFaceStyle":I
    if-nez v6, :cond_15

    .line 1424
    :cond_4
    :goto_8
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getFontStyle()Ljava/lang/String;

    move-result-object v3

    .local v3, "fontStyle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1426
    .local v2, "font":Landroid/graphics/Typeface;
    if-nez v3, :cond_18

    .line 1435
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_5
    :goto_9
    if-nez v2, :cond_1a

    .line 1438
    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1441
    :goto_a
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getEllipsize()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "ellipsStr":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 1455
    :goto_b
    iget-object v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getLineSpacingExtraValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v8

    if-nez v8, :cond_1f

    .line 1459
    :goto_c
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_20

    .line 1464
    :cond_6
    :goto_d
    return-void

    .line 1366
    .end local v0    # "ellipsStr":Ljava/lang/String;
    .end local v3    # "fontStyle":Ljava/lang/String;
    .end local v4    # "gravity":Ljava/lang/String;
    .end local v6    # "textStyle":Ljava/lang/String;
    .end local v7    # "typeFaceStyle":I
    :cond_7
    iget-object v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getTextSizeValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v8, v9

    invoke-virtual {p1, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1370
    :cond_8
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getTextColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1374
    :cond_9
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getBackground()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 1378
    :cond_a
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getOpacity()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 1382
    :cond_b
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getMaxLines()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    .line 1386
    :cond_c
    new-array v8, v12, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getMaxLength()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v11

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_5

    .line 1389
    :cond_d
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getSingleLine()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1390
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    goto/16 :goto_6

    .restart local v4    # "gravity":Ljava/lang/String;
    :cond_e
    const-string/jumbo v8, "center_vertical"

    .line 1395
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string/jumbo v8, "center_horizontal"

    .line 1397
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "center"

    .line 1399
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string/jumbo v8, "top"

    .line 1401
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string/jumbo v8, "bottom"

    .line 1403
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string/jumbo v8, "left"

    .line 1405
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string/jumbo v8, "right"

    .line 1407
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    .line 1408
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_f
    const/16 v8, 0x10

    .line 1396
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    .line 1398
    :cond_10
    invoke-virtual {p1, v12}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_11
    const/16 v8, 0x11

    .line 1400
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_12
    const/16 v8, 0x30

    .line 1402
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_13
    const/16 v8, 0x50

    .line 1404
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_14
    const/4 v8, 0x3

    .line 1406
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    .restart local v6    # "textStyle":Ljava/lang/String;
    .restart local v7    # "typeFaceStyle":I
    :cond_15
    const-string/jumbo v8, "bold"

    .line 1415
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string/jumbo v8, "italic"

    .line 1417
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "bold_italic"

    .line 1419
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x3

    .line 1420
    goto/16 :goto_8

    :cond_16
    const/4 v7, 0x1

    .line 1416
    goto/16 :goto_8

    :cond_17
    const/4 v7, 0x2

    .line 1418
    goto/16 :goto_8

    .restart local v2    # "font":Landroid/graphics/Typeface;
    .restart local v3    # "fontStyle":Ljava/lang/String;
    :cond_18
    const-string/jumbo v8, "activeview.ActiveView"

    .line 1427
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fontStyle value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "Medium"

    .line 1428
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "Light"

    .line 1430
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "Flyme-Light"

    .line 1431
    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .local v2, "font":Landroid/graphics/Typeface;
    goto/16 :goto_9

    .local v2, "font":Landroid/graphics/Typeface;
    :cond_19
    const-string/jumbo v8, "sans-serif-medium"

    .line 1429
    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .local v2, "font":Landroid/graphics/Typeface;
    goto/16 :goto_9

    .line 1436
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_1a
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_a

    .line 1443
    .restart local v0    # "ellipsStr":Ljava/lang/String;
    :cond_1b
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .local v1, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v8, "end"

    .line 1444
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string/jumbo v8, "start"

    .line 1446
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string/jumbo v8, "marquee"

    .line 1448
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 1452
    :goto_e
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_b

    .line 1445
    :cond_1c
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_e

    .line 1447
    :cond_1d
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_e

    .line 1449
    :cond_1e
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_e

    .line 1456
    .end local v1    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_1f
    iget-object v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getLineSpacingExtraValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_c

    .line 1460
    :cond_20
    iget-object v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getLetterSpacingValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1461
    iget-object v8, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/meizu/flyme/activeview/json/TextAttrs;->getLetterSpacingValue(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mScaleRate:F

    div-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto/16 :goto_d
.end method

.method private startFirstAnimation()V
    .locals 1

    .prologue
    .line 1709
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoGradientDisplay:Z

    if-nez v0, :cond_1

    .line 1713
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoRunAnim:Z

    if-nez v0, :cond_2

    .line 1717
    :goto_0
    return-void

    .line 1709
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1714
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->startAnimation()V

    goto :goto_0
.end method

.method private updateData(Lcom/meizu/flyme/activeview/json/NewElementInfo;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V
    .locals 1
    .param p1, "newElementInfo"    # Lcom/meizu/flyme/activeview/json/NewElementInfo;
    .param p2, "viewAdapter"    # Lcom/meizu/flyme/activeview/adapter/ViewAdapter;

    .prologue
    .line 2117
    if-eqz p1, :cond_0

    .line 2121
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementInfo;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateElement(Ljava/util/List;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V

    .line 2122
    return-void

    .line 2118
    :cond_0
    return-void
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1984
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateData(Ljava/lang/String;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V

    .line 1985
    return-void
.end method

.method private updateData(Ljava/lang/String;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "viewAdapter"    # Lcom/meizu/flyme/activeview/adapter/ViewAdapter;

    .prologue
    .line 1994
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    invoke-direct {v1, p0, p2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V

    new-instance v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$10;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$10;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->getJsonByUrl(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2035
    return-void

    .line 1995
    :cond_0
    return-void
.end method

.method private updateElement(Lcom/meizu/flyme/activeview/json/NewElementData;)V
    .locals 1
    .param p1, "data"    # Lcom/meizu/flyme/activeview/json/NewElementData;

    .prologue
    const/4 v0, 0x0

    .line 2154
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateElement(Lcom/meizu/flyme/activeview/json/NewElementData;Landroid/view/View;)V

    .line 2155
    return-void
.end method

.method private updateElement(Lcom/meizu/flyme/activeview/json/NewElementData;Landroid/view/View;)V
    .locals 10
    .param p1, "newData"    # Lcom/meizu/flyme/activeview/json/NewElementData;
    .param p2, "newView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2163
    if-eqz p2, :cond_1

    .line 2182
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getId()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "activeview.ActiveView"

    .line 2183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "elementInfo:  updateElement key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2220
    :cond_0
    :goto_0
    return-void

    .line 2164
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getId()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "key":Ljava/lang/String;
    const-string/jumbo v5, "activeview.ActiveView"

    .line 2165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "elementInfo:  updateElement key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2168
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    .local v3, "viewData":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    const-string/jumbo v5, "activeview.ActiveView"

    .line 2169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "elementInfo:  containsKey, viewType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    if-nez v3, :cond_3

    .line 2177
    :cond_2
    :goto_1
    iget-object v5, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getEvents()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setEvent(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 2170
    :cond_3
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getData()Lcom/meizu/flyme/activeview/json/Data;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2171
    iget-object v5, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    const-string/jumbo v6, "imageview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2173
    iget-object v5, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    const-string/jumbo v6, "textview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2174
    iget-object v5, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getData()Lcom/meizu/flyme/activeview/json/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/activeview/json/Data;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 2172
    :cond_4
    iget-object v5, v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getData()Lcom/meizu/flyme/activeview/json/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/activeview/json/Data;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 2186
    .end local v3    # "viewData":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    :cond_5
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    .line 2189
    .local v2, "oldViewData":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    iget-object v5, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mElementData:Lcom/meizu/flyme/activeview/json/Element;

    invoke-direct {p0, p2, v5, v8}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setElementProperties(Landroid/view/View;Lcom/meizu/flyme/activeview/json/Element;Z)V

    .line 2192
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTweenItemMap:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;

    .line 2193
    .local v4, "viewTweenItem":Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
    if-nez v4, :cond_7

    .line 2200
    :goto_2
    invoke-virtual {p0, v8}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iget-object v6, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2201
    invoke-virtual {p0, v8}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2204
    new-instance v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    invoke-direct {v0, p0, v9}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;)V

    .line 2205
    .local v0, "cachedata":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    iput-object p2, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    .line 2206
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    .line 2207
    iget-object v5, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mElementData:Lcom/meizu/flyme/activeview/json/Element;

    iput-object v5, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mElementData:Lcom/meizu/flyme/activeview/json/Element;

    .line 2208
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    if-nez p1, :cond_8

    .line 2217
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getEvents()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p2, v5, v6}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setEvent(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 2194
    .end local v0    # "cachedata":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    :cond_7
    invoke-virtual {v4, p2}, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->setTarget(Landroid/view/View;)V

    .line 2195
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTweenItemMap:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTweenItemMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2210
    .restart local v0    # "cachedata":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    :cond_8
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getData()Lcom/meizu/flyme/activeview/json/Data;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2211
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "imageview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2213
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "textview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, p2

    .line 2214
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getData()Lcom/meizu/flyme/activeview/json/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/activeview/json/Data;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v5, p2

    .line 2212
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/NewElementData;->getData()Lcom/meizu/flyme/activeview/json/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/flyme/activeview/json/Data;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateElement(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/NewElementData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2250
    .local p1, "elementDatas":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/NewElementData;>;"
    if-eqz p1, :cond_0

    .line 2254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .line 2255
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 2258
    return-void

    .line 2251
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 2256
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/flyme/activeview/json/NewElementData;

    invoke-direct {p0, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateElement(Lcom/meizu/flyme/activeview/json/NewElementData;)V

    .line 2255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateElement(Ljava/util/List;Lcom/meizu/flyme/activeview/adapter/ViewAdapter;)V
    .locals 8
    .param p2, "viewAdapter"    # Lcom/meizu/flyme/activeview/adapter/ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/activeview/json/NewElementData;",
            ">;",
            "Lcom/meizu/flyme/activeview/adapter/ViewAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "elementDatas":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/flyme/activeview/json/NewElementData;>;"
    const/4 v7, 0x0

    .line 2229
    if-eqz p1, :cond_0

    .line 2233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    const/4 v1, 0x0

    .line 2234
    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 2242
    return-void

    .line 2230
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_0
    return-void

    .line 2235
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/activeview/json/NewElementData;

    .line 2236
    .local v0, "data":Lcom/meizu/flyme/activeview/json/NewElementData;
    if-nez v0, :cond_2

    .line 2234
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2237
    :cond_2
    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/json/NewElementData;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2238
    .local v2, "newtype":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/json/NewElementData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    iget-object v3, v5, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    .line 2239
    .local v3, "oldType":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/activeview/json/NewElementData;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move-object v6, v7

    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateElement(Lcom/meizu/flyme/activeview/json/NewElementData;Landroid/view/View;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Lcom/meizu/flyme/activeview/adapter/ViewAdapter;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    goto :goto_2
.end method

.method private updateImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2131
    if-nez p1, :cond_0

    .line 2134
    :goto_0
    return-void

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private updateParallaxData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 631
    iget-boolean v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUseParallax:Z

    if-nez v2, :cond_1

    .line 641
    :cond_0
    return-void

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnParallaxListener:Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 632
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mParallaxData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;

    .line 634
    .local v0, "data":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;
    iget-object v2, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;->mRange:[Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 637
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnParallaxListener:Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

    iget-object v3, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;->mView:Landroid/view/View;

    iget-object v4, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;->mRange:[Ljava/lang/Float;

    invoke-interface {v2, v3, v4}, Lcom/meizu/flyme/activeview/listener/OnParallaxListener;->onUpdateParallaxData(Landroid/view/View;[Ljava/lang/Float;)V

    .line 632
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnParallaxListener:Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

    iget-object v3, v0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ParallaxData;->mView:Landroid/view/View;

    invoke-interface {v2, v3, v5}, Lcom/meizu/flyme/activeview/listener/OnParallaxListener;->onUpdateParallaxData(Landroid/view/View;[Ljava/lang/Float;)V

    goto :goto_1
.end method

.method private updateTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 2143
    if-nez p1, :cond_0

    .line 2146
    :goto_0
    return-void

    .line 2144
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAllRunningTasks()V
    .locals 0

    .prologue
    .line 2038
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->cancelDownload()V

    .line 2039
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->cancelExtract()V

    .line 2040
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->cancelLoadData()V

    .line 2041
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->cancelLoadImage()V

    .line 2042
    return-void
.end method

.method public cancelDownload()V
    .locals 2

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDownloadTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 2073
    :goto_0
    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDownloadTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0
.end method

.method public cancelExtract()V
    .locals 2

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0
.end method

.method public cancelLoadImage()V
    .locals 4

    .prologue
    .line 2054
    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2055
    .local v0, "asyncTaskSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/AsyncTask;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2057
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/AsyncTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2063
    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadImageTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2064
    return-void

    .line 2058
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 2059
    .local v1, "at":Landroid/os/AsyncTask;
    if-eqz v1, :cond_0

    .line 2060
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0
.end method

.method public clearImageCache()V
    .locals 1

    .prologue
    .line 1789
    invoke-static {}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getInstance()Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->clearCache()V

    .line 1790
    return-void
.end method

.method public downloadImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->downloadImage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V

    .line 438
    return-void
.end method

.method public downloadImage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 447
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "activeview.ActiveView"

    const-string/jumbo v1, "mUrl == url, don\'t update Image."

    .line 448
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void

    .line 447
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 452
    :goto_0
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 458
    :goto_1
    if-nez p2, :cond_4

    .line 462
    :goto_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 468
    :goto_3
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;

    invoke-direct {v5, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$1;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IILcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;)V

    .line 495
    return-void

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_3
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    .line 455
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 459
    :cond_4
    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    goto :goto_2

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public downloadPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->downloadPackage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V

    .line 548
    return-void
.end method

.method public downloadPackage(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 558
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v2, "activeview.ActiveView"

    const-string/jumbo v3, "mUrl == url, don\'t update Package."

    .line 560
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->cancelAllRunningTasks()V

    const/4 v2, 0x4

    .line 578
    invoke-virtual {p0, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setVisibility(I)V

    .line 580
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    .line 582
    if-nez p2, :cond_6

    :goto_0
    const-string/jumbo v2, "activeview.ActiveView"

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUrl ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/flyme/activeview/utils/CacheUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/flyme/activeview/utils/CacheUtils;->getSharePreferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cachedDir":Ljava/lang/String;
    const-string/jumbo v2, "activeview.ActiveView"

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cachedDir ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    if-nez v1, :cond_7

    .line 599
    :cond_3
    iput-boolean v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    const-string/jumbo v2, "activeview.ActiveView"

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Begin download :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mCacheDir:Ljava/lang/String;

    new-instance v3, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$2;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$2;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    invoke-static {p1, v2, v3}, Lcom/meizu/flyme/activeview/utils/FileDownloader;->downloadFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnDownloadListener;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mDownloadTask:Landroid/os/AsyncTask;

    .line 628
    return-void

    .line 564
    .end local v1    # "cachedDir":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    if-nez v2, :cond_5

    .line 569
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->startAnimation()V

    .line 570
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->updateParallaxData()V

    .line 572
    return-void

    .line 567
    :cond_5
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    const/4 v3, 0x7

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Url Not Changed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_6
    iput-object p2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    goto/16 :goto_0

    .line 589
    .restart local v1    # "cachedDir":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 590
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "cache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "activeview.ActiveView"

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Don\'t download the same file. Load data from cachedDir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0, v1, v5}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->loadData(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V

    .line 594
    return-void
.end method

.method public downloadVideo(Ljava/lang/String;II)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 512
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "activeview.ActiveView"

    const-string/jumbo v2, "mUrl == url, don\'t update Video."

    .line 513
    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void

    .line 512
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 517
    :goto_0
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    if-eqz v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 529
    :goto_1
    if-eqz p2, :cond_6

    .line 532
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 534
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->clearActiveView()V

    .line 536
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->addView(Landroid/view/View;)V

    .line 538
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->setSourceUri(Landroid/net/Uri;)V

    .line 539
    return-void

    .line 512
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 520
    :cond_4
    new-instance v1, Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    goto :goto_1

    .line 523
    :cond_5
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->updateSourceUri(Landroid/net/Uri;)V

    .line 524
    return-void

    .line 529
    :cond_6
    if-nez p3, :cond_2

    .line 530
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_2
.end method

.method public getActiveViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDrawingCacheEnabled(Z)V

    .line 1762
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->buildDrawingCache()V

    .line 1763
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getColorPrimary()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mColorPrimary:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v0, "activeview.ActiveView"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mZipPassword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipPassword:Ljava/lang/String;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/PasswordUtils;->getZipPassward(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "2.0.0"

    .line 855
    return-object v0
.end method

.method public gotoAnimEnd()V
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    if-nez v0, :cond_0

    .line 1770
    :goto_0
    return-void

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/moveline/Timeline;->stop()V

    goto :goto_0
.end method

.method public gotoAnimStart()V
    .locals 4

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    if-nez v0, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1774
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->stopAnimation()V

    .line 1775
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimeline:Lcom/meizu/flyme/activeview/moveline/Timeline;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/flyme/activeview/moveline/Timeline;->setCurrentPlayTime(J)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->isShown()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 2
    .param p1, "zipExtractedPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 776
    if-nez p1, :cond_0

    const-string/jumbo v0, "activeview.ActiveView"

    const-string/jumbo v1, "loadData zipExtractedPath is NULL"

    .line 779
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->loadData(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;)V
    .locals 7
    .param p1, "zipExtractedPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v0, "activeview.ActiveView"

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData() mbUseAssetsResources = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    .line 734
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "activeview.ActiveView"

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData() mZipExtractedDir = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "filePath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/meizu/flyme/activeview/task/LoadDataTask;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/meizu/flyme/activeview/json/ActiveData;

    if-nez p2, :cond_3

    new-instance v4, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;

    invoke-direct {v4, p0, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$5;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Ljava/lang/String;)V

    :goto_1
    iget-boolean v5, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/activeview/task/LoadDataTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/meizu/flyme/activeview/listener/OnLoadDataListener;Z)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadDataTask:Lcom/meizu/flyme/activeview/task/LoadDataTask;

    .line 766
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mLoadDataTask:Lcom/meizu/flyme/activeview/task/LoadDataTask;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/activeview/task/LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 767
    return-void

    .end local v2    # "filePath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "activeres/data.json"

    .line 735
    .restart local v2    # "filePath":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "filePath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "activeview.ActiveView"

    const-string/jumbo v1, "loadData mZipExtractedDir is NULL"

    .line 739
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void

    .line 743
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipExtractedDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "filePath":Ljava/lang/String;
    goto :goto_0

    :cond_3
    move-object v4, p2

    .line 749
    goto :goto_1
.end method

.method public loadFromWeb(Ljava/lang/String;)V
    .locals 1
    .param p1, "webUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, p1, v0, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->loadFromWeb(Ljava/lang/String;II)V

    .line 865
    return-void
.end method

.method public loadFromWeb(Ljava/lang/String;II)V
    .locals 5
    .param p1, "webUrl"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, -0x1

    .line 868
    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v2, "activeview.ActiveView"

    const-string/jumbo v3, "webUrl"

    .line 869
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    return-void

    .line 868
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 878
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 885
    :goto_0
    if-eqz p2, :cond_5

    .line 888
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 890
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->clearActiveView()V

    .line 892
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->addView(Landroid/view/View;)V

    const-string/jumbo v2, "activeview.ActiveView"

    .line 893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "webUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 895
    return-void

    .line 874
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    .line 875
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 876
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_0

    .line 879
    .end local v1    # "webSettings":Landroid/webkit/WebSettings;
    :cond_4
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 880
    return-void

    .line 885
    :cond_5
    if-nez p3, :cond_2

    .line 886
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1
.end method

.method public loadResourceFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "actFile"    # Ljava/lang/String;

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->extractZipFile(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 835
    invoke-super {p0}, Lcom/meizu/flyme/activeview/views/IActiveView;->onDetachedFromWindow()V

    .line 837
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1270
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/activeview/views/IActiveView;->onMeasure(II)V

    .line 1271
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getMeasuredWidth()I

    move-result v0

    .local v0, "w":I
    const-string/jumbo v1, "activeview.ActiveView"

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMeasure  getMeasuredWidth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mMeasuredWidth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    if-ne v1, v0, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1274
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasured:Z

    .line 1275
    iput v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mMeasuredWidth:I

    .line 1276
    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setData(Lcom/meizu/flyme/activeview/json/ActiveData;)V

    goto :goto_0
.end method

.method public pauseAnimation()V
    .locals 7

    .prologue
    .line 1932
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1933
    .local v4, "timelines":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/moveline/Timeline;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1934
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1941
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 1951
    :cond_1
    return-void

    .line 1935
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1936
    .local v5, "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    if-eqz v5, :cond_0

    .line 1937
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/moveline/Timeline;->pause()V

    goto :goto_0

    .line 1942
    .end local v5    # "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    :cond_3
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1943
    .local v2, "particleViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1944
    .local v1, "iterator2":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;

    .line 1946
    .local v3, "pv":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    if-eqz v3, :cond_4

    .line 1947
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;->pause()V

    goto :goto_1
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    if-nez v0, :cond_0

    .line 2091
    :goto_0
    return-void

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->pause()V

    goto :goto_0
.end method

.method public resumeAnimation()V
    .locals 7

    .prologue
    .line 1957
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1958
    .local v4, "timelines":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/moveline/Timeline;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1959
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1966
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 1976
    :cond_1
    return-void

    .line 1960
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1961
    .local v5, "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/moveline/Timeline;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1962
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/moveline/Timeline;->resume()V

    goto :goto_0

    .line 1967
    .end local v5    # "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    :cond_3
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1968
    .local v2, "particleViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1969
    .local v1, "iterator2":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1970
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;

    .line 1971
    .local v3, "pv":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    if-eqz v3, :cond_4

    .line 1972
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;->resume()V

    goto :goto_1
.end method

.method public setAutoGradientDisplay(Z)V
    .locals 1
    .param p1, "autoGradientDisplay"    # Z

    .prologue
    const/16 v0, 0x320

    .line 1728
    invoke-virtual {p0, p1, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setAutoGradientDisplay(ZI)V

    .line 1729
    return-void
.end method

.method public setAutoGradientDisplay(ZI)V
    .locals 4
    .param p1, "autoGradientDisplay"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 1736
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoGradientDisplay:Z

    const/4 v0, 0x0

    .line 1737
    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1738
    iget-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoGradientDisplay:Z

    if-nez v0, :cond_0

    .line 1758
    :goto_0
    return-void

    .line 1739
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1740
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1741
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutpAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$8;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$8;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public setAutoRunAnimation(Z)V
    .locals 0
    .param p1, "autoRunAnimation"    # Z

    .prologue
    .line 1724
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mAutoRunAnim:Z

    .line 1725
    return-void
.end method

.method public setData(Lcom/meizu/flyme/activeview/json/ActiveData;)V
    .locals 6
    .param p1, "activeData"    # Lcom/meizu/flyme/activeview/json/ActiveData;

    .prologue
    const/4 v5, 0x0

    .line 789
    if-eqz p1, :cond_2

    .line 793
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/version/VersionManager;->getVersionManager(Landroid/content/Context;)Lcom/meizu/flyme/activeview/version/VersionManager;

    move-result-object v1

    .line 794
    .local v1, "versionManager":Lcom/meizu/flyme/activeview/version/VersionManager;
    invoke-virtual {v1, p1}, Lcom/meizu/flyme/activeview/version/VersionManager;->checkVersion(Lcom/meizu/flyme/activeview/json/ActiveData;)I

    move-result v0

    .local v0, "checkVersionResult":I
    const/4 v2, 0x1

    .line 795
    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    .line 805
    if-eq v0, v2, :cond_5

    .line 826
    :cond_0
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mActiveData:Lcom/meizu/flyme/activeview/json/ActiveData;

    .line 828
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->createViewsFromActiveData()V

    .line 831
    :cond_1
    :goto_0
    return-void

    .end local v0    # "checkVersionResult":I
    .end local v1    # "versionManager":Lcom/meizu/flyme/activeview/version/VersionManager;
    :cond_2
    const-string/jumbo v2, "activeview.ActiveView"

    const-string/jumbo v3, "setData activeData is NULL!"

    .line 790
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void

    .restart local v0    # "checkVersionResult":I
    .restart local v1    # "versionManager":Lcom/meizu/flyme/activeview/version/VersionManager;
    :cond_3
    const-string/jumbo v2, "activeview.ActiveView"

    const-string/jumbo v3, "ActiveView version not Compatible ! Please upgrade ActiveView !"

    .line 796
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnVersionListener:Lcom/meizu/flyme/activeview/listener/OnVersionListener;

    if-nez v2, :cond_4

    .line 802
    :goto_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    if-eqz v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    const/4 v3, 0x6

    const-string/jumbo v4, "VERSION_NOT_COMPATIBALE !"

    invoke-interface {v2, v3, v5, v4}, Lcom/meizu/flyme/activeview/listener/OnUpdateListener;->onUpdateFinished(IILjava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_4
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnVersionListener:Lcom/meizu/flyme/activeview/listener/OnVersionListener;

    const-string/jumbo v3, "2.0.0"

    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/ActiveData;->getMiniCompatibleVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/meizu/flyme/activeview/listener/OnVersionListener;->onVersionNotCompatible(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 805
    :cond_5
    iget-boolean v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUpgradeChecked:Z

    if-nez v2, :cond_0

    .line 806
    new-instance v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;

    invoke-direct {v2, p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$6;-><init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;Lcom/meizu/flyme/activeview/json/ActiveData;)V

    invoke-virtual {v1, v2}, Lcom/meizu/flyme/activeview/version/VersionManager;->setOnVersionChangedListener(Lcom/meizu/flyme/activeview/version/VersionManager$OnVersionChangedListener;)V

    .line 823
    invoke-virtual {v1, p1}, Lcom/meizu/flyme/activeview/version/VersionManager;->checkUpgradeVersion(Lcom/meizu/flyme/activeview/json/ActiveData;)V

    goto :goto_0
.end method

.method public setDefaultImage(I)V
    .locals 1
    .param p1, "defaultResId"    # I

    .prologue
    const/4 v0, -0x1

    .line 300
    invoke-virtual {p0, v0, v0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImage(III)V

    .line 301
    return-void
.end method

.method public setDefaultImage(III)V
    .locals 4
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "defaultResId"    # I

    .prologue
    .line 285
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 288
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 289
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImage(IILandroid/graphics/Bitmap;)V

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImageDrawable(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDefaultImage(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 311
    if-nez p3, :cond_0

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 313
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImageDrawable(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDefaultImage(IILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImageDrawable(IILandroid/graphics/drawable/Drawable;)V

    .line 344
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, -0x1

    .line 323
    invoke-virtual {p0, v0, v0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImage(IILandroid/graphics/Bitmap;)V

    .line 324
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, -0x1

    .line 332
    invoke-virtual {p0, v0, v0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->setDefaultImage(IILandroid/graphics/drawable/Drawable;)V

    .line 333
    return-void
.end method

.method public setFrameDelay(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 2280
    invoke-static {p1, p2}, Lcom/meizu/flyme/activeview/moveline/TimelineTicker;->setFrameDelay(J)V

    .line 2281
    return-void
.end method

.method public setImageCache(Lcom/meizu/flyme/activeview/utils/ImageCache;)V
    .locals 1
    .param p1, "imageCache"    # Lcom/meizu/flyme/activeview/utils/ImageCache;

    .prologue
    .line 1785
    invoke-static {}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->getInstance()Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/activeview/utils/ImageCacheUtils;->setImageCache(Lcom/meizu/flyme/activeview/utils/ImageCache;)V

    .line 1786
    return-void
.end method

.method protected setOnActiveViewUpgradeListener(Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;)V
    .locals 0
    .param p1, "onActiveViewUpgradeListener"    # Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnActiveViewUpgradeListener:Lcom/meizu/flyme/activeview/listener/OnActiveViewUpgradeListener;

    .line 2276
    return-void
.end method

.method public setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnEventListener;

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

    .line 1860
    return-void
.end method

.method public setOnLoadImageListener(Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnLoadImageListener:Lcom/meizu/flyme/activeview/listener/OnLoadImageListener;

    .line 504
    return-void
.end method

.method public setOnUpdateListener(Lcom/meizu/flyme/activeview/listener/OnUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnUpdateListener:Lcom/meizu/flyme/activeview/listener/OnUpdateListener;

    .line 403
    return-void
.end method

.method public setOnVersionListener(Lcom/meizu/flyme/activeview/listener/OnVersionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnVersionListener;

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnVersionListener:Lcom/meizu/flyme/activeview/listener/OnVersionListener;

    .line 1869
    return-void
.end method

.method public setParallaxListener(Lcom/meizu/flyme/activeview/listener/OnParallaxListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mOnParallaxListener:Lcom/meizu/flyme/activeview/listener/OnParallaxListener;

    .line 407
    return-void
.end method

.method public setParallaxListener(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "useParallax"    # Ljava/lang/Boolean;

    .prologue
    .line 410
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mUseParallax:Z

    .line 411
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mZipPassword:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setTextContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1467
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mViewElementCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;

    .line 1469
    .local v1, "viewElementData":Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;
    iget-object v2, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mViewType:Ljava/lang/String;

    const-string/jumbo v3, "textview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1470
    iget-object v0, v1, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$ViewElementData;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 1471
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setUseAssetsResources(Z)V
    .locals 0
    .param p1, "useAssetsResources"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mbUseAssetsResources:Z

    .line 275
    return-void
.end method

.method public startAnimation()V
    .locals 7

    .prologue
    .line 1882
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1883
    .local v4, "timelines":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/moveline/Timeline;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1884
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1891
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 1901
    :cond_1
    return-void

    .line 1885
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1886
    .local v5, "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    if-eqz v5, :cond_0

    .line 1887
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/moveline/Timeline;->play()V

    goto :goto_0

    .line 1892
    .end local v5    # "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    :cond_3
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1893
    .local v2, "particleViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1894
    .local v1, "iterator2":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1895
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;

    .line 1896
    .local v3, "pv":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    if-eqz v3, :cond_4

    .line 1897
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;->start()V

    goto :goto_1
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    if-nez v0, :cond_0

    .line 2100
    :goto_0
    return-void

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 7

    .prologue
    .line 1907
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mTimelineMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1908
    .local v4, "timelines":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/moveline/Timeline;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1909
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1916
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 1926
    :cond_1
    return-void

    .line 1910
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/flyme/activeview/moveline/Timeline;

    .line 1911
    .local v5, "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    if-eqz v5, :cond_0

    .line 1912
    invoke-virtual {v5}, Lcom/meizu/flyme/activeview/moveline/Timeline;->stop()V

    goto :goto_0

    .line 1917
    .end local v5    # "tl":Lcom/meizu/flyme/activeview/moveline/Timeline;
    :cond_3
    iget-object v6, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mGraphicsAnimViewMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1918
    .local v2, "particleViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1919
    .local v1, "iterator2":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1920
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;

    .line 1921
    .local v3, "pv":Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;
    if-eqz v3, :cond_4

    .line 1922
    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/graphicsanim/widget/ParticleView;->stop()V

    goto :goto_1
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    if-nez v0, :cond_0

    .line 2109
    :goto_0
    return-void

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->mSimpleVideoView:Lcom/meizu/flyme/activeview/views/SimpleVideoView;

    invoke-virtual {v0}, Lcom/meizu/flyme/activeview/views/SimpleVideoView;->stop()V

    goto :goto_0
.end method

.method public updateResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 388
    if-eqz p1, :cond_1

    const-string/jumbo v0, "activeview.ActiveView"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateResource url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ".act"

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->downloadPackage(Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 389
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, ".zip"

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->isVideoURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->downloadImage(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->downloadVideo(Ljava/lang/String;II)V

    goto :goto_0
.end method
