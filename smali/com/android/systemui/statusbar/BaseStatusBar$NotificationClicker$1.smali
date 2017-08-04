.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$afterKeyguardGone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2130
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2135
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    .line 2137
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$keyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$afterKeyguardGone:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;ZZ)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->start()V

    .line 2189
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v2, 0x2

    .line 2190
    const/4 v3, 0x1

    .line 2189
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 2191
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 2193
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    :cond_1
    return v0
.end method
