.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;,
        Lcom/android/systemui/qs/tiles/HotspotTile$1;
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
.field private mAirplaneMode:Z

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

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

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 40
    new-instance v2, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v3, 0x7f0204f9

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 39
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 42
    new-instance v2, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v3, 0x7f0204f8

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 41
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 46
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 219
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 58
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    .line 59
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 60
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 63
    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v5, "airplane_mode_on"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 73
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Z

    .line 55
    return-void

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method private static newUsageTracker(Landroid/content/Context;)Lcom/android/systemui/qs/UsageTracker;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    const-class v1, Lcom/android/systemui/qs/tiles/HotspotTile;

    const v2, 0x7f100057

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 130
    .local v0, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 117
    return-void

    :cond_0
    move v1, v2

    .line 130
    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 78
    return-void
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 148
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.connectivitysettings"

    const-string/jumbo v3, "com.meizu.connectivitysettings.Settings$TetherSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabling()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->intermediate:Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 174
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 175
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 179
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 153
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-eqz v1, :cond_0

    return-void

    .line 95
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 96
    const/4 p1, 0x1

    .line 99
    .local p1, "listening":Z
    if-eqz p1, :cond_1

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 109
    if-eqz p1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 89
    :goto_1
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    goto :goto_1
.end method
