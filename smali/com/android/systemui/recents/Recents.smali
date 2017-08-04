.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# instance fields
.field private final mRecents:Lcom/flyme/systemui/recents/Recents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 20
    new-instance v0, Lcom/flyme/systemui/recents/Recents;

    invoke-direct {v0}, Lcom/flyme/systemui/recents/Recents;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    .line 16
    return-void
.end method

.method public static disableAnimationScale()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/flyme/systemui/recents/Recents;->disableAnimationScale()V

    .line 119
    return-void
.end method

.method public static getRecentsComponent(Landroid/content/Context;Z)Lcom/flyme/systemui/recents/FlymeRecents;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInitialize"    # Z

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/flyme/systemui/recents/Recents;->getRecentsComponent(Landroid/content/Context;Z)Lcom/flyme/systemui/recents/FlymeRecents;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemServices()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/flyme/systemui/recents/Recents;->getSystemServices()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    return-object v0
.end method

.method public static isRecentsShow()Z
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/flyme/systemui/recents/Recents;->isRecentsShow()Z

    move-result v0

    return v0
.end method

.method public static onKeyguardChange(Z)V
    .locals 0
    .param p0, "isShow"    # Z

    .prologue
    .line 108
    invoke-static {p0}, Lcom/flyme/systemui/recents/Recents;->onKeyguardChange(Z)V

    .line 107
    return-void
.end method

.method public static onStatusBarColorChange(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 112
    invoke-static {p0}, Lcom/flyme/systemui/recents/Recents;->onStatusBarColorChange(I)V

    .line 111
    return-void
.end method

.method public static onStatusBarVisibleChange(Z)V
    .locals 0
    .param p0, "showing"    # Z

    .prologue
    .line 116
    invoke-static {p0}, Lcom/flyme/systemui/recents/Recents;->onStatusBarVisibleChange(Z)V

    .line 115
    return-void
.end method

.method public static onTrimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/flyme/systemui/recents/Recents;->onTrimMemory(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/Recents;->cancelPreloadingRecents()V

    .line 72
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0, p1, p2}, Lcom/flyme/systemui/recents/Recents;->hideRecents(ZZ)V

    .line 52
    return-void
.end method

.method protected onBootCompleted()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/Recents;->onBootCompleted()V

    .line 42
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/Recents;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method public preloadRecents()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/Recents;->preloadRecents()V

    .line 67
    return-void
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/recents/Recents;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 87
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/Recents;->showNextAffiliatedTask()V

    .line 77
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/Recents;->showPrevAffiliatedTask()V

    .line 82
    return-void
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0, p1, p2}, Lcom/flyme/systemui/recents/Recents;->showRecents(ZLandroid/view/View;)V

    .line 47
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/flyme/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mComponents:Ljava/util/Map;

    iput-object v1, v0, Lcom/flyme/systemui/recents/Recents;->mComponents:Ljava/util/Map;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/Recents;->start()V

    .line 35
    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecents:Lcom/flyme/systemui/recents/Recents;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flyme/systemui/recents/Recents;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 57
    return-void
.end method
