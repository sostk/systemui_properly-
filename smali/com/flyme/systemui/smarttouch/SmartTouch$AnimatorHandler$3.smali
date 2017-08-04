.class Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field intEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

.field final synthetic val$startY:I

.field final synthetic val$toY:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;II)V
    .locals 1
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;
    .param p2, "val$startY"    # I
    .param p3, "val$toY"    # I

    .prologue
    .line 513
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iput p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$startY:I

    iput p3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$toY:I

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    .line 514
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->intEvaluator:Landroid/animation/IntEvaluator;

    .line 513
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 6
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    .line 518
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 521
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->intEvaluator:Landroid/animation/IntEvaluator;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v4

    double-to-float v3, v4

    iget v4, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$startY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->val$toY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 522
    .local v1, "tempY":I
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v1, :cond_0

    .line 523
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 524
    iget-object v2, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v2, v2, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v2}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get0(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 525
    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$3;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v3, v3, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v3}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 524
    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "tempY":I
    :cond_0
    return-void
.end method
