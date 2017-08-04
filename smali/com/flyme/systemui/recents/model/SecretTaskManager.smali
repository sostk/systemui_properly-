.class public Lcom/flyme/systemui/recents/model/SecretTaskManager;
.super Ljava/lang/Object;
.source "SecretTaskManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/model/SecretTaskManager$1;
    }
.end annotation


# static fields
.field public static final URI:Landroid/net/Uri;

.field private static mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;


# instance fields
.field private lastIsGuestMode:Z

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mPayAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mPayApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayAppsNotInitFlag:Z

.field private mSecretPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSharedPreferences_guest:Landroid/content/SharedPreferences;

.field private mUnSecretPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/model/SecretTaskManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/recents/model/SecretTaskManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->updatePayAppList(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "content://com.meizu.safe.alphame.provider/GameModeList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->URI:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayAppsNotInitFlag:Z

    .line 182
    new-instance v1, Lcom/flyme/systemui/recents/model/SecretTaskManager$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/model/SecretTaskManager$1;-><init>(Lcom/flyme/systemui/recents/model/SecretTaskManager;)V

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    const-string/jumbo v1, "recents_secret"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 46
    const-string/jumbo v1, "recents_secret_guest"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    .line 47
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "packageList"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    .line 48
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "packageList_unsecret"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    .line 49
    const-string/jumbo v1, "recents_secret_alphame"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "packageList"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    .line 50
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->lastIsGuestMode:Z

    .line 51
    const-string/jumbo v1, "access_control"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/security/AccessControlManager;

    iput-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.meizu.safe.alphame.pure.UPDATE_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public static getAndCreateManager(Landroid/content/Context;)Lcom/flyme/systemui/recents/model/SecretTaskManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    return-object v0
.end method

.method public static getManager()Lcom/flyme/systemui/recents/model/SecretTaskManager;
    .locals 5

    .prologue
    .line 73
    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->isGuestMode()Z

    move-result v0

    .line 74
    .local v0, "b":Z
    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iget-boolean v1, v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->lastIsGuestMode:Z

    if-eq v0, v1, :cond_0

    .line 75
    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iput-boolean v0, v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->lastIsGuestMode:Z

    .line 76
    if-eqz v0, :cond_1

    .line 77
    sget-object v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    .line 78
    sget-object v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList_unsecret"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    .line 84
    :cond_0
    :goto_0
    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    return-object v1

    .line 80
    :cond_1
    sget-object v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    .line 81
    sget-object v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    sget-object v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretTaskManager:Lcom/flyme/systemui/recents/model/SecretTaskManager;

    iget-object v1, v1, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "packageList_unsecret"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v2, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    goto :goto_0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x1

    return v2

    .line 139
    .restart local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private save()V
    .locals 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->lastIsGuestMode:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences_guest:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList_unsecret"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "packageList_unsecret"

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updatePayAppList(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/recents/model/SecretTaskManager$2;-><init>(Lcom/flyme/systemui/recents/model/SecretTaskManager;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method


# virtual methods
.method public isSecretivePkg(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return v2

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    return v3

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    .line 96
    return v2

    :cond_2
    monitor-exit v1

    .line 100
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 101
    return v2

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :cond_3
    return v3
.end method

.method public keepSecretPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->save()V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public unKeepSecretPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mUnSecretPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->save()V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public updatePayAppListIfneed(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayAppsNotInitFlag:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/SecretTaskManager;->mPayAppsNotInitFlag:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/flyme/systemui/recents/model/SecretTaskManager;->updatePayAppList(Landroid/content/Context;)V

    .line 58
    :cond_0
    return-void
.end method
