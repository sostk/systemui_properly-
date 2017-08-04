.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;
.super Ljava/lang/Object;
.source "FlymeStatusBarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;,
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$ISignalNoSIM;,
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;,
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;,
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;,
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;,
        Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;
    }
.end annotation


# static fields
.field public static mReadMzNetworkName:Z

.field public static mShowMzCarrierLabel:Z

.field public static mUpdateMzNetworkName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;->mShowMzCarrierLabel:Z

    .line 16
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;->mUpdateMzNetworkName:Z

    .line 17
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;->mReadMzNetworkName:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
