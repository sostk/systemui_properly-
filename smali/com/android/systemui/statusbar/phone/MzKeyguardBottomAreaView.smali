.class public Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "MzKeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;,
        Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field public CAMERA_COMPONENTNAME:Landroid/content/ComponentName;

.field private final DEBUG:Z

.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mCallback:Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

.field private mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIndicationText:Landroid/widget/TextView;

.field private mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

.field private mLastUnlockIconRes:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private final mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private mUnlockColor:I

.field private mUnlockIcon:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUnlockString:Ljava/lang/String;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->initThemeValues()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setThemeValues()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateColors()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    const/high16 v1, 0x800000

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "com.meizu.media.camera"

    const-string/jumbo v2, "com.meizu.media.camera.SecureCameraActivity"

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    sput-object v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "com.meizu.media.camera"

    const-string/jumbo v2, "com.meizu.media.camera.CameraLauncher"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    sput-object v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->DEBUG:Z

    .line 130
    iput v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLastUnlockIconRes:I

    .line 131
    new-instance v0, Landroid/content/ComponentName;

    .line 132
    const-string/jumbo v1, "com.meizu.media.camera"

    const-string/jumbo v2, "com.meizu.media.camera.CameraLauncher"

    .line 131
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->CAMERA_COMPONENTNAME:Landroid/content/ComponentName;

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 523
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    .line 534
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 656
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockIcon:Z

    .line 694
    new-instance v0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCallback:Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    .line 148
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 150
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    return-void
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 266
    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 265
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 267
    .local v0, "currentUserHasTrust":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 267
    :goto_0
    return-object v2

    .line 268
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private getUnlockDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 677
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleTrustCircleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    const/4 v0, 0x6

    .line 354
    invoke-static {v0, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 358
    const v1, 0x7f090295

    .line 357
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 353
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 214
    return-void
.end method

.method private initThemeValues()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getIsUnlockIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockIcon:Z

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getUnlockString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockString:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mKeyguardThemeUtils:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getUnlockColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockColor:I

    .line 659
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 289
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    .line 291
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 292
    .local v4, "userId":I
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 294
    .local v1, "disabledFlags":I
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_0

    .line 295
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    .line 296
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    .local v0, "disabledBecauseKeyguardSecure":Z
    goto :goto_0

    .line 296
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 297
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PhoneStatusBar/MzKeyguardBottomAreaView"

    const-string/jumbo v6, "Can\'t get userId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return v7
.end method

.method private setThemeValues()V
    .locals 2

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockIcon:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getUnlockDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 4
    .param p1, "element"    # Landroid/view/View;
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    .line 513
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 516
    const/high16 v1, 0x3f800000    # 1.0f

    .line 515
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 515
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 520
    const-wide/16 v2, 0xfa

    .line 515
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 512
    return-void
.end method

.method private updateCameraVisibility()V
    .locals 6

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    .line 274
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 273
    const/high16 v5, 0x10000

    .line 272
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 275
    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 275
    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEasyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 277
    .local v1, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 271
    return-void

    .line 276
    .end local v1    # "visible":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 275
    .end local v1    # "visible":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 277
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    .line 592
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setColor(I)V

    .line 596
    :cond_0
    if-eqz v0, :cond_1

    .line 597
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v1

    .line 596
    if-eqz v1, :cond_2

    .line 598
    :cond_1
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 603
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 604
    const v1, 0x7f0f0199

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 605
    const v1, 0x7f0f0290

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    const v1, 0x7f0f0291

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    return-void

    .line 600
    :cond_2
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 601
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 600
    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method private updateLockIcon()V
    .locals 9

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v6

    .line 432
    :goto_0
    if-eqz v6, :cond_1

    .line 433
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 437
    :goto_1
    if-nez v6, :cond_2

    .line 438
    return-void

    .line 431
    :cond_0
    const/4 v6, 0x0

    .local v6, "visible":Z
    goto :goto_0

    .line 435
    .end local v6    # "visible":Z
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_1

    .line 441
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 442
    const v3, 0x10802f2

    .line 445
    .local v3, "iconRes":I
    :goto_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLastUnlockIconRes:I

    if-eq v7, v3, :cond_5

    .line 446
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 447
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 448
    const v8, 0x7f0b040b

    .line 447
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 449
    .local v2, "iconHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 450
    const v8, 0x7f0b040c

    .line 449
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 451
    .local v4, "iconWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-ne v7, v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-eq v7, v4, :cond_4

    .line 452
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;

    invoke-direct {v1, v0, v4, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 454
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconHeight":I
    .end local v4    # "iconWidth":I
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    .line 457
    .local v5, "trustManaged":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateLockIconClickability()V

    .line 430
    return-void

    .line 443
    .end local v3    # "iconRes":I
    .end local v5    # "trustManaged":Z
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v7

    if-eqz v7, :cond_7

    const v3, 0x7f020081

    .restart local v3    # "iconRes":I
    goto :goto_2

    .line 444
    .end local v3    # "iconRes":I
    :cond_7
    const v3, 0x7f020080

    .restart local v3    # "iconRes":I
    goto :goto_2
.end method

.method private updateLockIconClickability()V
    .locals 5

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 324
    .local v1, "clickToUnlock":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 326
    .local v0, "clickToForceLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 328
    .local v2, "longClickToForceLock":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_5

    .end local v1    # "clickToUnlock":Z
    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLongClickable(Z)V

    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    .line 319
    return-void

    .line 325
    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    .restart local v1    # "clickToUnlock":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 324
    .end local v0    # "clickToForceLock":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 327
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 326
    .end local v2    # "longClickToForceLock":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 328
    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 305
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 307
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 304
    return-void
.end method


# virtual methods
.method public getCameraView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLockIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public isInCameraArea(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getBottom()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 685
    :cond_0
    return v0

    .line 690
    :cond_1
    return v0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    .line 363
    const-string/jumbo v2, "PhoneStatusBar/MzKeyguardBottomAreaView"

    const-string/jumbo v3, "launchCamera() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 365
    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 367
    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_1

    .line 382
    :cond_0
    const-string/jumbo v2, "PhoneStatusBar/MzKeyguardBottomAreaView"

    const-string/jumbo v3, "launchCamera() - launch INSECURE_CAMERA_INTENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 362
    :goto_0
    return-void

    .line 368
    :cond_1
    const-string/jumbo v2, "PhoneStatusBar/MzKeyguardBottomAreaView"

    const-string/jumbo v3, "launchCamera() - launch SECURE_CAMERA_INTENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 370
    const/16 v3, 0x10

    .line 369
    invoke-virtual {v2, v3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 371
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 372
    const/16 v3, 0x80

    .line 371
    invoke-virtual {v2, v3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 373
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 374
    const/16 v3, 0x20

    .line 373
    invoke-virtual {v2, v3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 378
    const/high16 v2, 0x14000000

    .line 377
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public launchPhone()V
    .locals 4

    .prologue
    .line 391
    const-string/jumbo v1, "PhoneStatusBar/MzKeyguardBottomAreaView"

    const-string/jumbo v2, "launchPhone() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 396
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$5;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 389
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    sget-object v2, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->initThemeValues()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setThemeValues()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCallback:Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->registerKeyguardWallpaperCallback(Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->launchCamera()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 342
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 223
    const v3, 0x7f0b040d

    .line 222
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 224
    .local v0, "indicationBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 235
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 237
    const v4, 0x7f0b0427

    .line 236
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 235
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getCameraView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v2

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v2

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 425
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCallback:Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->removeKeyguardWallpaperCallback(Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;)V

    .line 424
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 185
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 186
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 187
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 188
    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->watchForCameraPolicyChanges()V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateCameraVisibility()V

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateLockIcon()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setClipChildren(Z)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->setClipToPadding(Z)V

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->initAccessibility()V

    .line 183
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 1
    .param p1, "accessibilityEnabled"    # Z
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateLockIconClickability()V

    .line 313
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateCameraVisibility()V

    .line 493
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 411
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 417
    :goto_0
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->updateCameraVisibility()V

    .line 410
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 256
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 254
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 246
    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "flashlightController"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 250
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "keyguardIndicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 610
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 259
    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 6

    .prologue
    .line 499
    const-wide/16 v0, 0x0

    .line 500
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    .line 501
    const-wide/16 v0, 0x30

    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 506
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 507
    const/high16 v3, 0x3f800000    # 1.0f

    .line 506
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 508
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 506
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 509
    const-wide/16 v4, 0x2bc

    .line 506
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 498
    return-void
.end method
