.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;


# instance fields
.field private mOnlyNotFull:Z

.field private mShowAnimation:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "onlyNotFull"    # Z
    .param p2, "showAnimation"    # Z

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->mOnlyNotFull:Z

    .line 402
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->mShowAnimation:Z

    .line 400
    return-void
.end method

.method public static isBatteryFull(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 384
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isPlugForProtection(ZII)Z
    .locals 2
    .param p1, "plugged"    # Z
    .param p2, "status"    # I
    .param p3, "level"    # I

    .prologue
    const/4 v0, 0x0

    .line 412
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-static {p3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->isBatteryFull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showChargingAnimation()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->mShowAnimation:Z

    return v0
.end method
