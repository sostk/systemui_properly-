.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;


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
    .line 3028
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChange()V
    .locals 3

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/Context;Z)V

    .line 3031
    return-void
.end method
