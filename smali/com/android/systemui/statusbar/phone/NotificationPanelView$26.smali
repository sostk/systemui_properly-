.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionMax()V
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
    .line 3322
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get20(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FZ)V

    .line 3324
    :goto_0
    return-void

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
