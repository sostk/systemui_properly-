.class Lcom/flyme/systemui/FlymeBatteryMeterView$7;
.super Ljava/lang/Object;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/flyme/systemui/FlymeBatteryMeterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/FlymeBatteryMeterView;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set1(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 302
    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    const-string/jumbo v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set0(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 303
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->requestLayout()V

    .line 304
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    .line 300
    return-void
.end method
