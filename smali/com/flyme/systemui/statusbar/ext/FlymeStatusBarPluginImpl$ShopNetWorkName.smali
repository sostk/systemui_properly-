.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;
.super Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;
.source "FlymeStatusBarPluginImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showSuffix"    # Z
    .param p3, "noShowEmergencyOnly"    # Z
    .param p4, "showAllNoSim"    # Z

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    .line 267
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;->mContext:Landroid/content/Context;

    .line 265
    return-void
.end method


# virtual methods
.method public mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mobileSignalController"    # [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "noSIMString"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;->mContext:Landroid/content/Context;

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
