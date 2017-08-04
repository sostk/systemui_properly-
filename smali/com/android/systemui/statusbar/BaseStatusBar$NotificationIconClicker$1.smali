.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z

    .prologue
    .line 3199
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->val$afterKeyguardGone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3201
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3206
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 3208
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->val$keyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->val$afterKeyguardGone:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;ZZ)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1$1;->start()V

    .line 3257
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v2, 0x2

    .line 3258
    const/4 v3, 0x1

    .line 3257
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 3259
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 3261
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationIconClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    :cond_1
    return v0
.end method
