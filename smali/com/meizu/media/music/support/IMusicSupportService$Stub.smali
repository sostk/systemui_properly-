.class public abstract Lcom/meizu/media/music/support/IMusicSupportService$Stub;
.super Landroid/os/Binder;
.source "IMusicSupportService.java"

# interfaces
.implements Lcom/meizu/media/music/support/IMusicSupportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/support/IMusicSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/music/support/IMusicSupportService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/media/music/support/IMusicSupportService;
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
    const-string/jumbo v1, "com.meizu.media.music.support.IMusicSupportService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/meizu/media/music/support/IMusicSupportService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/meizu/media/music/support/IMusicSupportService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/meizu/media/music/support/IMusicSupportService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 235
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 42
    :sswitch_0
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v11, 0x1

    return v11

    .line 47
    :sswitch_1
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v2, 0x1

    .line 51
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 52
    .local v4, "_arg1":J
    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->playMusic(ZJ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v11, 0x1

    return v11

    .line 49
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":J
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .line 58
    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->cancelPlay()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v11, 0x1

    return v11

    .line 65
    :sswitch_3
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x1

    .line 69
    .restart local v2    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 70
    .restart local v4    # "_arg1":J
    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->playInBackground(ZJ)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v11, 0x1

    return v11

    .line 67
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":J
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_1

    .line 76
    .end local v2    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->display()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v11, 0x1

    return v11

    .line 83
    :sswitch_5
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->pause()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v11, 0x1

    return v11

    .line 90
    :sswitch_6
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->play()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v11, 0x1

    return v11

    .line 97
    :sswitch_7
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->isPlaying()Z

    move-result v10

    .line 99
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v10, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v11, 0x1

    return v11

    .line 100
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 105
    .end local v10    # "_result":Z
    :sswitch_8
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    .line 109
    .restart local v2    # "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 112
    .local v6, "_arg2":I
    invoke-virtual {p0, v2, v3, v6}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->getSearchResult(ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 113
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/music/support/SupportSongItem;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 115
    const/4 v11, 0x1

    return v11

    .line 107
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/music/support/SupportSongItem;>;"
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_3

    .line 119
    .end local v2    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->searchInMusic(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v11, 0x1

    return v11

    .line 128
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->randomPlay()Z

    move-result v10

    .line 130
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v10, :cond_4

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v11, 0x1

    return v11

    .line 131
    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    .line 136
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/media/music/support/IMusicSupportListener;

    move-result-object v0

    .line 139
    .local v0, "_arg0":Lcom/meizu/media/music/support/IMusicSupportListener;
    invoke-virtual {p0, v0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->addListener(Lcom/meizu/media/music/support/IMusicSupportListener;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v11, 0x1

    return v11

    .line 145
    .end local v0    # "_arg0":Lcom/meizu/media/music/support/IMusicSupportListener;
    :sswitch_c
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/media/music/support/IMusicSupportListener;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Lcom/meizu/media/music/support/IMusicSupportListener;
    invoke-virtual {p0, v0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->removeListener(Lcom/meizu/media/music/support/IMusicSupportListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v11, 0x1

    return v11

    .line 154
    .end local v0    # "_arg0":Lcom/meizu/media/music/support/IMusicSupportListener;
    :sswitch_d
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->next()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v11, 0x1

    return v11

    .line 161
    :sswitch_e
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->prev()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v11, 0x1

    return v11

    .line 168
    :sswitch_f
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->getListCount()I

    move-result v7

    .line 170
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v11, 0x1

    return v11

    .line 176
    .end local v7    # "_result":I
    :sswitch_10
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->getLrcContent()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    const/4 v11, 0x1

    return v11

    .line 184
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->requestLyric()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v11, 0x1

    return v11

    .line 191
    :sswitch_12
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->isMusicRecogizerOpen()Z

    move-result v10

    .line 193
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v10, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v11, 0x1

    return v11

    .line 194
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 199
    .end local v10    # "_result":Z
    :sswitch_13
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->starMusicRecogizer()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v11, 0x1

    return v11

    .line 206
    :sswitch_14
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->isCollected()Z

    move-result v10

    .line 208
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v10, :cond_6

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v11, 0x1

    return v11

    .line 209
    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    .line 214
    .end local v10    # "_result":Z
    :sswitch_15
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->collectOrRemoveFavorite()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v11, 0x1

    return v11

    .line 221
    :sswitch_16
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->getPlayMode()I

    move-result v7

    .line 223
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v11, 0x1

    return v11

    .line 229
    .end local v7    # "_result":I
    :sswitch_17
    const-string/jumbo v11, "com.meizu.media.music.support.IMusicSupportService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportService$Stub;->setPlayMode()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v11, 0x1

    return v11

    .line 38
    nop

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
