.class public interface abstract Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
.super Ljava/lang/Object;
.source "PowerSaveController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addPowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
.end method

.method public abstract getPowerSaveMode()I
.end method

.method public abstract getSupportedConfigNums()I
.end method

.method public abstract isPowerSaveEnabled()Z
.end method

.method public abstract removePowerSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
.end method

.method public abstract setPowerSaveMode(I)V
.end method
