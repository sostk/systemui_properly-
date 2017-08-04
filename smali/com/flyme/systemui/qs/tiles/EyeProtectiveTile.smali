.class public Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;
.super Lcom/android/systemui/qs/QSTile;
.source "EyeProtectiveTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;
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
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

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
.method static synthetic -wrap0(Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->refreshState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 18
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204f1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 17
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 20
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0204f0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 19
    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 86
    new-instance v0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getEyeProtectiveController()Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    .line 24
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "EyeProtectiveShortCut"

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    if-nez v1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 53
    .local v0, "newState":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-interface {v1, v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->setEyeProtectiveEnabled(Z)V

    .line 50
    return-void

    .line 52
    .end local v0    # "newState":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newState":Z
    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 8

    .prologue
    .line 58
    const/4 v4, -0x1

    .line 59
    .local v4, "titleResId":I
    const-string/jumbo v2, "com.android.settings"

    .line 61
    .local v2, "packName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 62
    .local v3, "resources":Landroid/content/res/Resources;
    const-string/jumbo v5, "blue_light_reduction_title"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 70
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.SubSettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:show_fragment"

    const-string/jumbo v6, "com.meizu.settings.display.BluelightReductionFragment"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v5, ":settings:show_fragment_as_shortcut"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object v5, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 57
    return-void

    .line 64
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->isEyeProtectiveSupported()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->isEyeProtectiveEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 83
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 78
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->addEyeProtectiveControllerCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    .line 40
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->removeEyeProtectiveControllerCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    goto :goto_0
.end method
