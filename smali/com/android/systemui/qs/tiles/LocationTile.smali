.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/QSTile;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/LocationTile$Callback;
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


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 35
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204f7

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 34
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 37
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204f6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 43
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    .line 47
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 48
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 45
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "GpsShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 75
    .local v0, "wasEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    .line 76
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 73
    return-void

    :cond_0
    move v1, v2

    .line 75
    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 83
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.connectivitysettings"

    const-string/jumbo v3, "com.meizu.connectivitysettings.Settings$MzLocationSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f090222

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v0

    .line 96
    .local v0, "locationEnabled":Z
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 98
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    .line 103
    const v2, 0x7f0901ef

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 110
    :goto_0
    const-string/jumbo v1, "LocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state.contentDescription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " locationEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 106
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    .line 108
    const v2, 0x7f0901ee

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 62
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->removeSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
