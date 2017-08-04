.class public Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
.super Landroid/widget/LinearLayout;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;,
        Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;
    }
.end annotation


# static fields
.field private static final MESSAGET_URI:Landroid/net/Uri;

.field private static final NUMBER_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_URI:Landroid/net/Uri;


# instance fields
.field private RemainMinutes:I

.field private mBack:Ljava/lang/String;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContactsTips:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEnsureButton:Landroid/widget/TextView;

.field private mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field mFindPhoneConnection:Landroid/content/ServiceConnection;

.field private mFindPhonePageAnimationHelper:Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

.field private mFindPhonePasswordError:I

.field private mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

.field private mFlymeAccount:Landroid/widget/TextView;

.field private mFlymeMsg:Landroid/widget/TextView;

.field private mFlymeName:Ljava/lang/String;

.field private mGetUserNameCounter:I

.field mHandler:Landroid/os/Handler;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field private mIsChecking:Z

.field private mIsListeningInputShown:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessagerObserver:Landroid/database/ContentObserver;

.field private mNumberObserver:Landroid/database/ContentObserver;

.field private mNumberText:Ljava/lang/String;

.field private mOwner:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPasswordET:Landroid/widget/EditText;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReplyButton:Landroid/widget/Button;

.field private mResuming:Z

.field private mShouldAnim:Z

.field mSingleTap:Ljava/lang/Runnable;

.field private mState:I

.field private mUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mUserManager:Landroid/os/UserManager;

.field private mWarningTips:Landroid/widget/TextView;

