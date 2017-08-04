.class public interface abstract Lcom/flyme/systemui/smarttouch/ISmartTouchService;
.super Ljava/lang/Object;
.source "ISmartTouchService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;
    }
.end annotation


# virtual methods
.method public abstract forceHideSmartTouch(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
