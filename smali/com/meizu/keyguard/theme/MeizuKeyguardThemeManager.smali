.class public Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;
.super Ljava/lang/Object;
.source "MeizuKeyguardThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_THEME:Z

.field public static final LOCAL_DEBUG_THEME:Z

.field private static mInstance:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;


# instance fields
.field private final PREPARE_VIEW_ONLY:I

.field private final PREPARE_WRAPPER_AND_VIEW:I

.field private final THEME_TYPE_INVALID:I

.field private final THEME_TYPE_WEILE:I

.field private final THEME_TYPE_ZHANGKU:I

.field private mCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurLockScreenView:Landroid/view/View;

.field private mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

.field private mLock:Ljava/lang/Object;

.field protected mPrepareTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeType:I


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCallback:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;Lcom/meizu/keyguard/theme/LockscreenWrapper;)Lcom/meizu/keyguard/theme/LockscreenWrapper;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;I)V
    .locals 0
    .param p1, "taskParam"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->prepareWrapperAndLockScreenViewBackground(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19
    const-string/jumbo v0, "true"

    .line 20
    const-string/jumbo v1, "debug.keyguard.theme.local"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->LOCAL_DEBUG_THEME:Z

    .line 22
    const-string/jumbo v0, "true"

    .line 23
    const-string/jumbo v1, "debug.keyguard.theme"

    .line 22
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget-boolean v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->LOCAL_DEBUG_THEME:Z

    .line 22
    if-nez v0, :cond_0

    :cond_0
    sput-boolean v2, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->DEBUG_THEME:Z

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->THEME_TYPE_INVALID:I

    .line 29
    iput v3, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->THEME_TYPE_WEILE:I

    .line 30
    iput v4, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->THEME_TYPE_ZHANGKU:I

    .line 31
    iput v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCallback:Ljava/util/ArrayList;

    .line 37
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mLock:Ljava/lang/Object;

    .line 44
    iput v3, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->PREPARE_VIEW_ONLY:I

    .line 45
    iput v4, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->PREPARE_WRAPPER_AND_VIEW:I

    .line 49
    iput-object p1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance v1, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$1;-><init>(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)V

    .line 64
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.meizu.theme.change"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkThemeResourceExists()Z

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mInstance:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mInstance:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    .line 73
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mInstance:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    return-object v0
.end method

.method public static logKeyguardTheme(Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-boolean v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->DEBUG_THEME:Z

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "MeizuKeyguardThemeManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method private prepareWrapperAndLockScreenViewBackground(I)V
    .locals 5
    .param p1, "taskParam"    # I

    .prologue
    const/4 v2, 0x1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareWrapperAndLockScreenViewBackground taskParam = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mPrepareTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 206
    :cond_0
    new-instance v0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;-><init>(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)V

    iput-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mPrepareTask:Landroid/os/AsyncTask;

    .line 241
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mPrepareTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Integer;

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 200
    return-void
.end method


# virtual methods
.method public checkThemeResourceExists()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "exists":Z
    iget v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    if-nez v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkWeileThemeResourceExists()Z

    move-result v0

    .line 118
    .local v0, "exists":Z
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkThemeResourceExists mThemeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string/jumbo v2, ", exists = "

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 120
    return v0

    .line 109
    .local v0, "exists":Z
    :cond_1
    iget v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    if-ne v1, v3, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkZhangkuThemeResourceExists()Z

    move-result v0

    .local v0, "exists":Z
    goto :goto_0

    .line 112
    .local v0, "exists":Z
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkWeileThemeResourceExists()Z

    move-result v0

    .local v0, "exists":Z
    if-eqz v0, :cond_3

    .line 113
    iput v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkZhangkuThemeResourceExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iput v3, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    goto :goto_0
.end method

.method public checkWeileThemeResourceExists()Z
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "exists":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->LOCAL_DEBUG_THEME:Z

    if-eqz v2, :cond_0

    .line 151
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    :goto_0
    const-string/jumbo v2, "/vlifelockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 157
    .local v0, "exists":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkWeileThemeResourceExists path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    const-string/jumbo v3, ", exists = "

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 159
    return v0

    .line 153
    .local v0, "exists":Z
    :cond_0
    const-string/jumbo v2, "/data/data/com.meizu.customizecenter/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public checkZhangkuThemeResourceExists()Z
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "exists":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->LOCAL_DEBUG_THEME:Z

    if-eqz v2, :cond_0

    .line 166
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    :goto_0
    const-string/jumbo v2, "/zklockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 172
    .local v0, "exists":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkZhangkuThemeResourceExists path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    const-string/jumbo v3, ", exists = "

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 174
    return v0

    .line 168
    .local v0, "exists":Z
    :cond_0
    const-string/jumbo v2, "/data/data/com.meizu.customizecenter/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getLockscreenView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 189
    iget v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    if-ne v0, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v3, v3}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onReLoad(ZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    return-object v0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 193
    const-string/jumbo v1, "MeizuKeyguardTheme"

    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getThemeResourcePath()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->load3PartLockView(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    goto :goto_0
.end method

.method public getThemeResourcePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-boolean v1, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->LOCAL_DEBUG_THEME:Z

    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    :goto_0
    iget v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    if-nez v1, :cond_2

    .line 96
    const-string/jumbo v1, "/vlifelockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getThemeResourcePath mThemeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-string/jumbo v2, ", path = "

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :cond_1
    const-string/jumbo v1, "/data/data/com.meizu.customizecenter/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_2
    iget v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 98
    const-string/jumbo v1, "/zklockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkWeileThemeResourceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string/jumbo v0, "currently weile theme is in use"

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    .line 128
    new-instance v0, Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 129
    const-string/jumbo v1, "com.vlife.mxlock.wallpaper"

    .line 130
    const-string/jumbo v2, "com.vlife.mx.VlifeLockScreenForMeizu"

    .line 128
    invoke-direct {v0, p1, v1, v2}, Lcom/meizu/keyguard/theme/LockscreenWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 131
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->init(Landroid/content/Context;)Z

    .line 143
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWrapper mCurWrapper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    return-object v0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->checkZhangkuThemeResourceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string/jumbo v0, "currently zhangku theme is in use"

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    .line 135
    new-instance v0, Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 136
    const-string/jumbo v1, "com.ibimuyu.lockscreen"

    .line 137
    const-string/jumbo v2, "com.zookingsoft.lockscreen.load.meizu.LockscreenService"

    .line 135
    invoke-direct {v0, p1, v1, v2}, Lcom/meizu/keyguard/theme/LockscreenWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 138
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->init(Landroid/content/Context;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->resetFlymeTheme()V

    goto :goto_0
.end method

.method public registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public resetFlymeTheme()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    const-string/jumbo v0, "resetFlymeTheme"

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    .line 248
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onRelease()V

    .line 250
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onDestroy()V

    .line 251
    iput-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurWrapper:Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 252
    iput-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mCurLockScreenView:Landroid/view/View;

    .line 245
    :cond_0
    return-void
.end method

.method public useThirdPartLockscreen()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->mThemeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