.field private mWifiButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->RemainMinutes:I

    return v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get10(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mGetUserNameCounter:I

    return v0
.end method

.method static synthetic -get11(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get12(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get14(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mResuming:Z

    return v0
.end method

.method static synthetic -get15(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mShouldAnim:Z

    return v0
.end method

.method static synthetic -get16(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mState:I

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/findphone/FindPhoneAbstract;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/keyguard/FindPhonePageAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePageAnimationHelper:Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    return v0
.end method

.method static synthetic -get6(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    return-object v0
.end method

.method static synthetic -get7(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->RemainMinutes:I

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Lcom/meizu/flyme/service/find/IPhoneLocationService;)Lcom/meizu/flyme/service/find/IPhoneLocationService;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    return-object p1
.end method

.method static synthetic -set3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mGetUserNameCounter:I

    return p1
.end method

.method static synthetic -set4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsChecking:Z

    return p1
.end method

.method static synthetic -set5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mShouldAnim:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->isAccountPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)I
    .locals 1

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getFlymeName()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateUserName()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->checkFindPhoneLock(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->clearInput()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->exitGuestMode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Z)V
    .locals 0
    .param p1, "isFocusing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->onButtonFocusing(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->pickWifiNetwork()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->tryToHideUnlockProgressDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateMessage()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateNumber()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const-string/jumbo v0, "content://com.meizu.flyme.service.find/newestMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->MESSAGET_URI:Landroid/net/Uri;

    .line 133
    const-string/jumbo v0, "content://com.meizu.flyme.service.find/phoneNumberData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->NUMBER_URI:Landroid/net/Uri;

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->NUMBER_PROJECTION:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mGetUserNameCounter:I

    .line 109
    iput-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mResuming:Z

    .line 114
    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 115
    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 122
    iput-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsChecking:Z

    .line 124
    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    .line 152
    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mState:I

    .line 160
    iput-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsListeningInputShown:Z

    .line 169
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;

    invoke-direct {v0, p0, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mMessagerObserver:Landroid/database/ContentObserver;

    .line 184
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;

    invoke-direct {v0, p0, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$2;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberObserver:Landroid/database/ContentObserver;

    .line 224
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$3;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 713
    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    .line 714
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$4;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    .line 733
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$5;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    .line 883
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$6;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mSingleTap:Ljava/lang/Runnable;

    .line 911
    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 912
    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->RemainMinutes:I

    .line 242
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    .line 244
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPowerManager:Landroid/os/PowerManager;

    .line 246
    const-string/jumbo v0, "package"

    .line 245
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 247
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "input_method"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 249
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->requestFocus()Z

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->setFocusable(Z)V

    .line 251
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->registerObservers()V

    .line 240
    return-void
.end method

.method private bindFindPhoneService()V
    .locals 4

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-class v1, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string/jumbo v1, "com.meizu.flyme.service.find"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 450
    return-void
.end method

.method private checkFindPhoneLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsChecking:Z

    if-eqz v1, :cond_0

    .line 568
    const-string/jumbo v1, "FindPhone"

    const-string/jumbo v2, "checking ..., ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    .line 571
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsChecking:Z

    .line 572
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_flyme_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 574
    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;

    invoke-direct {v1, p0, p0, p1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$15;->start()V

    .line 566
    return-void
.end method

.method private clearInput()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

.method private exitGuestMode()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method private getFlymeName()I
    .locals 6

    .prologue
    .line 542
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    if-eqz v2, :cond_0

    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-interface {v2}, Lcom/meizu/flyme/service/find/IPhoneLocationService;->getUserName()Lcom/meizu/flyme/service/find/FindPhoneData;

    move-result-object v1

    .line 546
    .local v1, "mFindPhoneData":Lcom/meizu/flyme/service/find/FindPhoneData;
    iget-object v2, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mData:Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;

    .line 548
    const-string/jumbo v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFlymeName(),mFlymeName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mDescribe:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mDescribe:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget v2, v1, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 550
    .end local v1    # "mFindPhoneData":Lcom/meizu/flyme/service/find/FindPhoneData;
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->bindFindPhoneService()V

    .line 555
    const-string/jumbo v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFlymeName(),mFindPhoneService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneService:Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getUnlockProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 840
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 841
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 842
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 843
    const/16 v1, 0x7d9

    .line 842
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleEdittextLockout(J)V
    .locals 9
    .param p1, "milliSeconds"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 914
    const-string/jumbo v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEdittextLockout(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 917
    :cond_0
    const-wide/32 v0, 0xea60

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 918
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->RemainMinutes:I

    .line 922
    :goto_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_disable_today:I

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->RemainMinutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 923
    new-array v6, v7, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v6, v5

    .line 924
    .local v6, "filters":[Landroid/text/InputFilter;
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 925
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;

    const-wide/16 v4, 0x7530

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;JJ)V

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$17;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 913
    return-void

    .line 920
    .end local v6    # "filters":[Landroid/text/InputFilter;
    :cond_1
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->RemainMinutes:I

    goto :goto_0
.end method

.method private handleTickDone()V
    .locals 3

    .prologue
    .line 948
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    sget v2, Lcom/android/keyguard/R$string;->find_phone_tips_enter_password:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 951
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    .line 952
    const v2, 0x7fffffff

    .line 951
    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 953
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 947
    return-void
.end method

.method private isAccountPhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 906
    if-eqz p1, :cond_0

    .line 907
    const-string/jumbo v1, "@flyme.cn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onButtonFocusing(Z)V
    .locals 4
    .param p1, "isFocusing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 458
    if-eqz p1, :cond_1

    .line 459
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    const-string/jumbo v1, "s.length() > 0"

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 461
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 462
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->mz_textfield_default_color_dodgerblue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    const-string/jumbo v1, "s.length() = 0"

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 470
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 471
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 470
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 472
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private pickWifiNetwork()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 476
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.connectivitysettings"

    const-string/jumbo v3, "com.meizu.connectivitysettings.wifi.WifiSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "keyguard_findphone_screen"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    const-string/jumbo v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string/jumbo v1, "extra_prefs_set_back_text"

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mBack:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    iget-object v1, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 482
    const/16 v2, 0x10

    .line 481
    invoke-virtual {v1, v2}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 483
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 475
    return-void
.end method

.method private registerObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 312
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->MESSAGET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mMessagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->NUMBER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    return-void
.end method

.method private setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 857
    if-eqz p2, :cond_0

    .line 858
    new-instance v0, Landroid/view/GestureDetector;

    .line 859
    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 858
    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 860
    .local v0, "gd":Landroid/view/GestureDetector;
    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$16;

    invoke-direct {v1, p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$16;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Landroid/view/GestureDetector;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 856
    .end local v0    # "gd":Landroid/view/GestureDetector;
    :cond_0
    return-void
.end method

.method private tryToHideUnlockProgressDialog()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 849
    :cond_0
    return-void
.end method

.method private updateInputShownListenState(Z)V
    .locals 2
    .param p1, "isListening"    # Z

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsListeningInputShown:Z

    if-eq p1, v0, :cond_0

    .line 968
    iput-boolean p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mIsListeningInputShown:Z

    .line 969
    if-eqz p1, :cond_1

    .line 970
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    goto :goto_0
.end method

.method private updateMessage()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->MESSAGET_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mState:I

    .line 198
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessagerObserver, updateMessage, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mState:I

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeMsg:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mOwner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    return-void
.end method

.method private updateNumber()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->NUMBER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->NUMBER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, "cusorNumber":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->find_phone_number_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContactsTips:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberText:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMessagerObserver, updateNumber, numder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberText:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeMsg:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContactsTips:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mNumberText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_1
    return-void
.end method

.method private updateUserName()V
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$14;->start()V

    .line 511
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 270
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 492
    :cond_0
    iput-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateInputShownListenState(Z)V

    .line 488
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "password":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 501
    invoke-direct {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->checkFindPhoneLock(Ljava/lang/String;)V

    .line 503
    :cond_0
    return v3

    .line 505
    :cond_1
    return v2
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 343
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 344
    new-instance v0, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$id;->find_phone_container:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/keyguard/FindPhonePageAnimationHelper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePageAnimationHelper:Lcom/meizu/keyguard/FindPhonePageAnimationHelper;

    .line 345
    sget v0, Lcom/android/keyguard/R$id;->flymeAccount:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeAccount:Landroid/widget/TextView;

    .line 346
    sget v0, Lcom/android/keyguard/R$id;->finderMessage:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFlymeMsg:Landroid/widget/TextView;

    .line 347
    sget v0, Lcom/android/keyguard/R$id;->button_ok:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButton:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "#57ADE7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#258FEA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/keyguard/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 349
    invoke-direct {p0, v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->onButtonFocusing(Z)V

    .line 350
    sget v0, Lcom/android/keyguard/R$id;->find_chat_button:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mReplyButton:Landroid/widget/Button;

    .line 351
    sget v0, Lcom/android/keyguard/R$id;->wifi_button:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWifiButton:Landroid/widget/Button;

    .line 352
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->find_phone_owner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mOwner:Ljava/lang/String;

    .line 353
    sget v0, Lcom/android/keyguard/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    .line 354
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 355
    sget v0, Lcom/android/keyguard/R$id;->warning_tips:I

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    .line 356
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$7;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$7;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$8;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$9;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 398
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 409
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 410
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 413
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->bindFindPhoneService()V

    .line 415
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateUserName()V

    .line 417
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 418
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mUserManager:Landroid/os/UserManager;

    .line 420
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mEnsureButton:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$11;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$11;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mReplyButton:Landroid/widget/Button;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$12;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$12;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWifiButton:Landroid/widget/Button;

    new-instance v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$13;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$13;-><init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->find_phone_wifi_back_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mBack:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 275
    return-void
.end method

.method public onResume(I)V
    .locals 14
    .param p1, "reason"    # I

    .prologue
    .line 281
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mShouldAnim:Z

    .line 282
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateMessage()V

    .line 283
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateNumber()V

    .line 284
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/meizu/findphone/FindPhoneAbstract;->getLimitTime(J)J

    move-result-wide v8

    .line 285
    .local v8, "limitTime":J
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/meizu/findphone/FindPhoneAbstract;->getDuration(J)J

    move-result-wide v2

    .line 286
    .local v2, "duration":J
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v5}, Lcom/meizu/findphone/FindPhoneAbstract;->getCurrentTime()J

    move-result-wide v0

    .line 287
    .local v0, "currentTime":J
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MzKeyguardFindPhoneView,onResume,limitTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 288
    const-string/jumbo v11, ", duration = "

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 289
    const-string/jumbo v11, ", currentTime = "

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 290
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    cmp-long v5, v8, v0

    if-gez v5, :cond_0

    .line 291
    sub-long v6, v0, v8

    .line 292
    .local v6, "leftTime":J
    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long/2addr v10, v6

    long-to-int v4, v10

    .line 293
    .local v4, "left":I
    const-string/jumbo v5, "FindPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "left = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-lez v4, :cond_3

    .line 295
    int-to-long v10, v4

    invoke-direct {p0, v10, v11}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->handleEdittextLockout(J)V

    .line 300
    .end local v4    # "left":I
    .end local v6    # "leftTime":J
    :cond_0
    :goto_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mResuming:Z

    .line 301
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$drawable;->mz_textfield_default_color_dodgerblue:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 303
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v10, Lcom/android/keyguard/R$string;->find_phone_wifi_button:I

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 306
    iget-object v5, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWifiButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$string;->find_phone_wifi_button:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_2
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateInputShownListenState(Z)V

    .line 280
    return-void

    .line 297
    .restart local v4    # "left":I
    .restart local v6    # "leftTime":J
    :cond_3
    invoke-direct {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->handleTickDone()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 958
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 959
    const-string/jumbo v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->updateInputShownListenState(Z)V

    .line 961
    if-eqz p1, :cond_0

    .line 962
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 957
    :cond_0
    return-void
.end method

.method public resetSystemMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 978
    const-string/jumbo v3, "FindPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetSystemMode enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mz_private_mode"

    .line 981
    if-eqz p1, :cond_1

    move v3, v4

    .line 980
    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 982
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "meizu.intent.action.SWITCH_PRIVATE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    .local v2, "privateIntent":Landroid/content/Intent;
    const-string/jumbo v3, "extra_mode_on"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 986
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "children_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 987
    .local v1, "isChildMode":Z
    :goto_1
    invoke-static {}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->getInstance()Lcom/meizu/keyguard/auto_color/LogFileUtils;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetSystemMode, isChildMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/meizu/keyguard/auto_color/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 989
    if-eqz v1, :cond_0

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "flyme.intent.action.SWITCH_CHILD_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    .local v0, "childIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "children_mode"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 992
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    const-string/jumbo v3, "isChildMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 994
    iget-object v3, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    .end local v0    # "childIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .end local v1    # "isChildMode":Z
    .end local v2    # "privateIntent":Landroid/content/Intent;
    :cond_1
    move v3, v5

    .line 981
    goto :goto_0

    .line 986
    .restart local v2    # "privateIntent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isChildMode":Z
    goto :goto_1

    .restart local v0    # "childIntent":Landroid/content/Intent;
    :cond_3
    move v4, v5

    .line 991
    goto :goto_2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 332
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 897
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 265
    return-void
.end method

.method public showToast(Lcom/meizu/flyme/service/find/FindPhoneData;)V
    .locals 6
    .param p1, "data"    # Lcom/meizu/flyme/service/find/FindPhoneData;

    .prologue
    const/4 v5, 0x0

    .line 658
    const-string/jumbo v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showToast, mFindPhonePasswordError = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string/jumbo v1, ""

    .line 661
    .local v1, "text":Ljava/lang/String;
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    if-nez v2, :cond_2

    .line 662
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_unknown_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 697
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 698
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$drawable;->mz_textfield_color_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 699
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mWarningTips:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    :cond_1
    :goto_1
    return-void

    .line 663
    :cond_2
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 665
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_time_out:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 666
    :cond_3
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 668
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_time_out:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 669
    :cond_4
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 671
    iget v0, p1, Lcom/meizu/flyme/service/find/FindPhoneData;->mDuration:I

    .line 672
    .local v0, "duration":I
    if-gtz v0, :cond_5

    .line 673
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_password_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 675
    :cond_5
    const-string/jumbo v2, "FindPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-lez v0, :cond_0

    .line 677
    mul-int/lit8 v2, v0, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->handleEdittextLockout(J)V

    goto :goto_0

    .line 679
    .end local v0    # "duration":I
    :cond_6
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 680
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_no_accountname:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 681
    :cond_7
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    .line 682
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_account_no_match_sn:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 683
    :cond_8
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 691
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "count limit "

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 692
    :cond_9
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 693
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_no_SN:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 694
    :cond_a
    iget v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mFindPhonePasswordError:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 695
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->find_phone_tips_flyme_network_unusable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 704
    :cond_b
    iget-object v2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mPasswordET:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$drawable;->count_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method
