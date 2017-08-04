.class final Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;
.super Landroid/os/Handler;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AnimatorHandler"
.end annotation


# instance fields
.field positoionSpring:Lcom/facebook/rebound/Spring;

.field springSystem:Lcom/facebook/rebound/SpringSystem;

.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V
    .locals 1
    .param p1, "this$0"    # Lcom/flyme/systemui/smarttouch/SmartTouch;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 428
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 429
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    .line 427
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 434
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 436
    :pswitch_0
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler StableClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    sget-object v5, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler StablePrepare"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    sget-object v5, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V

    goto :goto_0

    .line 444
    :pswitch_2
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler StableDrag"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    sget-object v5, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V

    goto :goto_0

    .line 448
    :pswitch_3
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler ShowView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;

    invoke-direct {v5, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 469
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 449
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 472
    :pswitch_4
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler DismissView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;

    invoke-direct {v5, p0}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 497
    :pswitch_5
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler AlphaOn"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v5, v5, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 501
    :pswitch_6
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler AlphaOff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get5(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    iget v5, v5, Lcom/flyme/systemui/smarttouch/SmartTouch;->defAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 505
    :pswitch_7
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler UpdatePositon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v4}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 507
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 509
    .local v3, "toY":I
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 511
    .local v2, "startY":I
    const-string/jumbo v4, "SmartTouch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v4}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 513
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;II)V

    invoke-virtual {v4, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 530
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 531
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v6, v7}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 534
    .end local v2    # "startY":I
    .end local v3    # "toY":I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 536
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 537
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 538
    iget-object v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v5}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 537
    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 539
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v0

    .line 540
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_8
    const-string/jumbo v4, "SmartTouch"

    const-string/jumbo v5, "handler Vibrator"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    iget-object v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v4}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
