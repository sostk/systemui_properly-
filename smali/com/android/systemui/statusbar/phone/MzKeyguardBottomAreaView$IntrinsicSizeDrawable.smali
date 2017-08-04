.class Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "MzKeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntrinsicSizeDrawable"
.end annotation


# instance fields
.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "intrinsicWidth"    # I
    .param p3, "intrinsicHeight"    # I

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 625
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicWidth:I

    .line 626
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicHeight:I

    .line 623
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$IntrinsicSizeDrawable;->mIntrinsicWidth:I

    return v0
.end method
