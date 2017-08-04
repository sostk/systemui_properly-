.class Lcom/flyme/systemui/FlymeBatteryMeterView$4;
.super Ljava/lang/Object;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/FlymeBatteryMeterView;->initBattery()V
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
    .line 111
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v1, 0x64

    .line 114
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get4(Lcom/flyme/systemui/FlymeBatteryMeterView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get6(Lcom/flyme/systemui/FlymeBatteryMeterView;)I

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set2(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 115
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get4(Lcom/flyme/systemui/FlymeBatteryMeterView;)I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set2(Lcom/flyme/systemui/FlymeBatteryMeterView;I)I

    .line 116
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->postInvalidate()V

    .line 117
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get3(Lcom/flyme/systemui/FlymeBatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get5(Lcom/flyme/systemui/FlymeBatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get4(Lcom/flyme/systemui/FlymeBatteryMeterView;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get4(Lcom/flyme/systemui/FlymeBatteryMeterView;)I

    move-result v0

    goto :goto_1
.end method
