.class Lcom/flyme/systemui/FlymeBatteryMeterView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlymeBatteryMeterView.java"


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
    .line 165
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 169
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get7(Lcom/flyme/systemui/FlymeBatteryMeterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 173
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get1(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    return-void
.end method
