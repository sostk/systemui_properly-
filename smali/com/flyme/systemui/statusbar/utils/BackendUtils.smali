.class public Lcom/flyme/systemui/statusbar/utils/BackendUtils;
.super Ljava/lang/Object;
.source "BackendUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "Backend"

    sput-object v0, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHighPriority(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    :try_start_0
    sget-object v2, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p0, p1}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    return v1
.end method

.method public static getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 31
    :try_start_0
    sget-object v3, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, p0, p1}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    return v2
.end method

.method public static getPackageRemindEnable(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 99
    :try_start_0
    new-instance v1, Landroid/app/FlymeExtINotificationManagerProxy;

    invoke-direct {v1}, Landroid/app/FlymeExtINotificationManagerProxy;-><init>()V

    sget-object v2, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1}, Landroid/app/FlymeExtINotificationManagerProxy;->getPackageRemindEnable(Landroid/os/IBinder;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v1, 0x0

    return v1
.end method

.method public static setHighPriority(Ljava/lang/String;IZ)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "highPriority"    # Z

    .prologue
    const/4 v2, 0x0

    .line 50
    :try_start_0
    sget-object v3, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    .line 51
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    .line 50
    :goto_0
    invoke-interface {v3, p0, p1, v1}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    return v1

    :cond_0
    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    return v2
.end method

.method public static setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "banned"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    :try_start_0
    sget-object v4, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, p0, p1, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return v3

    :cond_0
    move v1, v3

    .line 21
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    return v2
.end method

.method public static setPackageRemindEnable(Ljava/lang/String;IZ)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Landroid/app/FlymeExtINotificationManagerProxy;

    invoke-direct {v1}, Landroid/app/FlymeExtINotificationManagerProxy;-><init>()V

    sget-object v2, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1, p2}, Landroid/app/FlymeExtINotificationManagerProxy;->setPackageRemindEnable(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/BackendUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
