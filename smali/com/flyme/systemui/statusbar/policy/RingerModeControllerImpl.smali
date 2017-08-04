.class public final Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
.super Ljava/lang/Object;
.source "RingerModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/RingerModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;,
        Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mIsMuteOn:Z

.field private mIsVibrateOn:Z

.field private mRingerMode:I

.field mRingerModeFilter:Landroid/content/IntentFilter;

.field private final mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateOnObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    .line 37
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mVibrateOnObserver:Landroid/database/ContentObserver;

    .line 49
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeFilter:Landroid/content/IntentFilter;

    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->setListening(Z)V

    .line 59
    return-void
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 144
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .line 145
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    goto :goto_0

    .line 143
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->isVibrateOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;->onVibrateOnChanged(Z)V

    .line 151
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;->onRingerModeChanged(I)V

    .line 152
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->isMuteOn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->isVibrateOn()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;->onSettingsChanged(ZZ)V

    .line 149
    return-void
.end method

.method private updateRingerModeInternal()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 156
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 157
    .local v0, "am":Landroid/media/AudioManager;
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    const-string/jumbo v2, "vibrate_when_ringing"

    .line 158
    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 160
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 155
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "vibrate_when_ringing"

    .line 166
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 168
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0
.end method


# virtual methods
.method public addRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    .line 67
    return-void
.end method

.method public isMuteOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 111
    const/4 v4, -0x2

    .line 109
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    .line 112
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    .line 113
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    return v0

    :cond_2
    move v0, v2

    .line 109
    goto :goto_0
.end method

.method public isVibrateOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 92
    const/4 v4, -0x2

    .line 90
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    .line 93
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    .line 94
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    return v0

    :cond_2
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method public removeRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "vibrateOnUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mVibrateOnObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    .end local v0    # "vibrateOnUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mVibrateOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setMuteOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    .line 122
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->updateRingerModeInternal()V

    .line 119
    return-void
.end method

.method public setVibrateOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    .line 103
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->updateRingerModeInternal()V

    .line 100
    return-void
.end method
