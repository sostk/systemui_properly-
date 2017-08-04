.class public abstract Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;
.super Landroid/os/Binder;
.source "IMzAnimatorService.java"

# interfaces
.implements Lcom/meizu/flyme/animatorservice/IMzAnimatorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/animatorservice/IMzAnimatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/animatorservice/IMzAnimatorService;
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
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/meizu/flyme/animatorservice/IMzAnimatorService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

    .line 47
    :sswitch_1
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 50
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;->setKeyguardToLauncherAnimator(F)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v2

    .line 56
    .end local v0    # "_arg0":F
    :sswitch_2
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;->setFingerprintUnlockToLauncherAnimator()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v2

    .line 63
    :sswitch_3
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 66
    .restart local v0    # "_arg0":F
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;->setSmartWallpaperAnimator(F)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 72
    .end local v0    # "_arg0":F
    :sswitch_4
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;->hideLauncher()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2

    .line 79
    :sswitch_5
    const-string/jumbo v1, "com.meizu.flyme.animatorservice.IMzAnimatorService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/meizu/flyme/animatorservice/IMzAnimatorService$Stub;->showLauncherAnimation()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
