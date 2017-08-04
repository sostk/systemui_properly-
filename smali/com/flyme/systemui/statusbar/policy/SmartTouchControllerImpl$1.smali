.class Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "SmartTouchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 39
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 40
    const-string/jumbo v3, "mz_smart_touch_switch"

    .line 41
    const/4 v4, -0x2

    .line 39
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Z)Z

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)V

    .line 37
    return-void
.end method
