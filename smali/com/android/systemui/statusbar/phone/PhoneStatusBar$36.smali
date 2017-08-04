.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenRecordChanged(Z)V
    .locals 3
    .param p1, "readying"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsTilesEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get44(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get44(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get40(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get44(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get40(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap8(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 1167
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    goto :goto_0
.end method
