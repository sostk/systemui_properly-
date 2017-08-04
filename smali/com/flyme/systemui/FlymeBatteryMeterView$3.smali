.class Lcom/flyme/systemui/FlymeBatteryMeterView$3;
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
    .line 202
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    iget-object v2, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    iget-object v3, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v3}, Lcom/flyme/systemui/FlymeBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 206
    const-string/jumbo v4, "mz_current_power_mode"

    const/4 v5, -0x2

    .line 205
    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 206
    const/4 v4, 0x2

    .line 205
    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->-set3(Lcom/flyme/systemui/FlymeBatteryMeterView;Z)Z

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/FlymeBatteryMeterView;->apply(Z)V

    .line 204
    return-void
.end method
