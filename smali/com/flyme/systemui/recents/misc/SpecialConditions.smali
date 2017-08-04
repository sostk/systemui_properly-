.class public Lcom/flyme/systemui/recents/misc/SpecialConditions;
.super Ljava/lang/Object;
.source "SpecialConditions.java"


# static fields
.field private static final sHideHeadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/systemui/recents/misc/SpecialConditions;->sHideHeadList:Ljava/util/List;

    .line 19
    sget-object v0, Lcom/flyme/systemui/recents/misc/SpecialConditions;->sHideHeadList:Ljava/util/List;

    const-string/jumbo v1, "com.meizu.flyme.easylauncher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/flyme/systemui/recents/misc/SpecialConditions;->sHideHeadList:Ljava/util/List;

    const-string/jumbo v1, "com.flyme.systemuitools"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public static isAvoidRecent(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5
    .param p0, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    return v3

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 37
    .local v0, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.meizu.app.AccessApplication"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    return v4

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone.EmergencyDialer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 43
    return v4

    .line 45
    :cond_2
    return v3
.end method

.method public static isHideTaskviewHead(Lcom/flyme/systemui/recents/model/Task;)Z
    .locals 3
    .param p0, "t"    # Lcom/flyme/systemui/recents/model/Task;

    .prologue
    .line 25
    :try_start_0
    sget-object v1, Lcom/flyme/systemui/recents/misc/SpecialConditions;->sHideHeadList:Ljava/util/List;

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v1, 0x0

    return v1
.end method

.method public static onSpecialActivityEnter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    const-string/jumbo v0, "com.meizu.media.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->level_scale_running_scapture:I

    .line 60
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.ACTION_ENTER_SYSTEMUI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->level_scale_running_scapture:I

    goto :goto_0
.end method

.method public static onSpecialActivityQuit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.ACTION_QUIT_SYSTEMUI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
