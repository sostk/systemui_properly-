.class public Lcom/meizu/keyguard/MzGestureHelper;
.super Ljava/lang/Object;
.source "MzGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/MzGestureHelper$1;
    }
.end annotation


# static fields
.field public static CAMERA_COMPONENTNAME:Landroid/content/ComponentName;

.field private static mInstance:Lcom/meizu/keyguard/MzGestureHelper;

.field private static mLaunchAppUnlocked:I

.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoubleTapEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mPalmRejectionEnabled:Z

.field private mResetLaunchAppUnlocked:Ljava/lang/Runnable;

.field private mSlideLeftEnabled:Z

.field private mSlideRightComponent:Landroid/content/ComponentName;

.field private mSlideVerticalEnabled:Z

.field public mUnlockAndWakeup:Z


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/MzGestureHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/MzGestureHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mPalmRejectionEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/MzGestureHelper;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideRightComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/meizu/keyguard/MzGestureHelper;->mLaunchAppUnlocked:I

    return p0
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/MzGestureHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/keyguard/MzGestureHelper;->mPalmRejectionEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/keyguard/MzGestureHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideRightComponent:Landroid/content/ComponentName;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/meizu/keyguard/MzGestureHelper;->mLaunchAppUnlocked:I

    .line 61
    new-instance v0, Landroid/content/ComponentName;

    .line 62
    const-string/jumbo v1, "com.meizu.media.camera"

    const-string/jumbo v2, "com.meizu.media.camera.CameraLauncher"

    .line 61
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/keyguard/MzGestureHelper;->CAMERA_COMPONENTNAME:Landroid/content/ComponentName;

    .line 469
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/meizu/keyguard/MzGestureHelper;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 470
    sget-object v0, Lcom/meizu/keyguard/MzGestureHelper;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideRightComponent:Landroid/content/ComponentName;

    .line 64
    new-instance v0, Lcom/meizu/keyguard/MzGestureHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzGestureHelper$1;-><init>(Lcom/meizu/keyguard/MzGestureHelper;)V

    iput-object v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mResetLaunchAppUnlocked:Ljava/lang/Runnable;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    .line 73
    iput-object p1, p0, Lcom/meizu/keyguard/MzGestureHelper;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Lcom/meizu/keyguard/MzGestureHelper;->initGestureState()V

    .line 76
    invoke-direct {p0}, Lcom/meizu/keyguard/MzGestureHelper;->registerGestureObserver()V

    .line 93
    invoke-direct {p0}, Lcom/meizu/keyguard/MzGestureHelper;->registerSmartWallpaperStateObserver()V

    .line 94
    const-string/jumbo v0, "MzGestureHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mDoubleTapEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/keyguard/MzGestureHelper;->mDoubleTapEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string/jumbo v2, ", mSlideLeftEnabled = "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    iget-boolean v2, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideLeftEnabled:Z

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    const-string/jumbo v2, ", mSlideVerticalEnabled = "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    iget-boolean v2, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideVerticalEnabled:Z

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    const-string/jumbo v2, ", mSlideRightComponent = "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideRightComponent:Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/MzGestureHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v0, Lcom/meizu/keyguard/MzGestureHelper;->mInstance:Lcom/meizu/keyguard/MzGestureHelper;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/meizu/keyguard/MzGestureHelper;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/MzGestureHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/keyguard/MzGestureHelper;->mInstance:Lcom/meizu/keyguard/MzGestureHelper;

    .line 104
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/MzGestureHelper;->mInstance:Lcom/meizu/keyguard/MzGestureHelper;

    return-object v0
.end method

.method private initGestureState()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 256
    iget-object v5, p0, Lcom/meizu/keyguard/MzGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 266
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "mz_quick_wakeup_slide_right_package_detail"

    .line 265
    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "componentStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 268
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "component":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 270
    new-instance v5, Landroid/content/ComponentName;

    aget-object v6, v0, v4

    .line 271
    aget-object v7, v0, v3

    .line 270
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/meizu/keyguard/MzGestureHelper;->mSlideRightComponent:Landroid/content/ComponentName;

    .line 275
    .end local v0    # "component":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/meizu/keyguard/MzGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 276
    const-string/jumbo v6, "keyguard_palm_rejection"

    .line 274
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/meizu/keyguard/MzGestureHelper;->mPalmRejectionEnabled:Z

    .line 255
    return-void

    :cond_1
    move v3, v4

    .line 274
    goto :goto_0
.end method

.method public static launchFastActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSecurity"    # Z
    .param p3, "fast"    # Z

    .prologue
    .line 110
    const-string/jumbo v6, "input_method"

    .line 109
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    .line 112
    .local v4, "exception":Z
    const/high16 v6, 0x10020000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 116
    .local v0, "cn":Landroid/content/ComponentName;
    sget-object v6, Lcom/meizu/keyguard/MzGestureHelper;->CAMERA_COMPONENTNAME:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 117
    const/high16 v6, 0x20000000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    :cond_0
    iget-object v6, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 120
    const/16 v7, 0x10

    .line 119
    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 121
    if-nez p2, :cond_2

    .line 122
    iget-object v6, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v7, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v7}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v7

    and-int/lit16 v7, v7, -0x81

    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->setMeizuFlags(I)V

    .line 129
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 130
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz p3, :cond_1

    .line 131
    iget-object v6, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 132
    const/16 v7, 0x20

    .line 131
    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 136
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :goto_1
    :try_start_1
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    :goto_2
    return v4

    .line 126
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_2
    iget-object v6, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 127
    const/16 v7, 0x80

    .line 126
    invoke-virtual {v6, v7}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    goto :goto_0

    .line 143
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const/4 v4, 0x1

    .line 145
    const-string/jumbo v6, "MzGestureHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity not found for intent + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 137
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private registerGestureObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/meizu/keyguard/MzGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mz_quick_wakeup_slide_right_package_detail"

    .line 212
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    new-instance v2, Lcom/meizu/keyguard/MzGestureHelper$2;

    invoke-direct {v2, p0, v4, v0}, Lcom/meizu/keyguard/MzGestureHelper$2;-><init>(Lcom/meizu/keyguard/MzGestureHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 211
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    const-string/jumbo v1, "keyguard_palm_rejection"

    .line 239
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    new-instance v2, Lcom/meizu/keyguard/MzGestureHelper$3;

    invoke-direct {v2, p0, v4}, Lcom/meizu/keyguard/MzGestureHelper$3;-><init>(Lcom/meizu/keyguard/MzGestureHelper;Landroid/os/Handler;)V

    .line 238
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    return-void
.end method

.method private registerSmartWallpaperStateObserver()V
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/meizu/keyguard/MzGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "set_wallpaper_simultaneously"

    .line 441
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 443
    new-instance v2, Lcom/meizu/keyguard/MzGestureHelper$4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/meizu/keyguard/MzGestureHelper$4;-><init>(Lcom/meizu/keyguard/MzGestureHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v3, 0x0

    .line 441
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    return-void
.end method


# virtual methods
.method public getLaunchGestureUnlocked()I
    .locals 1

    .prologue
    .line 362
    sget v0, Lcom/meizu/keyguard/MzGestureHelper;->mLaunchAppUnlocked:I

    return v0
.end method

.method public isPalmRejectionEnabled()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/meizu/keyguard/MzGestureHelper;->mPalmRejectionEnabled:Z

    return v0
.end method
