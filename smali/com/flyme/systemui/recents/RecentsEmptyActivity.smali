.class public Lcom/flyme/systemui/recents/RecentsEmptyActivity;
.super Landroid/app/Activity;
.source "RecentsEmptyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;,
        Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;
    }
.end annotation


# static fields
.field public static sDuringStart:Z

.field static sImageCache:Landroid/graphics/Bitmap;

.field static sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

.field static final sResumeListenerLock:Ljava/lang/Object;

.field public static sResumed:Z

.field public static sStatusBarColor:I

.field public static sStatusBarVisible:Z


# instance fields
.field private isAlive:Z

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreTouch:Z

.field private mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

.field private mSelfDestruct:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

.field mUpdateImgTime:J


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->notifiResumeListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sDuringStart:Z

    .line 31
    sput-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumed:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListenerLock:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mSelfDestruct:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method private static notifiResumeListener()V
    .locals 3

    .prologue
    .line 89
    sget-object v1, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isCancel:Z

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->run()V

    .line 93
    sget-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isCancel:Z

    .line 95
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerResumeListener(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;Ljava/lang/Object;)V
    .locals 4
    .param p0, "r"    # Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
    .param p1, "post"    # Ljava/lang/Object;

    .prologue
    .line 42
    sget-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumed:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->run()V

    .line 41
    .end local p1    # "post":Ljava/lang/Object;
    :goto_0
    return-void

    .line 45
    .restart local p1    # "post":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isSync:Z

    .line 46
    sget-object v1, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sput-object p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumeListener:Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;

    .line 48
    instance-of v0, p1, Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 49
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "post":Ljava/lang/Object;
    new-instance v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$1;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;)V

    .line 57
    const-wide/16 v2, 0x7d0

    .line 49
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 58
    .restart local p1    # "post":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Landroid/view/View;

    .end local p1    # "post":Ljava/lang/Object;
    new-instance v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$2;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;)V

    .line 67
    const-wide/16 v2, 0x7d0

    .line 59
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setImageCache(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "imageCache"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    sput-object p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sImageCache:Landroid/graphics/Bitmap;

    .line 84
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 112
    .local v0, "keyCode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 115
    :cond_0
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mIgnoreTouch:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 116
    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_1
    :goto_0
    return v3

    .line 118
    :pswitch_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;

    invoke-direct {v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$HomePress;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;

    invoke-direct {v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$BackPress;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x400

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const-string/jumbo v0, "recents.RAcitivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setContentView(I)V

    .line 133
    const v0, 0x7f0f01eb

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/MirrorView;

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    .line 134
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget v1, v0, Landroid/view/MeizuLayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/MeizuLayoutParams;->flags:I

    .line 135
    sget-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sStatusBarVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isQuickChange:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 140
    :goto_0
    sget v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sStatusBarColor:I

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setStatusBarDarkIcon(I)V

    .line 142
    invoke-virtual {p0, v3, v3}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->overridePendingTransition(II)V

    .line 129
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;

    .prologue
    .line 290
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$IgnoreTouch;->isIgnore:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mIgnoreTouch:Z

    .line 289
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$RecentActivityForceFinish;

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->finish()V

    .line 295
    invoke-virtual {p0, v0, v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->overridePendingTransition(II)V

    .line 293
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;)V
    .locals 1
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    .prologue
    .line 261
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;->isActive:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->isAlive:Z

    .line 260
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;)V
    .locals 2
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mUpdateImgTime:J

    .line 268
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/MirrorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    iget-object v1, p1, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/MirrorView;->bindBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    return-void
.end method

.method public onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;)V
    .locals 4
    .param p1, "event"    # Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mUpdateImgTime:J

    .line 274
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/MirrorView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/views/MirrorView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/MirrorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/MirrorView;->transparent()V

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/views/MirrorView;->setRotation(F)V

    .line 272
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/recents/model/WallPaperHelper;->getWallPaper(Landroid/content/Context;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/MirrorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/views/MirrorView;->transparent()V

    .line 281
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    if-ne v0, v2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/recents/views/MirrorView;->setRotation(F)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/views/MirrorView;->setRotation(F)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 187
    const-string/jumbo v0, "recents.RAcitivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sput-boolean v2, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumed:Z

    .line 189
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mSelfDestruct:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->onPause()V

    .line 191
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 193
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->isAlive:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, v2, v2}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->overridePendingTransition(II)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->finish()V

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x400

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sResumed:Z

    .line 149
    sput-boolean v3, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sDuringStart:Z

    .line 150
    const-string/jumbo v0, "recents.RAcitivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 154
    sget-boolean v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sStatusBarVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isQuickChange:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 159
    :goto_0
    sget v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sStatusBarColor:I

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setStatusBarDarkIcon(I)V

    .line 161
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mIgnoreTouch:Z

    .line 162
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->isAlive:Z

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->finish()V

    .line 146
    :goto_1
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 165
    :cond_1
    sget-object v0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sImageCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 166
    new-instance v0, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;

    sget-object v1, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sImageCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->onEvent(Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivity;)V

    .line 167
    sput-object v4, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sImageCache:Landroid/graphics/Bitmap;

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$3;-><init>(Lcom/flyme/systemui/recents/RecentsEmptyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mSelfDestruct:Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$SelfDestruct;->onResume()V

    goto :goto_1
.end method

.method public onTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mUpdateImgTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 204
    const-string/jumbo v0, "recents.RAcitivity"

    const-string/jumbo v1, "onTrimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/recents/views/MirrorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->mMirrorView:Lcom/flyme/systemui/recents/views/MirrorView;

    invoke-virtual {v0, v4}, Lcom/flyme/systemui/recents/views/MirrorView;->bindBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    :cond_0
    return-void
.end method
