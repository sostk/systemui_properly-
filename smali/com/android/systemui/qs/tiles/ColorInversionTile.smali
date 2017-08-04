.class public Lcom/android/systemui/qs/tiles/ColorInversionTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
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

.field private mListening:Z

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mListening:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Lcom/android/systemui/qs/UsageTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/ColorInversionTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 30
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020079

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 32
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020077

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 41
    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    .line 42
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 41
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;-><init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 53
    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    .line 54
    const v3, 0x7f100058

    .line 53
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->isRecentlyUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 38
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->trackUsage()V

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    .line 119
    const v1, 0x7f0901fb

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    .line 122
    const v1, 0x7f0901fa

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 86
    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 63
    return-void
.end method

.method protected handleLongClick()V
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-object v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 95
    const v1, 0x7f0902a0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    new-instance v2, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;-><init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/UsageTracker;->showResetConfirmation(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 107
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    .local v1, "value":I
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 109
    .local v0, "enabled":Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v2}, Lcom/android/systemui/qs/UsageTracker;->isRecentlyUsed()Z

    move-result v2

    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 110
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v3, 0x7f090238

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 112
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_3
    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 106
    return-void

    .line 107
    .end local v0    # "enabled":Z
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    .restart local v1    # "value":I
    goto :goto_0

    .line 108
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 109
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mListening:Z

    .line 75
    return-void
.end method
