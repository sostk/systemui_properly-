.class public Lcom/meizu/keyguard/auto_color/AutoColorUtil;
.super Ljava/lang/Object;
.source "AutoColorUtil.java"


# static fields
.field public static DEFALUT_STATE:I

.field public static MUSIC_STATE:I

.field private static mAutoColorUtil:Lcom/meizu/keyguard/auto_color/AutoColorUtil;

.field private static mBrightLevel:I

.field private static mHasNotification:Z

.field private static mIsKeyguardLight:Z

.field private static mIsMusicLight:Z

.field private static mKeyguardColor:I

.field private static mMusicBrightLevel:I

.field private static mMusicColor:I

.field private static mState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->DEFALUT_STATE:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->MUSIC_STATE:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    .line 42
    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    .line 43
    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "KEYGUARD_DEFAULT_COLOR"

    .line 44
    const/4 v4, -0x1

    .line 43
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sput v2, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mKeyguardColor:I

    .line 45
    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "KEYGUARD_DEFAULT_LIGHT"

    invoke-static {v2, v3, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mIsKeyguardLight:Z

    .line 47
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "KEYGUARD_DEFAULT_BRIGHT"

    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mBrightLevel:I

    .line 49
    sget v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->DEFALUT_STATE:I

    sput v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mState:I

    .line 40
    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mAutoColorUtil:Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mAutoColorUtil:Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    .line 56
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mAutoColorUtil:Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    return-object v0
.end method


# virtual methods
.method public getBrightLevel()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mBrightLevel:I

    return v0
.end method

.method public getCurrentColor(Z)I
    .locals 1
    .param p1, "isPanel"    # Z

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    return v0
.end method

.method public getCurrentColor(ZI)I
    .locals 7
    .param p1, "isPanel"    # Z
    .param p2, "which"    # I

    .prologue
    const/16 v6, 0xe6

    const/16 v5, 0xff

    .line 100
    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget v1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mState:I

    sget v2, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->MUSIC_STATE:I

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 104
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 106
    .local v0, "tmp":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 107
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1

    .line 102
    .end local v0    # "tmp":I
    :cond_1
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1

    .line 109
    .restart local v0    # "tmp":I
    :cond_2
    sget-boolean v1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mHasNotification:Z

    if-eqz v1, :cond_3

    .line 110
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isChargingMaskShow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    const v1, -0x19000001

    return v1

    .line 115
    :cond_4
    if-eqz p1, :cond_5

    sget v1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mState:I

    sget v2, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->MUSIC_STATE:I

    if-ne v1, v2, :cond_5

    .line 116
    sget v1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mMusicColor:I

    return v1

    .line 117
    :cond_5
    if-eqz p1, :cond_6

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    sget v1, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->mColor:I

    return v1

    .line 120
    :cond_6
    sget v1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mKeyguardColor:I

    return v1
.end method

.method public initObserver(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 3
    .param p1, "updateMonitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 60
    new-instance v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    .line 61
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    iget-object v1, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 63
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->register()V

    .line 59
    return-void
.end method

.method public setKeyguardColor(IZI)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "isLight"    # Z
    .param p3, "level"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    sput p1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mKeyguardColor:I

    .line 81
    sput-boolean p2, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mIsKeyguardLight:Z

    .line 82
    sput p3, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mBrightLevel:I

    .line 83
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "KEYGUARD_DEFAULT_COLOR"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 85
    iget-object v2, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "KEYGUARD_DEFAULT_LIGHT"

    .line 86
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 87
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "KEYGUARD_DEFAULT_BRIGHT"

    invoke-static {v0, v2, p3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public setMusicColor(IZI)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "isLight"    # Z
    .param p3, "level"    # I

    .prologue
    .line 91
    sput p1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mMusicColor:I

    .line 92
    sput-boolean p2, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mIsMusicLight:Z

    .line 93
    sput p3, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mMusicBrightLevel:I

    .line 90
    return-void
.end method

.method public updateState(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "hasNotification"    # Z

    .prologue
    .line 134
    sput p1, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mState:I

    .line 135
    sput-boolean p2, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->mHasNotification:Z

    .line 133
    return-void
.end method

.method public updateWallpaperColor(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->wallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-virtual {v0, p1, v1}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 138
    :cond_0
    return-void
.end method
