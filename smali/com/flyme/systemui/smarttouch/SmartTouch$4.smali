.class Lcom/flyme/systemui/smarttouch/SmartTouch$4;
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
    .line 125
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    const-string/jumbo v0, "SmartTouch"

    const-string/jumbo v1, "hide when lid dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setScaleX(F)V

    .line 130
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setScaleY(F)V

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->invalidate()V

    .line 127
    return-void
.end method
