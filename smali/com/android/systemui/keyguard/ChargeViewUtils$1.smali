.class Lcom/android/systemui/keyguard/ChargeViewUtils$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ChargeViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/ChargeViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/ChargeViewUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/ChargeViewUtils;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$1;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 148
    const-string/jumbo v0, "ChargeViewUtils"

    const-string/jumbo v1, "onRefreshBatteryInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$1;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->updateChargingState()V

    .line 147
    return-void
.end method
