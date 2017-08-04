.class public interface abstract Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;
.super Ljava/lang/Object;
.source "ScreenRecordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
.end method

.method public abstract isReadying()Z
.end method

.method public abstract isScreenRecordSupported()Z
.end method

.method public abstract isScreenRecording()Z
.end method

.method public abstract removeScreenRecordControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
.end method

.method public abstract running(Z)V
.end method

.method public abstract takeScreenRecord(Z)V
.end method
