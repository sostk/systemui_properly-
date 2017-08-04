.class public Lcom/flyme/systemui/smarttouch/Simulate;
.super Ljava/lang/Object;
.source "Simulate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static back(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 33
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "simulate back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/flyme/systemui/smarttouch/Simulate$1;

    invoke-direct {v0}, Lcom/flyme/systemui/smarttouch/Simulate$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    const-string/jumbo v0, "back"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static expandNotifications(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/Simulate;->expandNotificationsPanel(Landroid/content/Context;)V

    .line 50
    const-string/jumbo v0, "expand_statusbar"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private static expandNotificationsPanel(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "statusbar":Ljava/lang/Object;
    :try_start_0
    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/Simulate;->getExpandNotificationsPanelMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static expandTask(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 102
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "simulate expand recenttask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.recents.TOGGLE_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 104
    const-string/jumbo v0, "expand_task"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private static getExpandNotificationsPanelMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 63
    sget-object v1, Lcom/flyme/systemui/smarttouch/Simulate;->mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "expandNotificationsPanel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/flyme/systemui/smarttouch/Simulate;->mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    sget-object v1, Lcom/flyme/systemui/smarttouch/Simulate;->mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static killTask(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 108
    const-string/jumbo v5, "SmartTouch"

    const-string/jumbo v6, "simulate kill current task"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 111
    const/4 v6, 0x1

    .line 110
    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 112
    const/4 v6, 0x0

    .line 110
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v6, "android.intent.category.HOME"

    .line 113
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 113
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 116
    .local v3, "homeInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "currentPackageName":Ljava/lang/String;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "currentClassName":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 120
    if-eqz v5, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 125
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 126
    invoke-static {}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/flyme/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flyme/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 127
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 126
    invoke-virtual {v5, p0, v6, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskById(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "currentClassName":Ljava/lang/String;
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v3    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    const-string/jumbo v5, "kill_task"

    invoke-static {p0, v5}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void

    .line 129
    .restart local v0    # "currentClassName":Ljava/lang/String;
    .restart local v1    # "currentPackageName":Ljava/lang/String;
    .restart local v3    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v5, p0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    .line 130
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 129
    invoke-virtual {v5, p0, v6, v1}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->removeTaskById(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    .end local v0    # "currentClassName":Ljava/lang/String;
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v3    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static lockNow(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    const-string/jumbo v2, "SmartTouch"

    const-string/jumbo v3, "simulate lock screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 94
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 95
    const-string/jumbo v2, "lock"

    invoke-static {p0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static menu(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 139
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "simulate menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lcom/flyme/systemui/smarttouch/Simulate$2;

    invoke-direct {v0}, Lcom/flyme/systemui/smarttouch/Simulate$2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    const-string/jumbo v0, "menu"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static toHome(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 74
    const-string/jumbo v2, "SmartTouch"

    const-string/jumbo v3, "simulate launche home"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "it":Landroid/content/Intent;
    const v2, 0x10104000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const v2, 0x7f0500a1

    const v3, 0x7f0500a2

    :try_start_0
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 83
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 81
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const-string/jumbo v2, "tohome"

    invoke-static {p0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
