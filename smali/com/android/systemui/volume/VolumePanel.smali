.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$StreamResources;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$AnimationValue;,
        Lcom/android/systemui/volume/VolumePanel$PointF;,
        Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;,
        Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;,
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$1;,
        Lcom/android/systemui/volume/VolumePanel$2;
    }
.end annotation


# static fields
.field private static final EXTEND_STREAM:[I

.field private static final EXTEND_STREAM_TWO:[I

.field private static LOGD:Z

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBTSCOSeekBarProgress:I

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private mExternIconLayout:Landroid/view/View;

.field private mIsPanelStateExtended:Z

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTimeOutTime:I

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mViewGroupItemHeight:I

.field private mVoiceCallLayout:Landroid/widget/RelativeLayout;

.field private mVoiceCapable:Z

.field private mVoiceSeekBarProgress:I

.field private mZenModeAvailable:Z

.field private mZenPanelExpanded:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceSeekBarProgress:I

    return v0
.end method

.method static synthetic -get12()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get13()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mBTSCOSeekBarProgress:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExternIconLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumePanel;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumePanel;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mExternIconLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumePanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    return p1
.end method

.method static synthetic -set4(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumePanel;J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0
    .param p1, "byClick"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderExtendSliders(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 0
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->toggle(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHeight()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHideState()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumePanel;II)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "progress"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->updateSeekBarProgress(II)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 0
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 95
    const-string/jumbo v0, "VolumePanel"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    .line 141
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 143
    const/16 v1, 0xd

    .line 141
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 255
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 256
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    .line 257
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 258
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v5

    .line 259
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    .line 260
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v6

    .line 261
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v7

    .line 262
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 263
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 264
    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 255
    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    .line 843
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM_TWO:[I

    .line 847
    filled-new-array {v3, v7, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 157
    const/16 v10, 0xbb8

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 159
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 160
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 185
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 834
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    .line 982
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    .line 1911
    new-instance v10, Lcom/android/systemui/volume/VolumePanel$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1992
    new-instance v10, Lcom/android/systemui/volume/VolumePanel$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 366
    const-string/jumbo v10, "%s.%08x"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "VolumePanel"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 367
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 369
    const-string/jumbo v10, "audio"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 371
    const-string/jumbo v10, "accessibility"

    .line 370
    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 375
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 382
    .local v7, "useMasterVolume":Z
    sget-boolean v10, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v11, "new VolumePanel"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 385
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 386
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 387
    const/4 v11, 0x1

    new-array v11, v11, [I

    const v12, 0x1010033

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 386
    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 388
    .local v0, "arr":Landroid/content/res/TypedArray;
    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 389
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    .end local v0    # "arr":Landroid/content/res/TypedArray;
    :cond_1
    new-instance v10, Lcom/android/systemui/volume/VolumePanel$3;

    invoke-direct {v10, p0, p1}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 404
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 405
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v10, v11, :cond_2

    .line 406
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    .line 407
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    .line 414
    :goto_0
    const-string/jumbo v10, "layout_inflater"

    .line 413
    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 415
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0400c8

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    .line 416
    .local v8, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$4;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x7f0f0287

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 423
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x7f0f0288

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 424
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 425
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 426
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 427
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$5;

    invoke-direct {v11, p0}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 441
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 442
    .local v9, "window":Landroid/view/Window;
    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 443
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 445
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 446
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v10, 0x0

    iput-object v10, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 448
    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 449
    const v11, 0x7f0b03e0

    .line 448
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 450
    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    int-to-double v10, v10

    const-wide v12, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 451
    const/16 v10, 0x7e4

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 452
    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-double v10, v10

    const-wide v12, 0x3fee147ae147ae14L    # 0.94

    mul-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 453
    const/4 v10, -0x2

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 454
    const/4 v10, 0x0

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 456
    invoke-virtual {v9, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 457
    const v10, 0x40028

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 511
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    new-array v10, v10, [Landroid/media/ToneGenerator;

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 512
    const-string/jumbo v10, "vibrator"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    iput-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    .line 521
    const/4 v5, 0x0

    .line 523
    .local v5, "masterVolumeOnly":Z
    const v10, 0x1120012

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 524
    .local v4, "masterVolumeKeySounds":Z
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 526
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    .line 365
    return-void

    .line 410
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "masterVolumeKeySounds":Z
    .end local v5    # "masterVolumeOnly":Z
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "window":Landroid/view/Window;
    :cond_2
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    .line 411
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenHeight:I

    goto/16 :goto_0
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1593
    return-void
.end method

.method private checkExtendStreamType(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 912
    if-eqz p1, :cond_0

    .line 913
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 915
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private clearRemoteStreamController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1674
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1675
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1676
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1677
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 1678
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1679
    iput-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1673
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 14

    .prologue
    .line 720
    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 721
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 722
    const-string/jumbo v12, "layout_inflater"

    .line 721
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 724
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v11, Landroid/util/SparseArray;

    sget-object v12, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v12, v12

    invoke-direct {v11, v12}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v11, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v11, v11

    if-ge v2, v11, :cond_8

    .line 727
    sget-object v11, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v9, v11, v2

    .line 729
    .local v9, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v10, v9, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 731
    .local v10, "streamType":I
    new-instance v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 732
    .local v8, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iput v10, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    .line 734
    const v11, 0x7f0400c9

    const/4 v12, 0x0

    .line 733
    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 735
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 736
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v12, 0x7f0f028a

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 737
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 738
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v12, v9, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    iget v11, v9, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 740
    iget v11, v9, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 741
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v12, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 743
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->isClickable()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 744
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 745
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v12, p0, v8}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->checkExtendStreamType(I)Z

    move-result v4

    .line 756
    .local v4, "isExtendStreamType":Z
    if-eqz v4, :cond_1

    .line 757
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v12, 0x7f0f028c

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    .line 758
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 759
    invoke-direct {p0, v8, v10}, Lcom/android/systemui/volume/VolumePanel;->updateLocaleForStreamControl(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 760
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v12, 0x7f0f028d

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    .line 761
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 762
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    const v12, 0x3f4ccccd    # 0.8f

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 763
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    new-instance v12, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v12, p0}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    :cond_1
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v12, 0x7f0f01a9

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 785
    const/4 v11, 0x6

    if-eq v10, v11, :cond_2

    .line 786
    if-nez v10, :cond_6

    :cond_2
    const/4 v6, 0x1

    .line 788
    .local v6, "plusOne":I
    :goto_1
    const/4 v11, 0x1

    if-ne v6, v11, :cond_3

    .line 789
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    new-instance v12, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v10, v13}, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;-><init>(Lcom/android/systemui/volume/VolumePanel;ILcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 792
    :cond_3
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setMax(I)V

    .line 793
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v12, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 794
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v11, v8}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 795
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v12, 0x7f0f0289

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->itemLayout:Landroid/widget/LinearLayout;

    .line 796
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/android/systemui/volume/VolumePanel$9;

    invoke-direct {v12, p0}, Lcom/android/systemui/volume/VolumePanel$9;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 802
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v12, 0x7f0f028b

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    .line 803
    if-nez v10, :cond_4

    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCallLayout:Landroid/widget/RelativeLayout;

    .line 804
    :cond_4
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 805
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v4, :cond_7

    const-wide v0, 0x3fe6147ae147ae14L    # 0.69

    .line 806
    .local v0, "factor":D
    :goto_2
    iget v11, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-double v12, v11

    mul-double/2addr v12, v0

    double-to-int v11, v12

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 807
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 809
    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v11, :cond_5

    .line 810
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->itemLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->measure(II)V

    .line 811
    iget-object v11, v8, Lcom/android/systemui/volume/VolumePanel$StreamControl;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v11

    iput v11, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    .line 812
    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 813
    .restart local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    mul-int/lit8 v11, v11, 0x3

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 814
    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->initAnimation()V

    .line 726
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 786
    .end local v0    # "factor":D
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "plusOne":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "plusOne":I
    goto/16 :goto_1

    .line 805
    .restart local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    const-wide v0, 0x3fe8a3d70a3d70a4L    # 0.77

    .restart local v0    # "factor":D
    goto :goto_2

    .line 719
    .end local v0    # "factor":D
    .end local v4    # "isExtendStreamType":Z
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "plusOne":I
    .end local v8    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v9    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .end local v10    # "streamType":I
    :cond_8
    return-void
.end method

.method private fillAndUpdateExtendSliders(I)V
    .locals 13
    .param p1, "activeStreamType"    # I

    .prologue
    const/4 v12, 0x0

    .line 877
    const/4 v8, 0x1

    .line 878
    .local v8, "sliderIndex":I
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    .line 879
    .local v3, "extendStream":[I
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isInCommunicationWithMusicActive()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM_TWO:[I

    .line 880
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v3

    if-ge v4, v9, :cond_4

    .line 881
    aget v9, v3, v4

    if-ne v9, p1, :cond_2

    .line 880
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 882
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    aget v10, v3, v4

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 883
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_3

    .line 884
    const-string/jumbo v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addSliderByExtendStream: missing stream type! - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 887
    :cond_3
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v10, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 888
    iget-object v9, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    mul-int/2addr v10, v8

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setY(F)V

    .line 889
    iget-object v9, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 891
    :catch_0
    move-exception v2

    .line 892
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reorderExtendSliders: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 898
    .end local v0    # "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 899
    .local v1, "count":I
    const/4 v4, 0x1

    :goto_2
    if-ge v4, v1, :cond_6

    .line 900
    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 901
    .local v7, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget v9, v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v6

    .line 902
    .local v6, "max":I
    iget v9, v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v5

    .line 903
    .local v5, "index":I
    iget-object v9, v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    if-eq v9, v6, :cond_5

    .line 904
    iget-object v9, v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 906
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 907
    invoke-direct {p0, v7, v12}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 908
    iget v9, v7, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v9}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v9

    invoke-direct {p0, v7, v9, v12}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 899
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 875
    .end local v5    # "index":I
    .end local v6    # "max":I
    .end local v7    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_6
    return-void
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 1902
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1904
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1901
    return-void
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 664
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 666
    const/4 v2, 0x0

    return v2

    .line 668
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 671
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 672
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 673
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    return v2

    .line 676
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    return v2

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    return v2
.end method

.method private getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 683
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 685
    const/4 v2, 0x0

    return v2

    .line 687
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 690
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 691
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 692
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    return v2

    .line 695
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    return v2

    .line 697
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    return v2
.end method

.method private initAnimation()V
    .locals 8

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 989
    new-instance v6, Lcom/android/systemui/volume/VolumePanel$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/VolumePanel$10;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1001
    .local v6, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Lcom/android/systemui/volume/VolumePanel$AnimationValue;>;"
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1004
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3e23d70a    # 0.16f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;-><init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$11;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$12;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 986
    .end local v6    # "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Lcom/android/systemui/volume/VolumePanel$AnimationValue;>;"
    :cond_0
    return-void
.end method

.method private isInCommunicationWithMusicActive()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 853
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 854
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 855
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    .line 853
    :cond_0
    :goto_0
    return v0

    .line 854
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 653
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    return v0

    .line 655
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 657
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 2
    .param p0, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1242
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 1243
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 632
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 633
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    return-void
.end method

.method private reorderExtendSliders(Z)V
    .locals 5
    .param p1, "byClick"    # Z

    .prologue
    .line 918
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 919
    .local v1, "activeStreamType":I
    if-nez p1, :cond_1

    .line 920
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 921
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 922
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 923
    const-string/jumbo v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reorderExtendSliders: [1] missing stream type! - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 925
    return-void

    .line 927
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 928
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 929
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->resetSliderPanelView(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 930
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 932
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->fillAndUpdateExtendSliders(I)V

    .line 933
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHeight()V

    .line 917
    .end local v0    # "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    if-eqz v2, :cond_3

    .line 937
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 938
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->fillAndUpdateExtendSliders(I)V

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHeight()V

    .line 942
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->startAnimation()V

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 5
    .param p1, "activeStreamType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1105
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1106
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1107
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 1108
    const-string/jumbo v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing stream type! - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1104
    :goto_0
    return-void

    .line 1111
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1112
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 1113
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1114
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->checkExtendStreamType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1116
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->resetSliderPanelView(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1117
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1118
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 1120
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHeight()V

    .line 1121
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1122
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1123
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1125
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1126
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    goto :goto_0
.end method

.method private resetSliderPanelView(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 8
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 946
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 947
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 948
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 949
    iget v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-nez v4, :cond_1

    .line 950
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isInCommunicationWithMusicActive()Z

    move-result v2

    .line 951
    .local v2, "flag":Z
    const-wide v0, 0x3fe8a3d70a3d70a4L    # 0.77

    .line 952
    .local v0, "factor":D
    if-nez v2, :cond_0

    .line 953
    const-wide v0, 0x3fe8a3d70a3d70a4L    # 0.77

    .line 954
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 961
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCallLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 962
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mScreenWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 963
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCallLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    .end local v0    # "factor":D
    .end local v2    # "flag":Z
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 957
    .restart local v0    # "factor":D
    .restart local v2    # "flag":Z
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 958
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 959
    const-wide v0, 0x3fe6147ae147ae14L    # 0.69

    goto :goto_0

    .line 966
    .end local v0    # "factor":D
    .end local v2    # "flag":Z
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 967
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->extendIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 7

    .prologue
    const/16 v6, 0xbb8

    .line 1884
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 1885
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1886
    const-string/jumbo v3, " delay="

    .line 1885
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1886
    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 1885
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1886
    const-string/jumbo v3, " touchExploration="

    .line 1885
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1883
    :goto_0
    return-void

    .line 1888
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    if-eqz v1, :cond_2

    .line 1889
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    mul-int/lit16 v1, v1, 0xbb8

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    goto :goto_0

    .line 1892
    :cond_2
    iput v6, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeOutTime:I

    goto :goto_0
.end method

.method private setLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 626
    return-void
.end method

.method private setMusicSeekbarEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 859
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 860
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 857
    :cond_0
    return-void
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 702
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2

    .line 703
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Adjusting remote volume without a controller!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 709
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    const v0, -0x409c71c7

    .line 1095
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    if-eqz v1, :cond_1

    .line 1096
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    invoke-direct {v3, p0, v5, v5, v6}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FFF)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    invoke-direct {v3, p0, v8, v7, v0}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FFF)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1101
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1092
    return-void

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    invoke-direct {v3, p0, v8, v7, v0}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FFF)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;FFF)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private toggle(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v1, 0x2

    .line 821
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 823
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 820
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 826
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method

.method private updateHeight()V
    .locals 4

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 555
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    if-eqz v1, :cond_0

    .line 556
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 561
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 553
    return-void

    .line 559
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mViewGroupItemHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateHideState()V
    .locals 5

    .prologue
    .line 838
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    .line 839
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "HIDE_WHEN_SCREENSHOT"

    .line 840
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v4, -0x2

    .line 839
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 837
    return-void

    .line 838
    :cond_0
    const/4 v0, 0x0

    .local v0, "hideWhenScreenshot":Z
    goto :goto_0

    .line 840
    .end local v0    # "hideWhenScreenshot":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLocaleForStreamControl(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "streamType"    # I

    .prologue
    .line 864
    if-eqz p1, :cond_0

    .line 865
    if-nez p2, :cond_1

    .line 866
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 868
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 869
    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 870
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 871
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 872
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSeekBarProgress(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v1, 0x6

    .line 1939
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    .line 1941
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    const/4 p2, 0x1

    .line 1942
    :cond_1
    if-nez p1, :cond_3

    .line 1943
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceSeekBarProgress:I

    .line 1938
    :cond_2
    :goto_0
    return-void

    .line 1945
    :cond_3
    if-ne p1, v1, :cond_2

    .line 1946
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mBTSCOSeekBarProgress:I

    goto :goto_0
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 1184
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1185
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 1187
    .local v0, "muted":Z
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1188
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1189
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1183
    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .locals 8
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1194
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    .line 1195
    .local v2, "wasEnabled":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v5}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1196
    .local v0, "isRinger":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    .line 1199
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1217
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1218
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1219
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1220
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1193
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v4

    .line 1199
    goto :goto_0

    .line 1205
    :cond_2
    if-nez p3, :cond_3

    .line 1209
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    .line 1210
    :cond_3
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 1212
    :cond_4
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1213
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1214
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 1222
    :cond_5
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$13;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1230
    .local v1, "showHintOnTouch":Landroid/view/View$OnTouchListener;
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    .line 1146
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1145
    return-void

    .line 1146
    :cond_0
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    .line 1131
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1135
    .local v0, "isRinger":Z
    if-gez p2, :cond_0

    .line 1136
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 1138
    :cond_0
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/volume/VolumePanel;->updateSeekBarProgress(II)V

    .line 1139
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1140
    if-eqz v0, :cond_1

    .line 1141
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 1130
    :cond_1
    return-void
.end method

.method private updateTimeoutDelay()V
    .locals 3

    .prologue
    const/16 v0, 0xbb8

    .line 1251
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    const/16 v0, 0x1388

    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 1250
    return-void

    .line 1253
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 565
    const-string/jumbo v4, "VolumePanel state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string/jumbo v4, "  mTag="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v4, "  mRingIsSilent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    const-string/jumbo v4, "  mVoiceCapable="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 569
    const-string/jumbo v4, "  mZenModeAvailable="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 570
    const-string/jumbo v4, "  mZenPanelExpanded="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 571
    const-string/jumbo v4, "  mTimeoutDelay="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 572
    const-string/jumbo v4, "  mDisabledAlpha="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 573
    const-string/jumbo v4, "  mLastRingerMode="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 574
    const-string/jumbo v4, "  mLastRingerProgress="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 575
    const-string/jumbo v4, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 576
    const-string/jumbo v4, "  isShowing()="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 577
    const-string/jumbo v4, "  mCallback="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    const-string/jumbo v4, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    const-string/jumbo v3, "<not null>"

    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 581
    const-string/jumbo v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 583
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    :cond_1
    return-void

    .line 585
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 586
    .local v0, "N":I
    const-string/jumbo v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 587
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 588
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 589
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const-string/jumbo v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    .line 591
    const-string/jumbo v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 592
    const-string/jumbo v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 593
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    :cond_3
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 1791
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1790
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1794
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1799
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1804
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1809
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1819
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1824
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1825
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1826
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    .line 1827
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1828
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v1, :cond_1

    .line 1829
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1832
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1833
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1834
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 1832
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1843
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1850
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto :goto_0

    .line 1855
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1859
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1863
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 1867
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto :goto_0

    .line 1871
    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    goto/16 :goto_0

    .line 1876
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 1791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 537
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_0

    .line 538
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->EXTEND_STREAM:[I

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->updateLocaleForStreamControl(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 1710
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1711
    :try_start_0
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 1712
    return-void

    .line 1714
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v2, v4, p0, v5}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 1718
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1719
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1720
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7e4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1721
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1723
    sget-object v2, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1725
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 1727
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1728
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1707
    :goto_0
    return-void

    .line 1710
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1730
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "window":Landroid/view/Window;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1731
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1779
    monitor-enter p0

    .line 1780
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1781
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1782
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1784
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1780
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 1778
    return-void

    .line 1779
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1422
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1425
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1426
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1429
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    .line 1420
    return-void
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 1642
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1643
    const-string/jumbo v2, ")"

    .line 1642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1646
    :cond_1
    monitor-enter p0

    .line 1647
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1648
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 1650
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1656
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1657
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1658
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1641
    return-void

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1653
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0xc8

    .line 1662
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1666
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1661
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 12
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    const/16 v11, -0xc8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1433
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1435
    .local v0, "index":I
    iput-boolean v6, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    .line 1437
    sget-boolean v8, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_0

    .line 1438
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[GJ_VOLUME] onShowVolumeChanged(streamType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1439
    const-string/jumbo v10, ", flags: "

    .line 1438
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1439
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 1438
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1439
    const-string/jumbo v10, "), index: "

    .line 1438
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 1445
    .local v1, "max":I
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1447
    .local v3, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sparse-switch p1, :sswitch_data_0

    .line 1530
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v3, :cond_6

    .line 1531
    if-ne p1, v11, :cond_3

    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v8, :cond_3

    .line 1532
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v8, :cond_2

    .line 1533
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v8, v9}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1535
    :cond_2
    iput-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1536
    if-eqz p3, :cond_3

    .line 1537
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v8, v9}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1540
    :cond_3
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    if-eq v8, v1, :cond_4

    .line 1541
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1543
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v8

    .line 1545
    and-int/lit8 v9, p2, 0x20

    if-eqz v9, :cond_5

    move v6, v7

    .line 1544
    :cond_5
    invoke-direct {p0, v3, v8, v6}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1548
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1549
    if-ne p1, v11, :cond_c

    const/4 v4, -0x1

    .line 1552
    .local v4, "stream":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1553
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v6, :cond_7

    .line 1554
    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v6, v7}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1556
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    .line 1557
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/systemui/volume/VolumePanel$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/VolumePanel$14;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1575
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateHideState()V

    .line 1432
    .end local v4    # "stream":I
    :cond_8
    return-void

    .line 1452
    :sswitch_1
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 1451
    invoke-static {v8, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1453
    .local v2, "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 1454
    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto :goto_0

    .line 1490
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    .line 1489
    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1491
    .restart local v2    # "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 1492
    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto :goto_0

    .line 1509
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_3
    if-nez p3, :cond_9

    if-eqz v3, :cond_9

    .line 1511
    iget-object p3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1513
    :cond_9
    if-nez p3, :cond_b

    .line 1515
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v9, "sent remote volume change without a controller!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_a
    :goto_2
    sget-boolean v8, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showing remote volume "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1517
    :cond_b
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v5

    .line 1518
    .local v5, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    .line 1519
    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    .line 1520
    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v8

    and-int/lit8 v8, v8, 0x0

    if-eqz v8, :cond_a

    .line 1522
    or-int/lit8 p2, p2, 0x20

    goto :goto_2

    .line 1549
    .end local v5    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_c
    move v4, p1

    .restart local v4    # "stream":I
    goto/16 :goto_1

    .line 1447
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_3
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    monitor-enter p0

    .line 1693
    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    const/4 v1, 0x1

    .line 1695
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1696
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1697
    .local v2, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1698
    iput-boolean v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 1699
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1700
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    .line 1692
    return-void

    .line 1694
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isVisible":Z
    goto :goto_0

    .line 1695
    .restart local v0    # "i":I
    .restart local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1620
    monitor-enter p0

    .line 1621
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1622
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1623
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1624
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1625
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1618
    return-void

    .line 1620
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1635
    return-void

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1631
    return-void
.end method

.method protected onVolumeChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1379
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GJ_VOLUME] onVolumeChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1382
    monitor-enter p0

    .line 1383
    :try_start_0
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v1, p1, :cond_1

    .line 1384
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsPanelStateExtended:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->checkExtendStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1385
    const/high16 v1, 0x100000

    and-int/2addr v1, p2

    if-nez v1, :cond_3

    .line 1386
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1387
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->reorderExtendSliders(Z)V

    .line 1398
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1417
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1377
    return-void

    .line 1389
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1390
    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 1391
    .local v0, "enable":Z
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setMusicSeekbarEnable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1382
    .end local v0    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1390
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_1

    .line 1395
    .end local v0    # "enable":Z
    :cond_5
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1364
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    .line 1363
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 1359
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1360
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1358
    return-void
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 1368
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1369
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1367
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1355
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    .line 1354
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1345
    :cond_0
    monitor-enter p0

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1347
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1351
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1343
    return-void

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1318
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1317
    :goto_0
    const/16 v1, 0xa

    .line 1318
    const/16 v2, -0xc8

    .line 1317
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1316
    return-void

    .line 1318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 1306
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1307
    :cond_0
    monitor-enter p0

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1309
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1313
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1305
    return-void

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1293
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 1294
    :cond_1
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_2

    .line 1295
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    return-void

    .line 1296
    :cond_2
    monitor-enter p0

    .line 1297
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_3

    .line 1298
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 1302
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1292
    return-void

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 1281
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1283
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1284
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1280
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
