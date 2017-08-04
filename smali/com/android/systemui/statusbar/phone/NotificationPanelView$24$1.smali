.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    .prologue
    .line 3008
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissOrShowSecurity()V

    .line 3014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get25(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get25(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onPause()V

    .line 3018
    :cond_0
    const-string/jumbo v0, "unlock runnable run "

    .line 3017
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 3011
    return-void
.end method
