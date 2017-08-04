.class Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$3;
.super Ljava/lang/Object;
.source "NotificationFilterPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setNumberView(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
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
    .line 75
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$3;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$3;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->openNotificationFilterPanel(Z)V

    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$3;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->-get1(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Landroid/content/Context;

    move-result-object v0

    .line 80
    check-cast p1, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getTotalNotificationCounts()I

    move-result v1

    .line 79
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collectNotificationInbox(Landroid/content/Context;I)V

    .line 77
    return-void
.end method
