.class public Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationIconClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field private mIsHeadsUp:Z

.field private final mNotificationKey:Ljava/lang/String;

.field private final mSbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mIsHeadsUp:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "notificationKey"    # Ljava/lang/String;
    .param p4, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p5, "forHun"    # Z

    .prologue
    .line 3181
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3182
    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mIntent:Landroid/app/PendingIntent;

    .line 3183
    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mNotificationKey:Ljava/lang/String;

    .line 3184
    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 3185
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mIsHeadsUp:Z

    .line 3181
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3190
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Clicked on content of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectNotificationClicked(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 3195
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 3196
    .local v1, "keyguardShowing":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3197
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 3198
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 3197
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    .line 3199
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;ZZ)V

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 3188
    return-void

    .line 3196
    :cond_0
    const/4 v0, 0x0

    .local v0, "afterKeyguardGone":Z
    goto :goto_0
.end method
