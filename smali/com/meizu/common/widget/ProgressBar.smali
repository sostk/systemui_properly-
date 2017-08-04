.class public Lcom/meizu/common/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ProgressBar$1;,
        Lcom/meizu/common/widget/ProgressBar$SavedState;,
        Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBehavior:I

.field private mBreakPoint:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsVertical:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_ProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    .line 212
    iput-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    .line 236
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->initProgressBar()V

    .line 238
    sget-object v5, Lcom/meizu/common/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    .line 243
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcProgressDrawable:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 244
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 252
    :goto_0
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateDuration:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    .line 254
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcMinWidth:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    .line 255
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcMaxWidth:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    .line 256
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcMinHeight:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    .line 257
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcMaxHeight:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 259
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateBehavior:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    .line 261
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcInterpolator:I

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 264
    .local v2, "resID":I
    if-gtz v2, :cond_2

    .line 268
    :goto_1
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcMax:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/ProgressBar;->setMax(I)V

    .line 270
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcProgress:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 272
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcSecondaryProgress:I

    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 275
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateDrawable:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 276
    if-nez v1, :cond_3

    .line 281
    :goto_2
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminateOnly:I

    iget-boolean v6, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 284
    iput-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    .line 286
    iget-boolean v5, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v5, :cond_4

    :cond_0
    move v3, v4

    :goto_3
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ProgressBar;->setIndeterminate(Z)V

    .line 289
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 290
    return-void

    .line 245
    .end local v2    # "resID":I
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 248
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 265
    .restart local v2    # "resID":I
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/meizu/common/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    goto :goto_1

    .line 277
    :cond_3
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 278
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 286
    :cond_4
    sget v5, Lcom/meizu/common/R$styleable;->ProgressBar_mcIndeterminate:I

    iget-boolean v6, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/ProgressBar;Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;)Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ProgressBar;
    .param p1, "x1"    # Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    monitor-enter p0

    .line 553
    :try_start_0
    iget v5, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-gtz v5, :cond_1

    const/4 v4, 0x0

    .line 554
    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 555
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 565
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-nez p4, :cond_5

    :cond_0
    :goto_2
    monitor-exit p0

    .line 571
    return-void

    .line 553
    .end local v4    # "scale":F
    :cond_1
    int-to-float v5, p2

    :try_start_1
    iget v6, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_2
    const/4 v3, 0x0

    .line 558
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-nez v5, :cond_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    const v5, 0x461c4000    # 10000.0f

    .line 562
    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 563
    .local v2, "level":I
    if-nez v3, :cond_4

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "level":I
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 559
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_3
    :try_start_2
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    :cond_4
    move-object v1, v3

    .line 563
    goto :goto_4

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "level":I
    :cond_5
    const v5, 0x102000d

    .line 568
    if-ne p1, v5, :cond_0

    .line 569
    invoke-virtual {p0, v4, p3}, Lcom/meizu/common/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    const/16 v0, 0x64

    .line 362
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 363
    iput v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    .line 364
    iput v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    .line 365
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    .line 366
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    .line 367
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    const/4 v0, 0x1

    .line 368
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    .line 369
    iput v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    .line 370
    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    .line 371
    iput v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    .line 372
    iput v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 373
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    monitor-enter p0

    .line 576
    :try_start_0
    iget-wide v2, p0, Lcom/meizu/common/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 577
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 592
    return-void

    .line 580
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_1

    .line 588
    new-instance v0, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/meizu/common/widget/ProgressBar;IIZ)V

    .line 590
    .local v0, "r":Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "r":Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 582
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .restart local v0    # "r":Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    .line 584
    iput-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    .line 585
    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;->setup(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    const/4 v7, 0x0

    .line 298
    instance-of v6, p1, Landroid/graphics/drawable/LayerDrawable;

    if-nez v6, :cond_0

    .line 318
    return-object p1

    :cond_0
    move-object v1, p1

    .line 299
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 300
    .local v1, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 301
    .local v0, "N":I
    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    .local v5, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 303
    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 309
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v4, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    .line 311
    :goto_1
    if-lt v2, v0, :cond_4

    .line 315
    return-object v4

    .line 304
    .end local v4    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 305
    .local v3, "id":I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v6, 0x102000d

    if-ne v3, v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    :goto_2
    invoke-direct {p0, v8, v6}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const v6, 0x102000f

    .line 305
    if-eq v3, v6, :cond_2

    move v6, v7

    goto :goto_2

    .line 312
    .end local v3    # "id":I
    .restart local v4    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    :cond_4
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 332
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_0

    .line 346
    :goto_0
    return-object p1

    :cond_0
    move-object v1, p1

    .line 333
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 334
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 335
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 336
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    .line 338
    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 343
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 344
    move-object p1, v4

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/meizu/common/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 340
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 341
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateDrawableBounds(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v12, 0x0

    .line 876
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v11

    sub-int v7, v10, v11

    .line 877
    .local v7, "right":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v11

    sub-int v0, v10, v11

    .local v0, "bottom":I
    const/4 v8, 0x0

    .local v8, "top":I
    const/4 v6, 0x0

    .line 881
    .local v6, "left":I
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    .line 907
    :goto_0
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_4

    .line 910
    :goto_1
    return-void

    .line 883
    :cond_0
    iget-boolean v10, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v10, :cond_2

    .line 904
    :cond_1
    :goto_2
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v6, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 883
    :cond_2
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v10, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v10, :cond_1

    .line 886
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 887
    .local v5, "intrinsicWidth":I
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 888
    .local v4, "intrinsicHeight":I
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v3, v10, v11

    .line 889
    .local v3, "intrinsicAspect":F
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v1, v10, v11

    .line 890
    .local v1, "boundAspect":F
    cmpl-float v10, v3, v1

    if-eqz v10, :cond_1

    .line 891
    cmpl-float v10, v1, v3

    if-lez v10, :cond_3

    .line 893
    int-to-float v10, p2

    mul-float/2addr v10, v3

    float-to-int v9, v10

    .line 894
    .local v9, "width":I
    sub-int v10, p1, v9

    div-int/lit8 v6, v10, 0x2

    .line 895
    add-int v7, v6, v9

    goto :goto_2

    .line 898
    .end local v9    # "width":I
    :cond_3
    int-to-float v10, p1

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v3

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 899
    .local v2, "height":I
    sub-int v10, p2, v2

    div-int/lit8 v8, v10, 0x2

    .line 900
    add-int v0, v8, v2

    goto :goto_2

    .line 908
    .end local v1    # "boundAspect":F
    .end local v2    # "height":I
    .end local v3    # "intrinsicAspect":F
    .end local v4    # "intrinsicHeight":I
    .end local v5    # "intrinsicWidth":I
    :cond_4
    iget-object v10, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12, v12, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1004
    .local v0, "state":[I
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 1008
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 1011
    :cond_1
    :goto_1
    return-void

    .line 1004
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1008
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 997
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 998
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 999
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    const/16 v1, 0x8

    .line 322
    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 323
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 704
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 673
    :try_start_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 690
    :try_start_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    .line 739
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 740
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    .line 750
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 751
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 855
    iget-boolean v3, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    if-eqz v3, :cond_0

    .line 867
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 864
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 857
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 858
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 859
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v4

    add-int v2, v3, v4

    .line 861
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/meizu/common/widget/ProgressBar;->invalidate(IIII)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    .line 382
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isIsVertical()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 514
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 516
    :goto_1
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1075
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1076
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    .line 1086
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_2

    .line 1089
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_3

    .line 1094
    :cond_0
    :goto_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1095
    return-void

    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    goto :goto_0

    .line 1087
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1089
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mRefreshProgressRunnable:Lcom/meizu/common/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 922
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 924
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 975
    return-void

    .line 929
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v9

    :goto_1
    sub-int v0, v8, v9

    .line 931
    .local v0, "availdeDis":I
    iget v8, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    mul-int/2addr v8, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v9

    div-int v1, v8, v9

    .line 934
    .local v1, "breakLevel":I
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    if-nez v8, :cond_4

    .line 938
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v10

    invoke-direct {v3, v8, v9, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 939
    .local v3, "firstPartRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v8, v1, 0x5

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v10

    invoke-direct {v5, v8, v9, v0, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 941
    .local v5, "secondPartRect":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 942
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 943
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v6

    .line 944
    .local v6, "time":J
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mHasAnimation:Z

    if-nez v8, :cond_5

    .line 955
    :goto_3
    iget v8, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getMax()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 966
    :cond_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 967
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 970
    :goto_4
    iget-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v8, :cond_0

    instance-of v8, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v8, :cond_0

    .line 971
    check-cast v2, Landroid/graphics/drawable/Animatable;

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 972
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "availdeDis":I
    .end local v1    # "breakLevel":I
    .end local v3    # "firstPartRect":Landroid/graphics/Rect;
    .end local v5    # "secondPartRect":Landroid/graphics/Rect;
    .end local v6    # "time":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 929
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v9

    goto :goto_1

    .line 935
    .restart local v0    # "availdeDis":I
    .restart local v1    # "breakLevel":I
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v10

    sub-int v11, v0, v1

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 936
    .restart local v3    # "firstPartRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    sub-int v9, v0, v1

    add-int/lit8 v9, v9, 0x5

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v10

    invoke-direct {v5, v8, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "secondPartRect":Landroid/graphics/Rect;
    goto :goto_2

    .line 945
    .restart local v6    # "time":J
    :cond_5
    iget-object v8, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v9, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8, v6, v7, v9}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 946
    iget-object v8, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 948
    .local v4, "scale":F
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    const v8, 0x461c4000    # 10000.0f

    .line 949
    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 951
    const/4 v8, 0x0

    :try_start_4
    iput-boolean v8, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    .line 953
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    goto :goto_3

    .line 952
    :catchall_1
    move-exception v8

    .line 951
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/meizu/common/widget/ProgressBar;->mInDrawing:Z

    throw v8

    .line 955
    .end local v4    # "scale":F
    :cond_6
    iget v8, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    if-eqz v8, :cond_2

    .line 956
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 957
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 958
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 960
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 961
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 962
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 963
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1099
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/meizu/common/widget/ProgressBar;

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1101
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1102
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1103
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1138
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ProgressBar;

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1140
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    monitor-enter p0

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "dw":I
    const/4 v1, 0x0

    .line 983
    .local v1, "dh":I
    if-nez v0, :cond_0

    .line 987
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    .line 988
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 989
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    const/4 v3, 0x0

    .line 991
    invoke-static {v2, p1, v3}, Lcom/meizu/common/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/meizu/common/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/meizu/common/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 993
    return-void

    .line 984
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 985
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 573
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1066
    check-cast v0, Lcom/meizu/common/widget/ProgressBar$SavedState;

    .line 1067
    .local v0, "ss":Lcom/meizu/common/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1069
    iget v1, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setProgress(I)V

    .line 1070
    iget v1, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1071
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1055
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1056
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1058
    .local v0, "ss":Lcom/meizu/common/widget/ProgressBar$SavedState;
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    iput v2, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->progress:I

    .line 1059
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/meizu/common/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1061
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 871
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 872
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 841
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 843
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    .line 845
    if-ne p2, v0, :cond_2

    .line 846
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 845
    if-eq p2, v0, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mNoInvalidate:Z

    if-eqz v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public setBreakPoint(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 916
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mBreakPoint:I

    .line 917
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->invalidate()V

    .line 918
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_2

    :goto_0
    monitor-exit p0

    .line 408
    return-void

    .line 396
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_2
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    .line 399
    if-nez p1, :cond_3

    .line 404
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 436
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    .line 441
    :goto_1
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 438
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 801
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 802
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 812
    return-void
.end method

.method protected setIsVertical(Z)V
    .locals 0
    .param p1, "mIsVertical"    # Z

    .prologue
    .line 1133
    iput-boolean p1, p0, Lcom/meizu/common/widget/ProgressBar;->mIsVertical:Z

    .line 1134
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    .line 717
    if-ltz p1, :cond_0

    .line 720
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    :goto_1
    monitor-exit p0

    .line 729
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 718
    goto :goto_0

    .line 721
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    .line 722
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 724
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-gt v0, p1, :cond_2

    :goto_2
    const v0, 0x102000d

    .line 727
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 725
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 606
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 607
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    monitor-enter p0

    .line 610
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    .line 614
    if-ltz p1, :cond_1

    .line 618
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-gt p1, v0, :cond_2

    .line 622
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_3

    :goto_2
    monitor-exit p0

    .line 626
    return-void

    :cond_0
    monitor-exit p0

    .line 611
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 615
    goto :goto_0

    .line 619
    :cond_2
    :try_start_1
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    goto :goto_1

    .line 623
    :cond_3
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    const v0, 0x102000d

    .line 624
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 467
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 471
    :cond_0
    const/4 v1, 0x0

    .line 474
    .local v1, "needUpdate":Z
    :goto_0
    if-nez p1, :cond_3

    .line 484
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 485
    iget-boolean v2, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v2, :cond_4

    .line 490
    :goto_2
    if-nez v1, :cond_5

    .line 496
    :goto_3
    return-void

    .line 467
    .end local v1    # "needUpdate":Z
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 469
    const/4 v1, 0x1

    .restart local v1    # "needUpdate":Z
    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 478
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 479
    .local v0, "drawableHeight":I
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_1

    .line 480
    iput v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMaxHeight:I

    .line 481
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->requestLayout()V

    goto :goto_1

    .line 486
    .end local v0    # "drawableHeight":I
    :cond_4
    iput-object p1, p0, Lcom/meizu/common/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    goto :goto_2

    .line 491
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 492
    invoke-direct {p0}, Lcom/meizu/common/widget/ProgressBar;->updateDrawableState()V

    const v2, 0x102000d

    .line 493
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    const v2, 0x102000f

    .line 494
    iget v3, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/meizu/common/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    goto :goto_3
.end method

.method public setProgressDrawableResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1114
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1115
    .local v1, "newDrawble":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1116
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
    iget v2, p0, Lcom/meizu/common/widget/ProgressBar;->mProgress:I

    if-gtz v2, :cond_0

    .line 1123
    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    .line 1120
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ProgressBar;->incrementProgressBy(I)V

    const/4 v2, 0x1

    .line 1121
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    monitor-enter p0

    .line 641
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    .line 645
    if-ltz p1, :cond_1

    .line 649
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    if-gt p1, v0, :cond_2

    .line 653
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_3

    :goto_2
    monitor-exit p0

    .line 657
    return-void

    :cond_0
    monitor-exit p0

    .line 642
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 646
    goto :goto_0

    .line 650
    :cond_2
    :try_start_1
    iget p1, p0, Lcom/meizu/common/widget/ProgressBar;->mMax:I

    goto :goto_1

    .line 654
    :cond_3
    iput p1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    const v0, 0x102000f

    .line 655
    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 828
    iget-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 830
    if-ne p1, v0, :cond_3

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->stopAnimation()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    .line 830
    if-eq p1, v0, :cond_2

    .line 833
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 757
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 769
    :goto_0
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 770
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 771
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 772
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 773
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/meizu/common/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 775
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 777
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 778
    return-void

    .line 758
    :cond_0
    return-void

    .line 762
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 763
    iput-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    .line 766
    :cond_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 784
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 785
    iput-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 786
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/ProgressBar;->postInvalidate()V

    .line 791
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 788
    iput-boolean v1, p0, Lcom/meizu/common/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 507
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
