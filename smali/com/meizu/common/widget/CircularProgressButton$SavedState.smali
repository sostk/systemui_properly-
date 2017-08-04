.class Lcom/meizu/common/widget/CircularProgressButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/common/widget/CircularProgressButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigurationChanged:Z

.field private mIndeterminateProgressMode:Z

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1210
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/CircularProgressButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1196
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    .line 1198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    .line 1199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    .line 1200
    return-void

    :cond_0
    move v0, v2

    .line 1198
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1199
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/CircularProgressButton$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/common/widget/CircularProgressButton$1;

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CircularProgressButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 1192
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1193
    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    .prologue
    .line 1185
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/common/widget/CircularProgressButton$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    .param p1, "x1"    # I

    .prologue
    .line 1185
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    .param p1, "x1"    # Z

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/CircularProgressButton$SavedState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$SavedState;

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/meizu/common/widget/CircularProgressButton$SavedState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$SavedState;
    .param p1, "x1"    # Z

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1204
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1205
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mIndeterminateProgressMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircularProgressButton$SavedState;->mConfigurationChanged:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    return-void

    :cond_0
    move v0, v2

    .line 1206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1207
    goto :goto_1
.end method
