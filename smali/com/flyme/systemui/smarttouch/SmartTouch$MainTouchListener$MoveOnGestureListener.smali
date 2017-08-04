.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoveOnGestureListener"
.end annotation


# instance fields
.field startY:F

.field state:Z

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->startY:F

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->state:Z

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 280
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 282
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 284
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v2, v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-set0(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 285
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v2, v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-set1(Lcom/flyme/systemui/smarttouch/SmartTouch;I)I

    .line 286
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 287
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MoveOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    const/4 v2, 0x1

    return v2
.end method
