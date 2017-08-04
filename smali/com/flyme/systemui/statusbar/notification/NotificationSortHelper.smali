.class public Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
.super Ljava/lang/Object;
.source "NotificationSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;
    }
.end annotation


# static fields
.field private static mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;


# instance fields
.field private mAppSystemFlags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private rowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->rowComparator:Ljava/util/Comparator;

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private getPackageSystemFlag(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "flag":I
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 55
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 56
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 57
    const/4 v2, 0x2

    .line 63
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mAppSystemFlags:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 60
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getSingle(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    .line 28
    :cond_0
    sget-object v0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->mSingle:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getPackageSystemFlag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
