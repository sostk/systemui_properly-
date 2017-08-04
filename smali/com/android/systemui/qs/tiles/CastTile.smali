.class public Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CastTile$Callback;,
        Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAST_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->refreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    sput-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 46
    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    .line 50
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getCastController()Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 51
    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .line 52
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 48
    return-void
.end method

.method private getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .prologue
    .line 125
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    .line 87
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 94
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v7, 0x7f090231

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 95
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 96
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->autoMirrorDrawable:Z

    .line 97
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    .line 98
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "connecting":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 100
    .local v1, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v4, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 101
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 102
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_1

    .end local v0    # "connecting":Z
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    .end local v3    # "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    :cond_1
    move v4, v6

    .line 93
    goto :goto_0

    .line 103
    .restart local v0    # "connecting":Z
    .restart local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .restart local v2    # "device$iterator":Ljava/util/Iterator;
    .restart local v3    # "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    :cond_2
    iget v4, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v4, v6, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_3
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 108
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v5, 0x7f09023e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 110
    :cond_4
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0200db

    :goto_2
    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 112
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-static {v4, v3}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V

    .line 92
    return-void

    .line 111
    :cond_5
    const v4, 0x7f0200da

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setCurrentUserId(I)V

    .line 80
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 66
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
