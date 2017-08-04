.class Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$2;
.super Landroid/database/ContentObserver;
.source "NotificationReplyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$2;->this$0:Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager$2;->this$0:Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;

    invoke-static {v0}, Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;->-wrap0(Lcom/flyme/systemui/extensions/notificationreply/NotificationReplyManager;)V

    .line 52
    return-void
.end method
