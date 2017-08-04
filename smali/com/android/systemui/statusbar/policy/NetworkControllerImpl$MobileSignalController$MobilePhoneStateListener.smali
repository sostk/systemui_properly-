.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field private mInListener:Z

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .param p2, "subId"    # I

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 1689
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 1693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mInListener:Z

    .line 1688
    return-void
.end method

.method private final getNWTypeByPriority(II)I
    .locals 2
    .param p1, "cs"    # I
    .param p2, "ps"    # I

    .prologue
    .line 1775
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1776
    return p1

    .line 1778
    :cond_0
    return p2
.end method

.method private final updateNetworkType()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1757
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1758
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)I

    move-result v0

    .line 1759
    .local v0, "networkTypeData":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1760
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1761
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 1763
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->getNWTypeByPriority(II)I

    move-result v1

    .line 1767
    .end local v0    # "networkTypeData":I
    .local v1, "tempNetworkType":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->get(I)Lcom/flyme/systemui/statusbar/ext/NetworkType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-set2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1768
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1769
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-set2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1755
    :cond_2
    return-void

    .line 1765
    .end local v1    # "tempNetworkType":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)I

    move-result v1

    .restart local v1    # "tempNetworkType":I
    goto :goto_0
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 1785
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mInListener:Z

    if-nez v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mIsInListener is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return-void

    .line 1791
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setActivity(I)V

    .line 1783
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1739
    const-string/jumbo v2, " type="

    .line 1738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mInListener:Z

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mIsInListener is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    return-void

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-set1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)I

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-set0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)I

    .line 1750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->updateNetworkType()V

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)V

    .line 1736
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1720
    const-string/jumbo v2, " dataState="

    .line 1719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1720
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .line 1719
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mInListener:Z

    if-nez v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mIsInListener is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    return-void

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-set3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 1730
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->updateNetworkType()V

    .line 1732
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)V

    .line 1717
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1704
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1703
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mInListener:Z

    if-nez v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mIsInListener is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return-void

    .line 1704
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-set4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)V

    .line 1701
    return-void
.end method

.method public setInListener(Z)V
    .locals 0
    .param p1, "mIsInListener"    # Z

    .prologue
    .line 1696
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;->mInListener:Z

    .line 1695
    return-void
.end method
