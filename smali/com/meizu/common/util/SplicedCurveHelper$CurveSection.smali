.class public Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;
.super Ljava/lang/Object;
.source "SplicedCurveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/SplicedCurveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurveSection"
.end annotation


# instance fields
.field public mColor:I

.field public mPoints:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>([Landroid/graphics/Point;I)V
    .locals 0
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "color"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    .line 40
    iput p2, p0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    .line 41
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    return v0
.end method

.method public getPoints()[Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    .line 49
    return-void
.end method

.method public setPoints([Landroid/graphics/Point;)V
    .locals 0
    .param p1, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    .line 45
    return-void
.end method
