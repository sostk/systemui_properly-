.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyOnGestureListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;
    }
.end annotation


# instance fields
.field isDoubleTab:Z

.field final targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;)V
    .locals 3
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 295
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v1, v1, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 294
    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iput-boolean v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 351
    :cond_0
    :goto_0
    return v2

    .line 343
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 344
    iput-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 345
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onDoubleTapUp()Z

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onSingleTapUp()Z

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 329
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->initOnDown()V

    .line 331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 409
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onFling(FF)V

    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_long:I

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->-set0(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Z)Z

    .line 377
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get3(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->resetForMove()V

    .line 379
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouchGesture(Landroid/content/Context;I)V

    .line 374
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v1, v3, v6

    .line 386
    .local v1, "Y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v3, v6

    .line 387
    .local v0, "X":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 388
    :cond_0
    float-to-double v6, v0

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double v4, v6, v8

    .line 389
    .local v4, "p":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 390
    .local v2, "mp":I
    const/16 v3, 0x2d

    if-ge v2, v3, :cond_1

    .line 391
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    .line 404
    .end local v2    # "mp":I
    .end local v4    # "p":D
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 392
    .restart local v2    # "mp":I
    .restart local v4    # "p":D
    :cond_1
    const/16 v3, 0x87

    if-ge v2, v3, :cond_3

    .line 393
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 394
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v6, 0x1

    const/16 v7, -0x5a

    invoke-virtual {v3, v6, v7}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0

    .line 396
    :cond_2
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    invoke-virtual {v3, v6, v7}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0

    .line 399
    :cond_3
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v6, 0x1

    const/16 v7, 0xb4

    invoke-virtual {v3, v6, v7}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0

    .line 402
    .end local v2    # "mp":I
    .end local v4    # "p":D
    :cond_4
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    return v1

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onSingleTapUp()Z

    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->behavior_doubleclick:I

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onSingleTapUp()Z

    .line 359
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_0
    return v1
.end method

.method public onUnLock()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->onUnLock()V

    .line 413
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->animateOnUp(Landroid/view/MotionEvent;)V

    .line 336
    const/4 v0, 0x1

    return v0
.end method
