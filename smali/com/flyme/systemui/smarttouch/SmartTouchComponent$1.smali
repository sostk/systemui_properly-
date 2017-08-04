.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;
.super Landroid/database/ContentObserver;
.source "SmartTouchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 181
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result v3

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "mz_smart_touch_switch"

    const/4 v5, -0x2

    invoke-static {v2, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-eq v3, v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v2, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-set0(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z

    .line 184
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-wrap2(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    .line 180
    :goto_2
    return-void

    :cond_0
    move v2, v0

    .line 181
    goto :goto_0

    :cond_1
    move v0, v1

    .line 183
    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->-wrap3(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    goto :goto_2
.end method
