.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 697
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 700
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 699
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 696
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 704
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set6(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J

    .line 714
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get36(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 715
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 716
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 717
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 718
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 719
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 721
    .local v7, "previouslyVisible":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get43(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v9

    iget-object v10, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v9

    and-int/lit8 v9, v9, 0x1d

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    .line 722
    .local v2, "currentlyVisible":Z
    :goto_1
    invoke-static {v5, v4, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 723
    .local v8, "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    if-eqz v2, :cond_0

    .line 725
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    .line 728
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 721
    .end local v2    # "currentlyVisible":Z
    .end local v8    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "currentlyVisible":Z
    goto :goto_1

    .line 731
    .end local v2    # "currentlyVisible":Z
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "previouslyVisible":Z
    :cond_3
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 732
    .local v6, "noLongerVisibleNotifications":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/statusbar/NotificationVisibility;>;"
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 733
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 735
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 736
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 735
    invoke-static {v9, v10, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 738
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V

    .line 739
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 741
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap22(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V

    .line 742
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 743
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 744
    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 703
    return-void
.end method
