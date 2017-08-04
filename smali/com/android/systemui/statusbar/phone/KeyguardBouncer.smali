.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;
    }
.end annotation


# static fields
.field private static FADE_OUT_DURATION:I

.field private static sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mEndTranslation:F

.field mHandler:Landroid/os/Handler;

.field private mHideContainerAnimator:Landroid/animation/ValueAnimator;

.field private mHideRootAnimator:Landroid/animation/ValueAnimator;

.field private mImageWallpaper:Landroid/graphics/drawable/Drawable;

.field private mKeyguardBackground:Landroid/widget/ImageView;

.field private mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOnNoMatch:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field private mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

.field private mRegister:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateStateRunnable:Ljava/lang/Runnable;

.field private mWallpaper:Landroid/graphics/drawable/Drawable;

.field private mWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mWorkspacePadding:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mEndTranslation:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getWorkspacePaddings()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideRootAnim(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playShowAnim()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setBouncerBackgroud(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setWallpaper()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showSaveViewOrNot()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 683
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 684
    const/16 v0, 0x100

    sput v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->FADE_OUT_DURATION:I

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p4, "windowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p5, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string/jumbo v0, "KeyguardBouncer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->DEBUG:Z

    .line 110
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mChoreographer:Landroid/view/Choreographer;

    .line 132
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 556
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerManager:Landroid/os/PowerManager;

    .line 598
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 630
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 153
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 154
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    .line 155
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 150
    return-void
.end method

.method private cancelShowRunnable()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 208
    return-void
.end method

.method private ensureView()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    .line 297
    :cond_0
    return-void
.end method

.method private getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 522
    if-nez p1, :cond_0

    .line 523
    return-object v1

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 526
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 534
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 527
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 528
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 529
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getBrightLevel()I

    move-result v1

    if-nez v1, :cond_3

    .line 530
    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {p1, v1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 532
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_3
    move-object v0, p1

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "blurBg":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 541
    :try_start_0
    invoke-static {p1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 545
    .end local v1    # "blurBg":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 547
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0

    .line 542
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "blurBg":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method private getWorkspacePaddings()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWorkspacePadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 619
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 620
    const v4, 0x7f0b0282

    .line 619
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 618
    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWorkspacePadding:Landroid/graphics/Rect;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWorkspacePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method private inflateView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0f007f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewBase;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 311
    const v1, 0x7f0b049d

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mEndTranslation:F

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mOnNoMatch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setOnNoMatchRunnable(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerManager:Landroid/os/PowerManager;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showSaveViewOrNot()V

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    if-nez v0, :cond_1

    .line 325
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v0, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/meizu/keyguard/BroadcastReceiverHelper;->registerReceiverAsUserSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 333
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 335
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    .line 303
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private loadSaveModeView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 367
    const v3, 0x7f0f00d6

    .line 366
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 368
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v3, 0x7f0f00d7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 373
    .local v1, "stub1":Landroid/view/ViewStub;
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/keyguard/BatteryInfoView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    .line 377
    .end local v0    # "stub":Landroid/view/ViewStub;
    .end local v1    # "stub1":Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setBouncerBackgroud(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    if-eqz v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v2, v5}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v2}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->loadSaveModeView()V

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v2}, Lcom/meizu/keyguard/BatteryInfoView;->initViews()V

    .line 382
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v2, v5}, Lcom/meizu/keyguard/BatteryInfoView;->setVisibility(I)V

    .line 364
    :cond_2
    return-void
.end method

.method private playHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "updateStateRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 659
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideKeyguardViewAnim(Ljava/lang/Runnable;)V

    .line 672
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setUpdateStateRunnable(Ljava/lang/Runnable;)V

    .line 658
    return-void
.end method

.method private playHideKeyguardViewAnim(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 689
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewBase;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->FADE_OUT_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 686
    return-void
.end method

.method private playHideRootAnim(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->FADE_OUT_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 747
    :cond_1
    return-void
.end method

.method private playShowAnim()V
    .locals 4

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 742
    sget v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->FADE_OUT_DURATION:I

    int-to-long v2, v1

    .line 741
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 743
    const/high16 v1, 0x3f800000    # 1.0f

    .line 741
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 744
    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->sFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 741
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 739
    return-void
.end method

.method private removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 395
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 399
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 401
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRegister:Z

    .line 386
    :cond_3
    return-void
.end method

.method private setBouncerBackgroud(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    const-string/jumbo v0, "KeyguardBouncer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBouncerBackgroud background = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    if-ne v0, v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 469
    const/high16 v2, -0x1000000

    .line 468
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setUpdateStateRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateStateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 677
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateStateRunnable:Ljava/lang/Runnable;

    .line 675
    :cond_0
    return-void
.end method

.method private setWallpaper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "b":Landroid/graphics/Bitmap;
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 488
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 489
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 492
    const-string/jumbo v5, "wallpaper"

    .line 491
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 494
    .local v2, "wm":Landroid/app/WallpaperManager;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v4

    .line 494
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 493
    invoke-virtual {v4, v5}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v3

    .line 495
    .local v3, "wrapper":Lcom/meizu/keyguard/theme/LockscreenWrapper;
    invoke-virtual {v3}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 497
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 511
    .end local v2    # "wm":Landroid/app/WallpaperManager;
    .end local v3    # "wrapper":Lcom/meizu/keyguard/theme/LockscreenWrapper;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 516
    :cond_1
    const/4 v0, 0x0

    .line 517
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    return-void

    .line 500
    .local v0, "b":Landroid/graphics/Bitmap;
    .restart local v2    # "wm":Landroid/app/WallpaperManager;
    .restart local v3    # "wrapper":Lcom/meizu/keyguard/theme/LockscreenWrapper;
    :cond_2
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 501
    .local v1, "tmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 502
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 503
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 502
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mImageWallpaper:Landroid/graphics/drawable/Drawable;

    .line 504
    const/4 v1, 0x0

    .local v1, "tmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 508
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    .end local v2    # "wm":Landroid/app/WallpaperManager;
    .end local v3    # "wrapper":Lcom/meizu/keyguard/theme/LockscreenWrapper;
    .local v0, "b":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private showSaveViewOrNot()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    .line 341
    const-string/jumbo v0, "KeyguardBouncer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBatteryOrNot mPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerState:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    if-ne v0, v1, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->loadSaveModeView()V

    .line 359
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->relayoutPassWordView()V

    .line 339
    :cond_1
    return-void

    .line 340
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->normal:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    goto :goto_0

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->loadNormalModeView()V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mTimeView:Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0, v3}, Lcom/meizu/keyguard/DigitalClockAndWeatherForLockScreen;->setVisibility(I)V

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBatteryInfoView:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v0, v3}, Lcom/meizu/keyguard/BatteryInfoView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateColors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FindPhone:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    const/16 v1, 0x99

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 650
    :cond_0
    return-void
.end method


# virtual methods
.method public getUserActivityTimeout()J
    .locals 4

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewBase;->getUserActivityTimeout()J

    move-result-wide v0

    .line 278
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 279
    return-wide v0

    .line 282
    .end local v0    # "timeout":J
    :cond_0
    const-wide/16 v2, 0x2710

    return-wide v2
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "destroyView"    # Z

    .prologue
    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(ZZLjava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public hide(ZZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "destroyView"    # Z
    .param p2, "hasAnim"    # Z
    .param p3, "updateStateRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string/jumbo v0, "KeyguardBouncer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide() is called, destroyView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardViewBase;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->cleanUp()V

    .line 236
    :cond_0
    if-eqz p1, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 239
    if-eqz p2, :cond_6

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    .line 240
    :goto_1
    if-nez v0, :cond_1

    .line 242
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 240
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 241
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isFullscreenBouncer()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewBase;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 434
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 436
    .end local v0    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    return v2
.end method

.method public isSecure()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewBase;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public needsFullscreenBouncer()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewBase;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 420
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v2

    .line 420
    if-nez v2, :cond_0

    .line 422
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FindPhone:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 424
    .end local v0    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v1

    return v1
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->handleMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->requestFocus()Z

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->onResume()V

    .line 454
    const/4 v0, 0x1

    return v0

    .line 456
    :cond_0
    return v1
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->onPause()V

    .line 269
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 291
    .local v0, "wasInitialized":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 292
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewBase;->showPrimarySecurityScreen()V

    .line 289
    :cond_0
    return-void

    .line 290
    .end local v0    # "wasInitialized":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "wasInitialized":Z
    goto :goto_0
.end method

.method protected setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 559
    if-eqz p2, :cond_0

    .line 560
    new-instance v0, Landroid/view/GestureDetector;

    .line 561
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 560
    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 562
    .local v0, "gd":Landroid/view/GestureDetector;
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/view/GestureDetector;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 558
    .end local v0    # "gd":Landroid/view/GestureDetector;
    :cond_0
    return-void
.end method

.method public setOnNotMatchRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mOnNoMatch:Ljava/lang/Runnable;

    .line 481
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "resetSecuritySelection"    # Z

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    .line 158
    return-void
.end method

.method public show(ZZ)V
    .locals 6
    .param p1, "resetSecuritySelection"    # Z
    .param p2, "authenticated"    # Z

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateColors()V

    .line 165
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->showPrimarySecurityScreen()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHideContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz v0, :cond_4

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardViewBase;->setAlpha(F)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewBase;->setTranslationY(F)V

    .line 181
    return-void

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 187
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 192
    const-wide/16 v4, 0x10

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 161
    :cond_5
    return-void
.end method

.method public showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 213
    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-eqz p1, :cond_0

    .line 257
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
