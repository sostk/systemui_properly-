.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartTouchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchComponent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

.field final synthetic val$fsdUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
    .param p2, "val$fsdUri"    # Landroid/net/Uri;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->val$fsdUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x2

    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 65
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-set2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->val$fsdUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_smart_touch_switch"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-set0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-set1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z

    .line 71
    const-string/jumbo v0, "flag_change_SmartTouch"

    const-string/jumbo v1, "re init for USER_SWITCHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-wrap0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get1(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onUpdateViews(Z)V

    .line 62
    return-void
.end method
