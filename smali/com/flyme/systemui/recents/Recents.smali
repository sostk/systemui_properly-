.class public Lcom/flyme/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# static fields
.field static sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

.field private static sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field mBootCompleted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/Recents;->mBootCompleted:Z

    .line 15
    return-void
.end method

.method public static disableAnimationScale()V
    .locals 0

    .prologue
    .line 151
    invoke-static {}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->disableAnimationScale()V

    .line 150
    return-void
.end method

.method public static getRecentsComponent(Landroid/content/Context;Z)Lcom/flyme/systemui/recents/FlymeRecents;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInitialize"    # Z

    .prologue
    .line 31
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onStart()V

    .line 35
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onBootCompleted()V

    .line 38
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    return-object v0
.end method

.method public static getSystemServices()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static isRecentsShow()Z
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->isRecentsShow()Z

    move-result v0

    goto :goto_0
.end method

.method public static onKeyguardChange(Z)V
    .locals 1
    .param p0, "isShow"    # Z

    .prologue
    .line 137
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/recents/FlymeRecents;->onKeyguardChange(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public static onStatusBarColorChange(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 143
    sput p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sStatusBarColor:I

    .line 142
    return-void
.end method

.method public static onStatusBarVisibleChange(Z)V
    .locals 0
    .param p0, "showing"    # Z

    .prologue
    .line 147
    sput-boolean p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->sStatusBarVisible:Z

    .line 146
    return-void
.end method

.method public static onTrimMemory(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-static {p0}, Lcom/flyme/systemui/recents/FlymeRecents;->onTrimMemory(I)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onCancelPreloadingRecents()V

    .line 92
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 71
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0, p1, p2}, Lcom/flyme/systemui/recents/FlymeRecents;->onHideRecents(ZZ)V

    .line 70
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onBootCompleted()V

    .line 61
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/Recents;->mBootCompleted:Z

    .line 57
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 83
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/FlymeRecents;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    return-void
.end method

.method public preloadRecents()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onPreloadRecents()V

    .line 87
    return-void
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 108
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/FlymeRecents;->setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 107
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onShowNextAffiliatedTask()V

    .line 97
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onShowPrevAffiliatedTask()V

    .line 102
    return-void
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 66
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/FlymeRecents;->onShowRecents(Z)V

    .line 65
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/recents/Recents;->sSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 48
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/Recents;->getRecentsComponent(Landroid/content/Context;Z)Lcom/flyme/systemui/recents/FlymeRecents;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    .line 51
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onStart()V

    .line 53
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/flyme/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 77
    sget-object v0, Lcom/flyme/systemui/recents/Recents;->sAlternateRecents:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onToggleRecents()V

    .line 78
    return-void
.end method
