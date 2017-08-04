.class public interface abstract Lcom/flyme/systemui/recents/IRecentsRemoteService;
.super Ljava/lang/Object;
.source "IRecentsRemoteService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/IRecentsRemoteService$Stub;
    }
.end annotation


# virtual methods
.method public abstract lockPkgTemporarily(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
