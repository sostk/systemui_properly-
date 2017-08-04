.class Lcom/flyme/systemui/FlymeBatteryMeterView$2;
.super Landroid/database/ContentObserver;
.source "FlymeBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/FlymeBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/FlymeBatteryMeterView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/FlymeBatteryMeterView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$2;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$2;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-wrap0(Lcom/flyme/systemui/FlymeBatteryMeterView;)V

    .line 196
    invoke-static {}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "FlymeBatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDoChargeAnimation is change,the value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$2;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-static {v2}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-get2(Lcom/flyme/systemui/FlymeBatteryMeterView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    return-void
.end method
