.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconDouble;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
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

    .line 83
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 84
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 85
    const v0, 0x7f0205bb

    return v0

    .line 87
    :cond_0
    if-eqz p3, :cond_1

    .line 88
    const v0, 0x7f0205b9

    return v0

    .line 90
    :cond_1
    if-eqz p4, :cond_2

    .line 91
    const v0, 0x7f0205bd

    return v0

    .line 93
    :cond_2
    const v0, 0x7f0205a5

    return v0

    .line 95
    :cond_3
    return v0
.end method
