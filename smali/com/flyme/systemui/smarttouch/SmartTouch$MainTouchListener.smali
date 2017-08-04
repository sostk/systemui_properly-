.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;,
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;
    }
.end annotation


# instance fields
.field private final detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

.field private final moveDetector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

.field private moveState:Z

.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    return p1
.end method

.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V
    .locals 3
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouch;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    .line 418
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    .line 420
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveDetector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

    .line 181
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 188
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 189
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    :cond_0
    :goto_0
    if-ne v0, v8, :cond_2

    .line 196
    iget-boolean v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    if-eqz v5, :cond_2

    .line 197
    new-array v1, v10, [I

    .line 198
    .local v1, "location":[I
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 200
    aget v5, v1, v8

    const/16 v6, 0x3c

    if-ge v5, v6, :cond_1

    .line 201
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    const/16 v6, 0x3c

    invoke-static {v5, v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-set1(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 202
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 203
    .local v2, "message":Landroid/os/Message;
    iput v12, v2, Landroid/os/Message;->what:I

    .line 204
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 205
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "smarttouch"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 209
    .local v4, "smarttouch":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "position_x"

    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v7}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get1(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "position_y"

    iget-object v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v7}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get2(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get4(Lcom/flyme/systemui/smarttouch/SmartTouch;)I

    move-result v5

    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v6}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, -0x14

    .line 214
    .local v3, "newPosition":I
    aget v5, v1, v8

    if-le v5, v3, :cond_2

    .line 215
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 216
    .restart local v2    # "message":Landroid/os/Message;
    iput v12, v2, Landroid/os/Message;->what:I

    .line 217
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 218
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    .end local v1    # "location":[I
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "newPosition":I
    .end local v4    # "smarttouch":Landroid/content/SharedPreferences;
    :cond_2
    if-eqz v0, :cond_4

    .line 225
    iget-boolean v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    if-eqz v5, :cond_5

    .line 226
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveDetector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;

    invoke-virtual {v5, p2}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 227
    return v8

    .line 191
    :cond_3
    if-ne v0, v8, :cond_0

    .line 192
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 230
    :cond_4
    iput-boolean v9, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->moveState:Z

    .line 233
    :cond_5
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    invoke-virtual {v5, p2}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    if-eq v0, v8, :cond_6

    if-ne v0, v11, :cond_7

    .line 236
    :cond_6
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->detector:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;

    invoke-virtual {v5, p2}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->onUp(Landroid/view/MotionEvent;)V

    .line 239
    :cond_7
    return v8
.end method
