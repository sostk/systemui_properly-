.class public interface abstract Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;
.super Ljava/lang/Object;
.source "IScreenrecordService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isRecording()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOnRecordChangeListener(Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRecord()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRecord()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
