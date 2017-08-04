.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$Helper;,
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$1;,
        Lcom/android/keyguard/KeyguardMessageArea$2;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field public static mResolver:Landroid/content/ContentResolver;


# instance fields
.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 75
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 86
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 167
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 169
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    const v1, 0x104056c

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 179
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->mResolver:Landroid/content/ContentResolver;

    .line 165
    return-void
.end method

.method private hideMessage(IZ)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 222
    if-lez p1, :cond_2

    .line 223
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 224
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 225
    if-eqz p2, :cond_0

    .line 226
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 221
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 236
    if-eqz p2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 243
    if-lez p1, :cond_0

    .line 244
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 245
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 246
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 242
    .end local v0    # "anim":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 185
    .local v0, "screenOn":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 183
    return-void
.end method

.method public securityMessageChanged()V
    .locals 8

    .prologue
    .line 189
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    .line 197
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 188
    return-void
.end method

.method update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 210
    .local v0, "icon":Landroid/util/MutableInt;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 211
    .local v1, "status":Ljava/lang/CharSequence;
    iget v2, v0, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getTipsColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 208
    return-void
.end method
