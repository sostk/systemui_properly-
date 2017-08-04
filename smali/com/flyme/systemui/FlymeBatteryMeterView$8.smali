.class Lcom/flyme/systemui/FlymeBatteryMeterView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlymeBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/FlymeBatteryMeterView;->apply(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

.field final synthetic val$endAlpha:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/FlymeBatteryMeterView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/FlymeBatteryMeterView;
    .param p2, "val$endAlpha"    # I

    .prologue
    .line 307
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iput p2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->val$endAlpha:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set1(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 318
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->val$endAlpha:I

    invoke-static {v0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set0(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 319
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->requestLayout()V

    .line 320
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    .line 316
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 311
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set1(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 312
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->val$endAlpha:I

    invoke-static {v0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set0(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 313
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->requestLayout()V

    .line 314
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    .line 309
    return-void
.end method
