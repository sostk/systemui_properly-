.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$SignalNoSIMSingle;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoSimIcon()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0205d1

    return v0
.end method

.method public showNoSim(IZZZ)Z
    .locals 1
    .param p1, "slotID"    # I
    .param p2, "hasSIM"    # Z
    .param p3, "noSIM"    # Z
    .param p4, "isAirplane"    # Z

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p4, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
