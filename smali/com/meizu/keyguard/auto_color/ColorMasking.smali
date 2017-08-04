.class public Lcom/meizu/keyguard/auto_color/ColorMasking;
.super Ljava/lang/Object;
.source "ColorMasking.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;


# instance fields
.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mCover:Landroid/widget/ImageView;

.field private mFrank:F

.field private mHasNotification:Z

.field private mIsExpending:Z

.field private mMusicPlaying:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/auto_color/ColorMasking;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "ColorMasking"

    sput-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "cover"    # Landroid/widget/ImageView;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mFrank:F

    .line 31
    return-void
.end method

.method private createAlphaAnimator(FLjava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "target"    # F
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 118
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 119
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    new-instance v1, Lcom/meizu/keyguard/auto_color/ColorMasking$2;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/auto_color/ColorMasking$2;-><init>(Lcom/meizu/keyguard/auto_color/ColorMasking;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    new-instance v1, Lcom/meizu/keyguard/auto_color/ColorMasking$3;

    invoke-direct {v1, p0, p2}, Lcom/meizu/keyguard/auto_color/ColorMasking$3;-><init>(Lcom/meizu/keyguard/auto_color/ColorMasking;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    return-object v0
.end method

.method public static getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;
    .locals 2
    .param p0, "cover"    # Landroid/widget/ImageView;

    .prologue
    .line 36
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    if-nez v0, :cond_0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lcom/meizu/keyguard/auto_color/ColorMasking;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;-><init>(Landroid/widget/ImageView;)V

    sput-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    .line 43
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    return-object v0

    .line 40
    :cond_1
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cover is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideCover()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 105
    :cond_1
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 108
    :cond_2
    new-instance v0, Lcom/meizu/keyguard/auto_color/ColorMasking$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/ColorMasking$1;-><init>(Lcom/meizu/keyguard/auto_color/ColorMasking;)V

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->setCoverAlpha(FZLjava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method private setCoverAlpha(F)V
    .locals 2
    .param p1, "target"    # F

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->setCoverAlpha(FZLjava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method private setCoverAlpha(FZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "target"    # F
    .param p2, "withAnim"    # Z
    .param p3, "end"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 151
    :cond_0
    if-eqz p2, :cond_1

    .line 152
    invoke-direct {p0, p1, p3}, Lcom/meizu/keyguard/auto_color/ColorMasking;->createAlphaAnimator(FLjava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 153
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    :goto_0
    return-void

    .line 155
    :cond_1
    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 162
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 158
    :cond_3
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private showCover()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCover, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0, v2}, Lcom/meizu/keyguard/auto_color/ColorMasking;->setCoverAlpha(FZLjava/lang/Runnable;)V

    .line 85
    return-void
.end method


# virtual methods
.method public updateMaskingColor(FZ)V
    .locals 3
    .param p1, "frank"    # F
    .param p2, "isExpend"    # Z

    .prologue
    .line 57
    sget-object v0, Lcom/meizu/keyguard/auto_color/ColorMasking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMaskingColor, frank = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    const-string/jumbo v2, ",isExpend"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    const-string/jumbo v2, ", mHasNotification"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    iget-boolean v2, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mHasNotification:Z

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput p1, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mFrank:F

    .line 61
    iput-boolean p2, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mIsExpending:Z

    .line 62
    iget-boolean v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mMusicPlaying:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->hideCover()V

    .line 56
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mHasNotification:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->showCover()V

    goto :goto_0

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->setCoverAlpha(F)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->hideCover()V

    goto :goto_0
.end method

.method public updateMaskingOnBrightMirrorChange(Z)V
    .locals 4
    .param p1, "showCover"    # Z

    .prologue
    .line 75
    iget v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mFrank:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->showCover()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->hideCover()V

    goto :goto_0
.end method

.method public updateMaskingState(ZZZ)V
    .locals 1
    .param p1, "musicPlaying"    # Z
    .param p2, "isShownNotification"    # Z
    .param p3, "isFullyExpanded"    # Z

    .prologue
    .line 47
    iput-boolean p2, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mHasNotification:Z

    .line 48
    iput-boolean p1, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mMusicPlaying:Z

    .line 49
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking;->mIsExpending:Z

    if-nez v0, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->hideCover()V

    .line 46
    :cond_2
    :goto_0
    return-void

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->showCover()V

    goto :goto_0
.end method
