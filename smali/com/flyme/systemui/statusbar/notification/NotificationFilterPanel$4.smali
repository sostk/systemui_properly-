.class Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$4;
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
    .line 108
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$4;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$4;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->closeNotificationFilterPanel(Z)V

    .line 110
    return-void
.end method
