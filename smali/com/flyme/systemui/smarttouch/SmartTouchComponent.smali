.class public abstract Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
.super Ljava/lang/Object;
.source "SmartTouchComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;
    }
.end annotation


# static fields
.field public static mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;


# instance fields
.field private isConfigOn:Z

.field private isStatusbarSwichOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mFSDObserver:Landroid/database/ContentObserver;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mOldOrientation:I

.field private smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    return v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mFSDObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->changeFloatTouch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->notifiChange()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onConfigChange()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onSettingsChange()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    .line 41
    const/4 v3, -0x1

    iput v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    .line 177
    new-instance v3, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;

    .line 178
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 177
    invoke-direct {v3, p0, v4}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mFSDObserver:Landroid/database/ContentObserver;

    .line 48
    sget-object v3, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    if-eqz v3, :cond_0

    .line 49
    const-string/jumbo v3, "SmartTouch"

    const-string/jumbo v4, "is a error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    sput-object p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    .line 52
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v3, "mz_smart_touch_change"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    .local v0, "fsdUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mFSDObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mz_smart_touch_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    .line 56
    iget-boolean v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    iput-boolean v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    .line 57
    const-string/jumbo v2, "flag_change_SmartTouch"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->changeFloatTouch()V

    .line 60
    new-instance v1, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;

    invoke-direct {v1, p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/net/Uri;)V

    .line 76
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    return-void
.end method

.method private final changeFloatTouch()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 218
    iget-boolean v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    if-eqz v2, :cond_5

    .line 219
    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v2, :cond_0

    .line 220
    const-string/jumbo v2, "flag_change_SmartTouch"

    const-string/jumbo v3, "error : smart bar should close"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->destroy()V

    .line 222
    sput-object v4, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 225
    :cond_0
    const-string/jumbo v2, "flag_change_SmartTouch"

    const-string/jumbo v3, "state change open "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v2, Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    .line 228
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    .line 229
    iget v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    if-eq v2, v6, :cond_3

    .line 230
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v6, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 231
    const-string/jumbo v2, "SmartTouch"

    const-string/jumbo v3, "hide when changeFloatTouch, because is land"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 236
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v6, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 238
    const-string/jumbo v2, "SmartTouch"

    const-string/jumbo v3, "hide when changeFloatTouch, because is keyguard"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "smarttouchtest"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "firsthelp"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "firsthelp"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    .end local v0    # "km":Landroid/app/KeyguardManager;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_2
    return-void

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v5, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    goto :goto_0

    .line 240
    .restart local v0    # "km":Landroid/app/KeyguardManager;
    :cond_4
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v5, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    goto :goto_1

    .line 255
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_5
    const-string/jumbo v2, "flag_change_SmartTouch"

    const-string/jumbo v3, "state change close "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->destroy()V

    .line 258
    iput-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    goto :goto_2
.end method

.method public static getInstanse()Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    return-object v0
.end method

.method private final notifiChange()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    const-string/jumbo v2, "mz_smart_touch_change"

    .line 212
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 213
    const-string/jumbo v4, "mz_smart_touch_change"

    .line 212
    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 210
    :cond_0
    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 209
    return-void
.end method

.method private final onConfigChange()V
    .locals 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isConfigOn:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    .line 195
    const-string/jumbo v0, "flag_change_SmartTouch"

    const-string/jumbo v1, "on database change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->changeFloatTouch()V

    .line 193
    return-void
.end method

.method private final onSettingsChange()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->onSettingsChange()V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 265
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 266
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    .line 267
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-eqz v0, :cond_0

    .line 268
    iget v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mOldOrientation:I

    if-ne v0, v2, :cond_2

    .line 269
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 270
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "show when ConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string/jumbo v0, "SmartTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not show when ConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    iput-boolean v2, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 278
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "hide when screen-h"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V

    goto :goto_0
.end method

.method public abstract onUpdateViews(Z)V
.end method

.method public final setSmartTouchOn(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 82
    const-string/jumbo v6, "flag_change_SmartTouch"

    const-string/jumbo v7, "onClick "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    .line 84
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "smarttouchtest"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 85
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "firsthelp"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mz_smart_touch_switch"

    invoke-static {v6, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 88
    .local v2, "isOn":Z
    :goto_0
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mz_smart_touch_switch"

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 89
    invoke-direct {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->notifiChange()V

    .line 81
    .end local v2    # "isOn":Z
    :cond_0
    :goto_2
    return-void

    .line 86
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isOn":Z
    goto :goto_0

    :cond_2
    move v4, v5

    .line 88
    goto :goto_1

    .line 92
    .end local v2    # "isOn":Z
    :cond_3
    iget-boolean v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    if-eqz v5, :cond_5

    .line 94
    iget-boolean v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    invoke-virtual {p0, v5}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onUpdateViews(Z)V

    .line 96
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    .line 97
    const-string/jumbo v5, "smarttouch.SmartTouchComponent"

    const-string/jumbo v6, "should always be null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-direct {v0, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 102
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    const v6, 0x7f0400b2

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;

    invoke-direct {v6, p0, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$3;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;

    invoke-direct {v6, p0, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$4;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v5, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;

    invoke-direct {v5, p0, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 149
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMaxHeight(I)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    .line 151
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 162
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 166
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_5
    iget-boolean v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->isStatusbarSwichOn:Z

    invoke-virtual {p0, v4}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onUpdateViews(Z)V

    .line 167
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    iput-object v8, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->mHelpDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2
.end method
