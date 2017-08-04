.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;,
        Lcom/android/keyguard/KeyguardSecurityContainer$1;,
        Lcom/android/keyguard/KeyguardSecurityContainer$2;
    }
.end annotation


# static fields
.field private static synthetic -com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mFingerVerifyResult:I

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSaveMargin:I

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method private static synthetic -getcom_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FindPhone:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSecurityContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0
    .param p1, "timeoutMs"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    .line 538
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 595
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 85
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 86
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->save_tips_easy_margin_to_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSaveMargin:I

    .line 83
    return-void
.end method

.method private canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v0, 0x0

    .line 694
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v1

    .line 695
    if-eqz v1, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    .prologue
    .line 515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_0

    .line 518
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 515
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 630
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 640
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 632
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->mz_keyguard_easy_password_view:I

    return v0

    .line 633
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$layout;->mz_keyguard_password_view:I

    return v0

    .line 636
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$layout;->mz_keyguard_sim_pin_view:I

    return v0

    .line 637
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$layout;->mz_keyguard_sim_puk_view:I

    return v0

    .line 638
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_screen_findphone_portrait:I

    return v0

    .line 630
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 9
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v8, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 147
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 148
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 149
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 150
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 151
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 156
    .local v3, "layoutId":I
    if-nez v6, :cond_3

    if-eqz v3, :cond_3

    .line 157
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 159
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 167
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 168
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    invoke-direct {p0, v5, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    move-object v6, v5

    .line 169
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 181
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v6

    .line 149
    .end local v3    # "layoutId":I
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    .restart local v3    # "layoutId":I
    :cond_3
    if-eqz v6, :cond_1

    instance-of v7, v6, Lcom/meizu/keyguard/MzKeyguardSimPinPukView;

    if-eqz v7, :cond_1

    .line 172
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v7, :cond_1

    goto :goto_1
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 615
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 626
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 617
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    return v0

    .line 618
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    return v0

    .line 621
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$id;->mz_keyguard_sim_pin_view:I

    return v0

    .line 622
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$id;->mz_keyguard_sim_puk_view:I

    return v0

    .line 624
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$id;->keyguard_find_phone_view:I

    return v0

    .line 615
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportFailedUnlockAttempt(I)V
    .locals 14
    .param p1, "timeoutMs"    # I

    .prologue
    .line 303
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    .line 304
    .local v6, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v11

    add-int/lit8 v3, v11, 0x1

    .line 308
    .local v3, "failedAttempts":I
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    .line 309
    .local v5, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v11, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v11, :cond_3

    const/4 v10, 0x1

    .line 310
    .local v10, "usingPattern":Z
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 311
    .local v0, "currentUser":I
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 313
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v1, v11, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v4

    .line 318
    .local v4, "failedAttemptsBeforeWipe":I
    if-lez v4, :cond_4

    .line 319
    sub-int v7, v4, v3

    .line 321
    .local v7, "remainingBeforeWipe":I
    :goto_1
    const/4 v8, 0x0

    .line 322
    .local v8, "showTimeout":Z
    const/4 v11, 0x5

    if-ge v7, v11, :cond_1

    .line 327
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v2

    .line 328
    .local v2, "expiringUser":I
    const/4 v9, 0x1

    .line 329
    .local v9, "userType":I
    if-ne v2, v0, :cond_5

    .line 330
    if-eqz v2, :cond_0

    .line 331
    const/4 v9, 0x3

    .line 336
    :cond_0
    :goto_2
    if-lez v7, :cond_6

    .line 337
    invoke-direct {p0, v3, v7, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    .line 358
    .end local v2    # "expiringUser":I
    .end local v9    # "userType":I
    :cond_1
    :goto_3
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 359
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 360
    if-eqz v8, :cond_2

    .line 302
    :cond_2
    return-void

    .line 309
    .end local v0    # "currentUser":I
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "failedAttemptsBeforeWipe":I
    .end local v7    # "remainingBeforeWipe":I
    .end local v8    # "showTimeout":Z
    .end local v10    # "usingPattern":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "usingPattern":Z
    goto :goto_0

    .line 320
    .restart local v0    # "currentUser":I
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "failedAttemptsBeforeWipe":I
    :cond_4
    const v7, 0x7fffffff

    .restart local v7    # "remainingBeforeWipe":I
    goto :goto_1

    .line 333
    .restart local v2    # "expiringUser":I
    .restart local v8    # "showTimeout":Z
    .restart local v9    # "userType":I
    :cond_5
    const/16 v11, -0x2710

    if-eq v2, v11, :cond_0

    .line 334
    const/4 v9, 0x2

    goto :goto_2

    .line 340
    :cond_6
    const-string/jumbo v11, "KeyguardSecurityView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Too many unlock attempts; user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " will be wiped!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0, v3, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    goto :goto_3
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "userType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "message":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 271
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void

    .line 259
    .restart local v0    # "message":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 263
    .local v0, "message":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_user:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 267
    .local v0, "message":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 267
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 215
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 217
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 220
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 211
    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 7
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 482
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v5, :cond_0

    return-void

    .line 484
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 485
    .local v3, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    .line 488
    .local v2, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v3, :cond_1

    .line 489
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 490
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 492
    :cond_1
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_2

    .line 493
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 494
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 498
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 500
    .local v0, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 501
    .local v4, "securityViewIdForMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 502
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 503
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 508
    :cond_3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 509
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 510
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_5

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v5

    .line 509
    :goto_1
    invoke-interface {v6, p1, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 511
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardModelChange()V

    .line 479
    return-void

    .line 501
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private showWipeDialog(II)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "userType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 290
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void

    .line 278
    .restart local v0    # "message":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_wiping:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 282
    .local v0, "message":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_user:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 282
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 286
    .local v0, "message":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 286
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSecurityView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBouncing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 185
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    .line 186
    instance-of v1, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 188
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 184
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 193
    .restart local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 196
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 139
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 533
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 531
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 201
    sget v0, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 103
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public relayoutPassWordView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 700
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    .line 702
    .local v0, "isSaveMode":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 703
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSaveMargin:I

    :goto_0
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 704
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    return-void

    :cond_0
    move v2, v3

    .line 703
    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 670
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 205
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 91
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 526
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 524
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 8
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "finish":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    const/4 v1, 0x1

    .line 451
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 452
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish()V

    .line 454
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentSystemMode()I

    move-result v0

    .line 455
    .local v0, "currentSystemMode":I
    iget v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    if-ne v3, v7, :cond_9

    .line 456
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    .line 457
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    .line 470
    .end local v0    # "currentSystemMode":I
    :cond_1
    :goto_1
    return v1

    .line 405
    :cond_2
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_5

    .line 406
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 408
    .local v2, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 410
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 412
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 414
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 416
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    if-eqz p1, :cond_8

    .line 417
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom_android_keyguard_KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 444
    :pswitch_0
    const-string/jumbo v3, "KeyguardSecurityView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad security screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fail safe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 423
    :pswitch_1
    const/4 v1, 0x1

    .line 424
    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 436
    .restart local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_6

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 439
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 437
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_0

    .line 448
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 458
    .restart local v0    # "currentSystemMode":I
    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_a

    .line 459
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v0, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 460
    :cond_a
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 461
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 462
    :cond_b
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_c

    .line 463
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v7}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 464
    :cond_c
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_d

    .line 465
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 466
    :cond_d
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_1

    .line 467
    :cond_e
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v0, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 2
    .param p1, "turningOff"    # Z

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 374
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    if-nez p1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    .line 374
    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 380
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 371
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showUsabilityHint()V

    .line 685
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 109
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method updateSecurityViews(Z)V
    .locals 3
    .param p1, "isBouncing"    # Z

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 125
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
