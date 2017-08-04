.class Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
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
            "Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 871
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 861
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    .line 863
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/common/widget/EnhanceSeekBar$1;

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 854
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 855
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 867
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 868
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    return-void
.end method
