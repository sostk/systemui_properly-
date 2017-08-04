.class Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;
.super Ljava/lang/Object;
.source "NotificationSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 4
    .param p1, "t1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "t2"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    .line 39
    .local v0, "lhs":I
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper;->getNotificationSystemFlag(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    .line 40
    .local v1, "rhs":I
    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "t1":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p2    # "t2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/statusbar/notification/NotificationSortHelper$1;->compare(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v0

    return v0
.end method
