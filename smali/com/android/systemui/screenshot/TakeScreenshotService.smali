.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/TakeScreenshotService$1;
    }
.end annotation


# static fields
.field private static mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mShouldHideSmartTouch:Z

.field private mShouldHideVolumePanel:Z


# direct methods
.method static synthetic -get0()Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 0

    sput-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    .line 45
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "mz_smart_touch_switch"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideSmartTouch:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/flyme/systemui/smarttouch/HideSmartTouchService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "HIDE_WHEN_SCREENSHOT"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mShouldHideVolumePanel:Z

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/volume/HideVolumeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 113
    :cond_1
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    .line 103
    goto :goto_0

    :cond_3
    move v1, v2

    .line 108
    goto :goto_1
.end method
