.class Lcom/flyme/systemui/smarttouch/SmartTouch$5;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouch;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "show when screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    .line 136
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v0, "SmartTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not show screenshot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v2, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
