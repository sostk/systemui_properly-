.class public Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;
.super Landroid/widget/LinearLayout;
.source "HolsterStatusBarView.java"


# instance fields
.field private mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

.field private mCarrierText:Landroid/widget/TextView;

.field private mHolsterHeader:Landroid/widget/LinearLayout;

.field private mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

.field private mMoreIcon:Landroid/view/View;

.field private mNotificationIconArea:Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

.field private mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

.field private mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mTickerView:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040009

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v1, 0x7f0f006c

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mHolsterHeader:Landroid/widget/LinearLayout;

    .line 49
    const v1, 0x7f0f023a

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 50
    const v1, 0x7f0f01cd

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mNotificationIconArea:Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    .line 51
    const v1, 0x7f0f01d1

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mNotificationIcons:Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;

    .line 52
    const v1, 0x7f0f01d2

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mMoreIcon:Landroid/view/View;

    .line 53
    const v1, 0x7f0f01d0

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mAppNotifyIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 54
    const v1, 0x7f0f01cf

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mAppOngoingIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 55
    const v1, 0x7f0f0071

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "mPercnetView":Landroid/widget/TextView;
    const v1, 0x7f0f0052

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/FlymeBatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/FlymeBatteryMeterView;->setBatteryPercentView(Landroid/widget/TextView;)V

    .line 58
    const v1, 0x7f0f023b

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 59
    const v1, 0x7f0f0072

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mTickerView:Landroid/view/ViewStub;

    .line 60
    const v1, 0x7f0f006e

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mCarrierText:Landroid/widget/TextView;

    .line 43
    return-void
.end method


# virtual methods
.method public getBatteryView()Lcom/flyme/systemui/FlymeBatteryMeterView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mBatteryView:Lcom/flyme/systemui/FlymeBatteryMeterView;

    return-object v0
.end method

.method public getCarrierText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mCarrierText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHolsterHeader()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mHolsterHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHolsterStatusIcons()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNotificationIconArea()Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mNotificationIconArea:Lcom/flyme/systemui/statusbar/phone/FlymeNotificationLayout;

    return-object v0
.end method

.method public getSignalClusterView()Lcom/android/systemui/statusbar/SignalClusterView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    return-object v0
.end method

.method public getTickerView()Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mTickerView:Landroid/view/ViewStub;

    return-object v0
.end method

.method public setColor()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setColor()V

    .line 111
    :cond_0
    return-void
.end method

.method public setKeyguardIntelligentHolsterView(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0
    .param p1, "holsterView"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .line 107
    return-void
.end method
