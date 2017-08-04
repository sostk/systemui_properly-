.class public interface abstract Lcom/flyme/systemui/statusbar/policy/AcceleratorController;
.super Ljava/lang/Object;
.source "AcceleratorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addAcceleratorControllerCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
.end method

.method public abstract isAcceleratorEnabled()Z
.end method

.method public abstract isAcceleratorSupported()Z
.end method

.method public abstract removeAcceleratorControllerCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
.end method

.method public abstract setAcceleratorEnabled()V
.end method
