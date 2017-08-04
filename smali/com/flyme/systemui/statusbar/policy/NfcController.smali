.class public interface abstract Lcom/flyme/systemui/statusbar/policy/NfcController;
.super Ljava/lang/Object;
.source "NfcController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addNfcControllerCallback(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V
.end method

.method public abstract isNfcEnabled()Z
.end method

.method public abstract isNfcTurningOn()Z
.end method

.method public abstract removeNfcControllerCallback(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V
.end method

.method public abstract setNfcEnabled(Z)V
.end method
