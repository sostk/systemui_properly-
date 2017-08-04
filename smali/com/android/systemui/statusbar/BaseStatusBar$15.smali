.class Lcom/android/systemui/statusbar/BaseStatusBar$15;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->updateFakeVetoButton(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$fakePkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$fakePkg"    # Ljava/lang/String;

    .prologue
    .line 3531
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->val$fakePkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v1

    .line 3537
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->val$fakePkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 3538
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->val$fakePkg:Ljava/lang/String;

    const-string/jumbo v2, "com.android.dialer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3539
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 3540
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string/jumbo v2, "com.android.server.telecom"

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 3547
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$15;->val$fakePkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->clearRealNotisBehindFake(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3532
    return-void

    .line 3536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
