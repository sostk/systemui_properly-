.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RotationLockTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/RotationLockTile$1;
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
.field private final mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
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
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const v2, 0x7f0204ff

    const v1, 0x7f0204fe

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 32
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 34
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 37
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 39
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 38
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 145
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 46
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 44
    return-void
.end method

.method private getAccessibilityString(ZIII)Ljava/lang/String;
    .locals 4
    .param p1, "locked"    # Z
    .param p2, "idWhenPortrait"    # I
    .param p3, "idWhenLandscape"    # I
    .param p4, "idWhenOff"    # I

    .prologue
    .line 127
    if-eqz p1, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 129
    const/4 v3, 0x2

    .line 128
    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 130
    .local v0, "portrait":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p2

    .line 134
    .end local v0    # "portrait":Z
    .local v1, "stringID":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 128
    .end local v1    # "stringID":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "portrait":Z
    goto :goto_0

    .line 130
    :cond_1
    move v1, p3

    .restart local v1    # "stringID":I
    goto :goto_1

    .line 132
    .end local v0    # "portrait":Z
    .end local v1    # "stringID":I
    :cond_2
    move v1, p4

    .restart local v1    # "stringID":I
    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 140
    const v1, 0x7f090213

    .line 141
    const v2, 0x7f090212

    .line 142
    const v3, 0x7f090211

    .line 139
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(ZIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "RotationShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 72
    .local v0, "newState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 69
    return-void

    .line 71
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 81
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f090092

    .line 87
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v4, :cond_0

    return-void

    .line 88
    :cond_0
    if-eqz p2, :cond_2

    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 90
    :goto_0
    if-eqz p2, :cond_3

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    .end local p2    # "arg":Ljava/lang/Object;
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 91
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLockAffordanceVisible()Z

    move-result v4

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 92
    if-eqz v2, :cond_4

    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 93
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 94
    const/4 v5, 0x2

    .line 93
    if-eq v4, v5, :cond_5

    const/4 v1, 0x1

    .line 96
    .local v1, "portrait":Z
    :goto_3
    if-eqz v2, :cond_7

    .line 100
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 102
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 107
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 108
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 110
    const v4, 0x7f090210

    .line 111
    const v5, 0x7f09020f

    .line 112
    const v6, 0x7f09020e

    .line 109
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(ZIII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 86
    return-void

    .line 88
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    .end local v1    # "portrait":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    .local v2, "rotationLocked":Z
    goto :goto_0

    .line 89
    .end local v2    # "rotationLocked":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v2

    .local v2, "rotationLocked":Z
    goto :goto_0

    .line 90
    .end local v2    # "rotationLocked":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "userInitiated":Z
    goto :goto_1

    .line 92
    .end local v3    # "userInitiated":Z
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 93
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "portrait":Z
    goto :goto_3

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_4

    .line 104
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 105
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_4

    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$BooleanState;>.AnimationIcon;"
    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    .line 59
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0
.end method
