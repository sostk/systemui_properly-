.class Lcom/android/systemui/statusbar/BaseStatusBar$14;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->inflateFakeViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$fakeNotiSource:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$fakeNotiSource"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3346
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->val$fakeNotiSource:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3351
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->val$fakeNotiSource:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mClickedFakeNotiPackageName:Ljava/lang/String;

    .line 3352
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->val$fakeNotiSource:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3353
    .local v2, "tempPkg":Ljava/lang/String;
    const-string/jumbo v3, "com.android.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.android.server.telecom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3354
    :cond_0
    const-string/jumbo v2, "com.android.dialer"

    .line 3356
    :cond_1
    move-object v1, v2

    .line 3361
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 3368
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 3371
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3375
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$14;Ljava/lang/String;)V

    .line 3392
    const-wide/16 v6, 0x12c

    .line 3375
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3349
    return-void

    .line 3372
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
