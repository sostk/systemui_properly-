.class public Lcom/meizu/common/widget/SkipPosSeekBar;
.super Landroid/widget/SeekBar;
.source "SkipPosSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mOffset:F

.field private mProcess:I

.field private mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    .line 35
    invoke-direct {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    .line 40
    invoke-direct {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SkipPosSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SkipPosSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/SkipPosSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SkipPosSeekBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/SkipPosSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/SkipPosSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mProcess:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/SkipPosSeekBar;)Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SkipPosSeekBar;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "sdkApi":I
    const/16 v1, 0x15

    .line 55
    if-ge v0, v1, :cond_0

    .line 58
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private startAnimation(IFFI)V
    .locals 4
    .param p1, "curProgress"    # I
    .param p2, "startPos"    # F
    .param p3, "endPos"    # F
    .param p4, "duration"    # I

    .prologue
    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/meizu/common/widget/SkipPosSeekBar$1;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;FFI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/SkipPosSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/SkipPosSeekBar$2;-><init>(Lcom/meizu/common/widget/SkipPosSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 131
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/SkipPosSeekBar;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 67
    .local v0, "available":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v1

    div-int v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    goto :goto_0
.end method

.method public setSkipAnimationListener(Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;)V
    .locals 0
    .param p1, "mSkipAnimationListener"    # Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mSkipAnimationListener:Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;

    .line 139
    return-void
.end method

.method public setSkipPosMax(I)V
    .locals 5
    .param p1, "max"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 153
    .local v2, "scale":F
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setMax(I)V

    .line 154
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 155
    .local v1, "currentProgress":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SkipPosSeekBar;->setProgress(I)V

    .line 156
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 158
    .local v0, "available":I
    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    goto :goto_0
.end method

.method public setSkipProgress(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 91
    .local v0, "progress":I
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(I)V

    .line 92
    return-void
.end method

.method public setSkipProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    iget v5, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 77
    .local v1, "endPos":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mOffset:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 78
    .local v2, "startPos":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgress()I

    move-result v0

    .line 79
    .local v0, "currentProgress":I
    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    const/16 v3, 0x180

    .line 82
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/meizu/common/widget/SkipPosSeekBar;->startAnimation(IFFI)V

    .line 83
    return-void

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
