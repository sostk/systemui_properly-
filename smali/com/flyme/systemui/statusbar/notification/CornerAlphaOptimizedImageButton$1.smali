.class Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;
.super Ljava/lang/Object;
.source "CornerAlphaOptimizedImageButton.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification()V
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
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;->this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "t1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    .line 205
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    .line 203
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "t1"    # Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "t":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p2    # "t1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;->compare(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v0

    return v0
.end method
