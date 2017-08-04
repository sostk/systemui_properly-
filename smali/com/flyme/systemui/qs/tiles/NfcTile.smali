.class public Lcom/flyme/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/NfcTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

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


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/NfcTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/NfcTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 22
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204fd

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 21
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 24
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204fc

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 23
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 84
    new-instance v0, Lcom/flyme/systemui/qs/tiles/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/NfcTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNfcController()Lcom/flyme/systemui/statusbar/policy/NfcController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "NfcShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    if-nez v1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 57
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/NfcController;->setNfcEnabled(Z)V

    .line 54
    return-void

    .line 56
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    if-nez v5, :cond_0

    return-void

    .line 70
    :cond_0
    if-eqz p2, :cond_1

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v4, v5, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 71
    :goto_0
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v0, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 73
    .local v0, "enabled":Z
    :goto_1
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    invoke-interface {v5}, Lcom/flyme/systemui/statusbar/policy/NfcController;->isNfcTurningOn()Z

    move-result v3

    .line 74
    .local v3, "turningOn":Z
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->intermediate:Z

    .line 75
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 76
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 78
    const v2, 0x7f09008c

    .line 79
    .local v2, "label":I
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const v6, 0x7f09008c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 80
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 81
    .local v1, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_2
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 68
    return-void

    .line 70
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v2    # "label":I
    .end local v3    # "turningOn":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .local v4, "userInitiated":Z
    goto :goto_0

    .line 72
    .end local v4    # "userInitiated":Z
    :cond_2
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    invoke-interface {v5}, Lcom/flyme/systemui/statusbar/policy/NfcController;->isNfcEnabled()Z

    move-result v0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 80
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v2    # "label":I
    .restart local v3    # "turningOn":Z
    :cond_3
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v1    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NfcController;->addNfcControllerCallback(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V

    .line 44
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mController:Lcom/flyme/systemui/statusbar/policy/NfcController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/NfcController;->removeNfcControllerCallback(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V

    goto :goto_0
.end method
