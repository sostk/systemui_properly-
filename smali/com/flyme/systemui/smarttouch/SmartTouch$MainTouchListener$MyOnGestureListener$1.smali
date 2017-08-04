.class Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;
.super Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$2"    # Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public updateFloatWindow(I)V
    .locals 7
    .param p1, "imeTop"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 298
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-set2(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 299
    if-nez p1, :cond_1

    .line 300
    new-array v0, v5, [I

    .line 301
    .local v0, "location":[I
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 302
    aget v3, v0, v4

    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v4, v4, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 303
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 305
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 306
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 310
    .end local v0    # "location":[I
    :cond_1
    new-array v0, v5, [I

    .line 311
    .restart local v0    # "location":[I
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 312
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v2, p1, v3

    .line 313
    .local v2, "newPosition":I
    aget v3, v0, v4

    if-le v3, v2, :cond_0

    .line 314
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 315
    .restart local v1    # "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 316
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 317
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
