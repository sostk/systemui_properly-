.class public Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
.super Ljava/lang/Object;
.source "GameModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/GameModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;,
        Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;
    }
.end annotation


# instance fields
.field private ACTION_SCENE_CHANGED:Ljava/lang/String;

.field private SCENE_GAME:Ljava/lang/String;

.field private final mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGameMode:Z

.field private mGameModeDNDEnable:Z

.field private mGameModeDNDObserver:Landroid/database/ContentObserver;

.field private mGameModeReceiverRegister:Z


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->SCENE_GAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->notifyGameModeChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->notifyGameModeDNDChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    .line 28
    const-string/jumbo v0, "SCENE_CHANGED"

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "game"

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->SCENE_GAME:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    .line 31
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 38
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;

    .line 39
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->ACTION_SCENE_CHANGED:Ljava/lang/String;

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .line 124
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 124
    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDObserver:Landroid/database/ContentObserver;

    .line 34
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 33
    return-void
.end method

.method private notifyGameModeChanged(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 103
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    if-eq v2, p1, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    .line 105
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    .line 106
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    invoke-interface {v0, v2}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeChanged(Z)V

    goto :goto_0

    .line 102
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private notifyGameModeDNDChanged(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 112
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    if-eq v2, p1, :cond_0

    .line 113
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    .line 114
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    .line 115
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    invoke-interface {v0, v2}, Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;->onGameModeDNDChanged(Z)V

    goto :goto_0

    .line 111
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private registerAlphaMeReceiver()V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 148
    :cond_0
    return-void
.end method

.method private registerSettingsObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "mz_game_mode_dnd"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    return-void
.end method

.method private unRegisterAlphaMeReceiver()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mAlphaReceiver:Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;->unregisterActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeReceiverRegister:Z

    .line 155
    :cond_0
    return-void
.end method

.method private unRegisterSettingsObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDObserver:Landroid/database/ContentObserver;

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    return-void
.end method


# virtual methods
.method public isDNDEnableAndInGameMode()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGameMode()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameMode:Z

    return v0
.end method

.method public isGameModeDNDEnable()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mGameModeDNDEnable:Z

    return v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->registerSettingsObserver(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->registerAlphaMeReceiver()V

    .line 92
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->unRegisterSettingsObserver(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->unRegisterAlphaMeReceiver()V

    goto :goto_0
.end method
