.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mCameraPreview:Landroid/view/View;

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIndicationText:Landroid/widget/TextView;

.field private mLastUnlockIconRes:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mPhonePreview:Landroid/view/View;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private final mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const/high16 v1, 0x800000

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 74
    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLastUnlockIconRes:I

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 493
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 504
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 122
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    return-void
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 229
    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 228
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 230
    .local v0, "currentUserHasTrust":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 230
    :goto_0
    return-object v2

    .line 231
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleTrustCircleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    const/4 v0, 0x6

    .line 326
    invoke-static {v0, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 330
    const v1, 0x7f090295

    .line 329
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 325
    return-void
.end method

.method private inflatePreviews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_1
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 186
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 257
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    .line 259
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 260
    .local v4, "userId":I
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 262
    .local v1, "disabledFlags":I
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    .line 264
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    .local v0, "disabledBecauseKeyguardSecure":Z
    goto :goto_0

    .line 264
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 265
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 266
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v6, "Can\'t get userId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return v7
.end method

.method private isPhoneVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 250
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 250
    :cond_0
    return v1
.end method

.method private updateCameraVisibility()V
    .locals 6

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    .line 237
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 236
    const/high16 v5, 0x10000

    .line 235
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 238
    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 240
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 234
    return-void

    .line 238
    :cond_0
    const/4 v1, 0x0

    .local v1, "visible":Z
    goto :goto_0

    .line 240
    .end local v1    # "visible":Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateLockIcon()V
    .locals 9

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v6

    .line 385
    :goto_0
    if-eqz v6, :cond_1

    .line 386
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 390
    :goto_1
    if-nez v6, :cond_2

    .line 391
    return-void

    .line 384
    :cond_0
    const/4 v6, 0x0

    .local v6, "visible":Z
    goto :goto_0

    .line 388
    .end local v6    # "visible":Z
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_1

    .line 394
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 395
    const v3, 0x10802f2

    .line 398
    .local v3, "iconRes":I
    :goto_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLastUnlockIconRes:I

    if-eq v7, v3, :cond_5

    .line 399
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 400
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 401
    const v8, 0x7f0b040b

    .line 400
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 402
    .local v2, "iconHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 403
    const v8, 0x7f0b040c

    .line 402
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 404
    .local v4, "iconWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-ne v7, v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-eq v7, v4, :cond_4

    .line 405
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;

    invoke-direct {v1, v0, v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 407
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconHeight":I
    .end local v4    # "iconWidth":I
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    .line 410
    .local v5, "trustManaged":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIconClickability()V

    .line 383
    return-void

    .line 396
    .end local v3    # "iconRes":I
    .end local v5    # "trustManaged":Z
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v7

    if-eqz v7, :cond_7

    const v3, 0x7f020081

    .restart local v3    # "iconRes":I
    goto :goto_2

    .line 397
    .end local v3    # "iconRes":I
    :cond_7
    const v3, 0x7f020080

    .restart local v3    # "iconRes":I
    goto :goto_2
.end method

.method private updateLockIconClickability()V
    .locals 5

    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 294
    .local v1, "clickToUnlock":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 296
    .local v0, "clickToForceLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 298
    .local v2, "longClickToForceLock":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_5

    .end local v1    # "clickToUnlock":Z
    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLongClickable(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    .line 289
    return-void

    .line 295
    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    .restart local v1    # "clickToUnlock":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 294
    .end local v0    # "clickToForceLock":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 297
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 296
    .end local v2    # "longClickToForceLock":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 298
    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private updatePhoneVisibility()V
    .locals 3

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isPhoneVisible()Z

    move-result v0

    .line 245
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 243
    return-void

    .line 245
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 273
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 275
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 272
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 336
    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 338
    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_1

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 334
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public launchPhone()V
    .locals 4

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 350
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 348
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    .line 309
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 304
    :cond_1
    :goto_1
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 314
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 196
    const v3, 0x7f0b040d

    .line 195
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    .local v0, "indicationBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_0

    .line 199
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 206
    const v4, 0x10500f1

    .line 205
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 378
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 162
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 163
    const v0, 0x7f0f0078

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 164
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 165
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 166
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 167
    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->watchForCameraPolicyChanges()V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updatePhoneVisibility()V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipChildren(Z)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipToPadding(Z)V

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflatePreviews()V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    .line 160
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 1
    .param p1, "accessibilityEnabled"    # Z
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIconClickability()V

    .line 281
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 446
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 371
    :goto_0
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 364
    :cond_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method
