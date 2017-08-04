.class public Lcom/flyme/systemui/recents/model/LockTaskManager;
.super Ljava/lang/Object;
.source "LockTaskManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;


# instance fields
.field private lastIsGuestMode:Z

.field private mLockedPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedPackageTemp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSharedPreferences_guest:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "recents_lock"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    const-string/jumbo v0, "recents_lock_guest"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    .line 34
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "packageList"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "packageList_temp"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mResolver:Landroid/content/ContentResolver;

    .line 37
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->lastIsGuestMode:Z

    .line 31
    return-void
.end method

.method public static getAndCreateManager(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/LockTaskManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/flyme/systemui/recents/model/LockTaskManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/model/LockTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    return-object v0
.end method

.method public static getManager()Lcom/flyme/systemui/recents/model/LockTaskManager;
    .locals 5

    .prologue
    .line 48
    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/model/LockTaskManager;->isGuestMode()Z

    move-result v0

    .line 49
    .local v0, "b":Z
    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->lastIsGuestMode:Z

    if-eq v0, v1, :cond_0

    .line 50
    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    iput-boolean v0, v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->lastIsGuestMode:Z

    .line 51
    if-eqz v0, :cond_1

    .line 52
    sget-object v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    .line 53
    sget-object v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList_temp"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    .line 59
    :cond_0
    :goto_0
    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    return-object v1

    .line 55
    :cond_1
    sget-object v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    .line 56
    sget-object v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockTaskManager:Lcom/flyme/systemui/recents/model/LockTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList_temp"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    goto :goto_0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const/4 v2, 0x1

    return v2

    .line 121
    .restart local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private save()V
    .locals 4

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->lastIsGuestMode:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList_temp"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "recent_lock_apps"

    .line 114
    iget-object v2, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/flyme/systemui/recents/model/LockTaskManager;->translateToRecord(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    .line 113
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 107
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList_temp"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method static translateToRecord(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "mLockedPackage":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    .local v0, "isLock":Z
    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    :cond_0
    return v0
.end method

.method public lockApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->save()V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public lockAppTemp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->save()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public unlockAllApp()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 103
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->save()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public unlockApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->save()V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public unlockAppTemp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/LockTaskManager;->mLockedPackageTemp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/LockTaskManager;->save()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
