.class Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$5;
.super Ljava/lang/Object;
.source "NotificationFilterPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$5;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 120
    const-string/jumbo v2, "com.android.settings.SubSettings"

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, ":settings:show_fragment"

    .line 122
    const-string/jumbo v2, "com.android.settings.notification.NotificationAppList"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$5;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->-get2(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V

    .line 125
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$5;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->-get1(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectNotificationInboxSetting(Landroid/content/Context;)V

    .line 117
    return-void
.end method
