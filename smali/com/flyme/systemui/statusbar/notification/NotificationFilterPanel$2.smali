.class Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;
.super Ljava/lang/Object;
.source "NotificationFilterPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;
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
    .line 48
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->-wrap0(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    .line 51
    return-void
.end method
