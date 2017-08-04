.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V
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
    .line 3003
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get25(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 3005
    :cond_0
    return-void
.end method
