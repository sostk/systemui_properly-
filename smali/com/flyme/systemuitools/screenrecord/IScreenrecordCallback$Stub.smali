.class public abstract Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub;
.super Landroid/os/Binder;
.source "IScreenrecordCallback.java"

# interfaces
.implements Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.flyme.systemuitools.screenrecord.IScreenrecordCallback"

    invoke-virtual {p0, p0, v0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.flyme.systemuitools.screenrecord.IScreenrecordCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "com.flyme.systemuitools.screenrecord.IScreenrecordCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

    .line 47
    :sswitch_1
    const-string/jumbo v1, "com.flyme.systemuitools.screenrecord.IScreenrecordCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 50
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub;->recordRunningChange(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v2

    .line 49
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
