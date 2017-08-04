.class public interface abstract Lcom/flyme/systemui/statusbar/policy/DriveModeController;
.super Ljava/lang/Object;
.source "DriveModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addDriveModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
.end method

.method public abstract isDriveModeEnabled()Z
.end method

.method public abstract isDriveModeSupported()Z
.end method

.method public abstract removeDriveModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
.end method

.method public abstract setDriveModeEnabled(Z)V
.end method
