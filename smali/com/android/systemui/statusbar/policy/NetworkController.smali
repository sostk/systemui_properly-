.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;,
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
    }
.end annotation


# virtual methods
.method public abstract addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V
.end method

.method public abstract addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract getMobileDataController()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public abstract removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
