.class public abstract Lcom/meizu/stats/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Lcom/meizu/stats/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/stats/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/stats/IUsageStatsManager;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const-string/jumbo v1, "com.meizu.stats.IUsageStatsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/meizu/stats/IUsageStatsManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/meizu/stats/IUsageStatsManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/meizu/stats/IUsageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/meizu/stats/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 44
    :sswitch_0
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    return v0

    .line 48
    :sswitch_1
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 51
    .local v2, "start":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "time":J
    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/IUsageStatsManager$Stub;->onPage(Ljava/lang/String;ZLjava/lang/String;J)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 50
    .end local v2    # "start":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "start":Z
    goto :goto_0

    .line 58
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "start":Z
    :sswitch_2
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    new-instance v7, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-direct {v7, p2}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Landroid/os/Parcel;)V

    .line 60
    .local v7, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    invoke-virtual {p0, v7}, Lcom/meizu/stats/IUsageStatsManager$Stub;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v0, 0x1

    return v0

    .line 65
    .end local v7    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    :sswitch_3
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    new-instance v7, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-direct {v7, p2}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Landroid/os/Parcel;)V

    .line 67
    .restart local v7    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    invoke-virtual {p0, v7}, Lcom/meizu/stats/IUsageStatsManager$Stub;->onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v0, 0x1

    return v0

    .line 72
    .end local v7    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    :sswitch_4
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v10, 0x0

    .line 74
    .local v10, "upload":Z
    :goto_1
    invoke-virtual {p0, v10}, Lcom/meizu/stats/IUsageStatsManager$Stub;->setUploaded(Z)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v0, 0x1

    return v0

    .line 73
    .end local v10    # "upload":Z
    :cond_1
    const/4 v10, 0x1

    .restart local v10    # "upload":Z
    goto :goto_1

    .line 79
    .end local v10    # "upload":Z
    :sswitch_5
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/meizu/stats/IUsageStatsManager$Stub;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v0, 0x1

    return v0

    .line 86
    .end local v1    # "packageName":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "source":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v9, v1}, Lcom/meizu/stats/IUsageStatsManager$Stub;->setSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v0, 0x1

    return v0

    .line 94
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v8, 0x0

    .line 96
    .local v8, "online":Z
    :goto_2
    invoke-virtual {p0, v8}, Lcom/meizu/stats/IUsageStatsManager$Stub;->setOnline(Z)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v0, 0x1

    return v0

    .line 95
    .end local v8    # "online":Z
    :cond_2
    const/4 v8, 0x1

    .restart local v8    # "online":Z
    goto :goto_2

    .line 101
    .end local v8    # "online":Z
    :sswitch_8
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/meizu/stats/IUsageStatsManager$Stub;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v0, 0x1

    return v0

    .line 108
    .end local v1    # "packageName":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v0, "com.meizu.stats.IUsageStatsManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .local v6, "bulkLimit":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {p0, v6, v1}, Lcom/meizu/stats/IUsageStatsManager$Stub;->setBulkLimit(ILjava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    return v0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
