.class public Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.super Ljava/lang/Object;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;,
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCurrentlyInsecure:Z

.field private mFaceUnlockRunning:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecure:Z

.field private mTrustManaged:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V
    .locals 0
    .param p1, "updateAlways"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 48
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 50
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    .line 47
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 103
    .local v0, "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;->onUnlockMethodStateChanged()V

    goto :goto_0

    .line 101
    .end local v0    # "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 8
    .param p1, "updateAlways"    # Z

    .prologue
    .line 84
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 85
    .local v5, "user":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    .line 86
    .local v3, "secure":Z
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    .line 87
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    .line 88
    .local v4, "trustManaged":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceUnlockRunning(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    move v2, v4

    .line 90
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    if-ne v3, v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCurrentlyInsecure:Z

    if-eq v1, v6, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 92
    .local v0, "changed":Z
    :goto_2
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 93
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCurrentlyInsecure:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->notifyListeners()V

    .line 83
    :cond_2
    return-void

    .line 86
    .end local v0    # "changed":Z
    .end local v4    # "trustManaged":Z
    :cond_3
    const/4 v1, 0x1

    .local v1, "currentlyInsecure":Z
    goto :goto_0

    .line 88
    .end local v1    # "currentlyInsecure":Z
    .restart local v4    # "trustManaged":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "faceUnlockRunning":Z
    goto :goto_1

    .line 91
    .end local v2    # "faceUnlockRunning":Z
    :cond_5
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    if-ne v4, v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    if-eq v2, v6, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_2

    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public isCurrentlyInsecure()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCurrentlyInsecure:Z

    return v0
.end method

.method public isFaceUnlockRunning()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    return v0
.end method

.method public isMethodSecure()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    return v0
.end method

.method public isTrustManaged()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    return v0
.end method
