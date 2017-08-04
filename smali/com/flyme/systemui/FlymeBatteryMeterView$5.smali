.class Lcom/flyme/systemui/FlymeBatteryMeterView$5;
.super Ljava/lang/Object;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleBatteryPercent()V
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
    .line 153
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 156
    const-string/jumbo v5, "padding"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 157
    .local v2, "padding":I
    const-string/jumbo v5, "alpha"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 158
    .local v0, "alpha":F
    iget-object v5, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v5}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 159
    .local v4, "top":I
    iget-object v5, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v5}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 160
    .local v3, "right":I
    iget-object v5, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v5}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    .line 161
    .local v1, "bottom":I
    iget-object v5, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v5}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 162
    iget-object v5, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v5}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 155
    return-void
.end method
