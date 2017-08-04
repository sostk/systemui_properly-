.class public interface abstract Lcom/flyme/systemui/statusbar/policy/DataSaveController;
.super Ljava/lang/Object;
.source "DataSaveController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addDataSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V
.end method

.method public abstract isDataSaveEnabled()Z
.end method

.method public abstract isDataSaveSupported()Z
.end method

.method public abstract removeDataSaveControllerCallback(Lcom/flyme/systemui/statusbar/policy/DataSaveController$DataSaveControllerCallback;)V
.end method

.method public abstract setDataSaveEnabled(Z)V
.end method
