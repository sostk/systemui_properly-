.class Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;
.super Landroid/database/ContentObserver;
.source "FlymeNotificationManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->-wrap0(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;)V

    .line 72
    return-void
.end method
