.class public abstract Lcom/android/keyguard/KeyguardActivityLauncher;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->dismissKeyguardOnNextActivity()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "worker"    # Landroid/os/Handler;
    .param p4, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const/high16 v1, 0x800000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dismissKeyguardOnNextActivity()V
    .locals 3

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->mustLaunchSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private mustLaunchSecurely()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 131
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 132
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 133
    .local v0, "currentUser":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "worker"    # Landroid/os/Handler;
    .param p4, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 227
    new-instance v4, Landroid/os/UserHandle;

    const/4 v0, -0x2

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 228
    .local v4, "user":Landroid/os/UserHandle;
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 230
    return-void

    .line 233
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardActivityLauncher$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher$2;-><init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method private wouldLaunchResolverActivity(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x10000

    .line 269
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 271
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 270
    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 273
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 272
    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    return v3
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 281
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 282
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-eqz v2, :cond_0

    .line 284
    const/4 v2, 0x0

    return v2

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 70
    new-instance v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-direct {v1}, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;-><init>()V

    .line 71
    .local v1, "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    .line 72
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 74
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const/high16 v7, 0x10000

    .line 73
    invoke-virtual {v4, v2, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 77
    return-object v8

    .line 81
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 80
    const v7, 0x10080

    .line 79
    invoke-virtual {v4, v2, v7, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 83
    .local v5, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    return-object v1

    .line 87
    :cond_1
    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_3

    .line 88
    :cond_2
    return-object v8

    .line 90
    :cond_3
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    :cond_4
    return-object v1

    .line 94
    :cond_5
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.android.keyguard.layout"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, "layoutId":I
    if-nez v3, :cond_6

    .line 97
    return-object v1

    .line 99
    :cond_6
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    .line 100
    iput v3, v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    .line 101
    return-object v1
.end method

.method abstract getContext()Landroid/content/Context;
.end method

.method abstract getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
.end method

.method public launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showsWhileLocked"    # Z
    .param p3, "useDefaultAnimations"    # Z
    .param p4, "worker"    # Landroid/os/Handler;
    .param p5, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 174
    .local v6, "context":Landroid/content/Context;
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 171
    return-void

    .line 175
    :cond_0
    invoke-static {v6, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .local v3, "animation":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showsWhileLocked"    # Z
    .param p3, "animation"    # Landroid/os/Bundle;
    .param p4, "worker"    # Landroid/os/Handler;
    .param p5, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    .line 187
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/high16 v0, 0x34000000

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->mustLaunchSecurely()Z

    move-result v8

    .line 191
    .local v8, "mustLaunchSecurely":Z
    if-eqz v8, :cond_0

    if-eqz p2, :cond_2

    .line 192
    :cond_0
    if-nez v8, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->dismissKeyguardOnNextActivity()V

    .line 198
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity not found for intent + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardActivityLauncher$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher$1;-><init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->requestDismissKeyguard()V

    goto :goto_0
.end method

.method public launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "worker"    # Landroid/os/Handler;
    .param p2, "onSecureCameraStarted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 109
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    .line 110
    .local v10, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 112
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->mustLaunchSecurely()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 104
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v4, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    const/4 v5, 0x1

    move-object v3, p0

    move v6, v2

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchWidgetPicker(I)V
    .locals 7
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v0, "appWidgetId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string/jumbo v0, "customSort"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string/jumbo v0, "categoryFilter"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v6, "options":Landroid/os/Bundle;
    const-string/jumbo v0, "appWidgetCategory"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string/jumbo v0, "appWidgetOptions"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    const/high16 v0, 0x34800000

    .line 148
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method abstract requestDismissKeyguard()V
.end method

.method abstract setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
.end method
