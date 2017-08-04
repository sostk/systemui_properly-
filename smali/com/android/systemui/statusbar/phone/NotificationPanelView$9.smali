.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 2854
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 2859
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    .line 2856
    return-void

    .line 2859
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get21(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method
