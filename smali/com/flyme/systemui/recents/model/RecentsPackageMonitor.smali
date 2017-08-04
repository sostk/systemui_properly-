.class public Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

.field mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    if-nez v1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 88
    .local v0, "eventUserId":I
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    invoke-interface {v1, p0, p1, v0}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;->onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    if-nez v1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 73
    .local v0, "eventUserId":I
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    invoke-interface {v1, p0, p1, v0}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;->onPackagesChanged(Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public register(Landroid/content/Context;Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 45
    iput-object p2, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    iput-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .line 64
    iput-object v1, p0, Lcom/flyme/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/flyme/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .line 57
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
