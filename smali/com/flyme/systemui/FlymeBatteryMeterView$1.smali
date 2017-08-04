.class Lcom/flyme/systemui/FlymeBatteryMeterView$1;
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
    .line 185
    iput-object p1, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$1;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flyme/systemui/FlymeBatteryMeterView$1;->this$0:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->toggleBatteryPercent()V

    .line 187
    return-void
.end method
