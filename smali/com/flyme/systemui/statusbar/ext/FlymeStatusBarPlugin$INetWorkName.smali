.class public interface abstract Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;
.super Ljava/lang/Object;
.source "FlymeStatusBarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INetWorkName"
.end annotation


# virtual methods
.method public abstract getNetWorkName(Landroid/telephony/ServiceState;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updateNetWorkName(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updateShowNetWorkName(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;
.end method
