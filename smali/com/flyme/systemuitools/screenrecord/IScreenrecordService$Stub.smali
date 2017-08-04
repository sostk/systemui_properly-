.class public abstract Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;
.super Landroid/os/Binder;
.source "IScreenrecordService.java"

# interfaces
.implements Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-virtual {p0, p0, v0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;
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
    const-string/jumbo v1, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v3

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;->isRecording()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return v3

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string/jumbo v2, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;->startRecord()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v3

    .line 62
    :sswitch_3
    const-string/jumbo v4, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;->stopRecord()Z

    move-result v1

    .line 64
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v3

    .line 70
    .end local v1    # "_result":Z
    :sswitch_4
    const-string/jumbo v2, "com.flyme.systemuitools.screenrecord.IScreenrecordService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;

    move-result-object v0

    .line 73
    .local v0, "_arg0":Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/screenrecord/IScreenrecordService$Stub;->setOnRecordChangeListener(Lcom/flyme/systemuitools/screenrecord/IScreenrecordCallback;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
