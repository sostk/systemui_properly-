.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconSingle;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityIcon(IZZZ)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "connected"    # Z
    .param p3, "activityIn"    # Z
    .param p4, "activityOut"    # Z

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 66
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 67
    const v0, 0x7f0205ba

    return v0

    .line 69
    :cond_0
    if-eqz p3, :cond_1

    .line 70
    const v0, 0x7f0205b8

    return v0

    .line 72
    :cond_1
    if-eqz p4, :cond_2

    .line 73
    const v0, 0x7f0205bc

    return v0

    .line 76
    :cond_2
    return v0
.end method
