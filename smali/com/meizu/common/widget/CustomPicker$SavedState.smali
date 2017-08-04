.class Lcom/meizu/common/widget/CustomPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/common/widget/CustomPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSaveCurrentItems:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/meizu/common/widget/CustomPicker$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/common/widget/CustomPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/CustomPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/common/widget/CustomPicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/common/widget/CustomPicker$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private varargs constructor <init>(Landroid/os/Parcelable;[I)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "currentItems"    # [I

    .prologue
    .line 352
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 353
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;[ILcom/meizu/common/widget/CustomPicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # [I
    .param p3, "x2"    # Lcom/meizu/common/widget/CustomPicker$1;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcelable;[I)V

    return-void
.end method


# virtual methods
.method public getCurrentItems()[I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 367
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 368
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 369
    return-void
.end method
