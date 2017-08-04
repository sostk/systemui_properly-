.class public Lcom/meizu/media/music/support/SupportSongItem;
.super Ljava/lang/Object;
.source "SupportSongItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/music/support/SupportSongItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/media/music/support/SupportSongItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArtistAlbum:Ljava/lang/String;

.field private mId:J

.field private mImageUrl:Ljava/lang/String;

.field private mIsLocal:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/meizu/media/music/support/SupportSongItem$1;

    invoke-direct {v0}, Lcom/meizu/media/music/support/SupportSongItem$1;-><init>()V

    sput-object v0, Lcom/meizu/media/music/support/SupportSongItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    .line 9
    iput-object v2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    .line 12
    iput-object v2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    .line 9
    iput-object v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    .line 12
    iput-object v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/media/music/support/SupportSongItem;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/media/music/support/SupportSongItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mArtistAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mIsLocal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/meizu/media/music/support/SupportSongItem;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
