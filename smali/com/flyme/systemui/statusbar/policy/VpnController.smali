.class public interface abstract Lcom/flyme/systemui/statusbar/policy/VpnController;
.super Ljava/lang/Object;
.source "VpnController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addVpnControllerCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
.end method

.method public abstract isVpnConnecting()Z
.end method

.method public abstract isVpnEnabled()Z
.end method

.method public abstract isVpnInitializing()Z
.end method

.method public abstract isVpnSupported()Z
.end method

.method public abstract isVpnWaitForReconnect()Z
.end method

.method public abstract removeVpnControllerCallback(Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;)V
.end method

.method public abstract setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end method

.method public abstract setVpnEnabled(Z)V
.end method
