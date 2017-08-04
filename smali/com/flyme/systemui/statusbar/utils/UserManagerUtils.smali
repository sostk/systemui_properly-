.class public Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;
.super Ljava/lang/Object;
.source "UserManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGuestUser()Z
    .locals 4

    .prologue
    .line 17
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 22
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    return v2

    .line 18
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 19
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "UserManagerUtil"

    const-string/jumbo v3, "failed to determine current user."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v2, 0x0

    return v2
.end method
