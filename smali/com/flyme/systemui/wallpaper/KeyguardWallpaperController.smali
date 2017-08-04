.class public Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$1;,
        Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$2;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLockscreenPosterObserver:Landroid/database/ContentObserver;

.field private mOccluded:Z

.field private mOccludedStateChagne:Z

.field private mResetOccludedState:Ljava/lang/Runnable;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowWallpaperText:Z

.field private mStartWallpaperEnable:Z

.field private mWallpaperContent:Ljava/lang/String;

.field private mWallpaperIcon:Landroid/widget/ImageView;

.field private mWallpaperTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mOccludedStateChagne:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->updateWallpaperInfo()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mLockscreenPosterObserver:Landroid/database/ContentObserver;

    .line 165
    new-instance v0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResetOccludedState:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResolver:Landroid/content/ContentResolver;

    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 64
    const-wide/16 v2, 0xc8

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mInstance:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mInstance:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    .line 72
    :cond_0
    sget-object v0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mInstance:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method private handleKeyguardNotOccluded()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-interface {v1}, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;->onKeyguardNotOccluded()V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private handleNotificationChange(Z)V
    .locals 2
    .param p1, "hasNotification"    # Z

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-interface {v1, p1}, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;->onNotificationChange(Z)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method private handleShowWallpaperText(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-interface {v1, p1}, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;->onShowWallpaperText(Z)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private handleWallpaperFunctionEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-interface {v1, p1}, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;->onWallpaperFunctionEnable(Z)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method private handleWallpaperTitleChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    invoke-interface {v1, p1, p2}, Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;->onWallpaperTextChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private resetOccludedState()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResetOccludedState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 162
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResetOccludedState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method private updateWallpaperInfo()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResolver:Landroid/content/ContentResolver;

    .line 124
    const-string/jumbo v3, "SHOW_LOCK_SCREEN_POSTER_ICON"

    .line 123
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mStartWallpaperEnable:Z

    .line 125
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mStartWallpaperEnable:Z

    invoke-direct {p0, v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperFunctionEnable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->updateWallpaperIconVisibility()V

    .line 128
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResolver:Landroid/content/ContentResolver;

    .line 129
    const-string/jumbo v3, "is_allow_show_text_in_lockscreen"

    .line 128
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mShowWallpaperText:Z

    .line 131
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mShowWallpaperText:Z

    invoke-direct {p0, v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->handleShowWallpaperText(Z)V

    .line 133
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResolver:Landroid/content/ContentResolver;

    .line 134
    const-string/jumbo v1, "lockscreen_poster_title"

    .line 133
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperTitle:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mResolver:Landroid/content/ContentResolver;

    .line 136
    const-string/jumbo v1, "lockscreen_poster_description"

    .line 135
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperContent:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperContent:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTitleChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 128
    goto :goto_1
.end method


# virtual methods
.method public isInWallpaperArea(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 102
    const/16 v0, 0x32

    invoke-virtual {p0, p1, p2, v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->isInWallpaperArea(FFI)Z

    move-result v0

    return v0
.end method

.method public isInWallpaperArea(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchSlop"    # I

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    add-int/2addr v1, p3

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    add-int/2addr v1, p3

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 107
    :cond_0
    return v0

    .line 112
    :cond_1
    return v0
.end method

.method public isOccludeStateChagne()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mOccludedStateChagne:Z

    return v0
.end method

.method public onKeyguardOccludedChange(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mOccludedStateChagne:Z

    .line 153
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->resetOccludedState()V

    .line 154
    if-nez p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->handleKeyguardNotOccluded()V

    .line 149
    :cond_0
    return-void
.end method

.method public onNotificationChange(Z)V
    .locals 0
    .param p1, "hasNotifications"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->handleNotificationChange(Z)V

    .line 145
    return-void
.end method

.method public registerKeyguardWallpaperCallback(Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    return-void
.end method

.method public removeKeyguardWallpaperCallback(Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public setWallpaperIcon(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    .line 141
    return-void
.end method

.method public startWallpaperActivity()V
    .locals 9

    .prologue
    .line 78
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.meizu.customizecenter.LockScreenPosterActivity"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    .line 80
    .local v0, "color":I
    const-string/jumbo v4, "TEXT_COLOR"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v4, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 82
    const/16 v5, 0x10

    .line 81
    invoke-virtual {v4, v5}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 83
    iget-object v4, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 84
    const/16 v5, 0x80

    .line 83
    invoke-virtual {v4, v5}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 85
    iget-object v4, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 86
    const/16 v5, 0x20

    .line 85
    invoke-virtual {v4, v5}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 87
    const/high16 v4, 0x10800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v4, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 91
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const-string/jumbo v6, "com.meizu.customizecenter"

    .line 93
    const v7, 0x7f050007

    const/4 v8, -0x1

    .line 91
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "color":I
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 95
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateWallpaperIconVisibility()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mStartWallpaperEnable:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
