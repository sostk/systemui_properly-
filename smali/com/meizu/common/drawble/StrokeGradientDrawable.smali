.class public Lcom/meizu/common/drawble/StrokeGradientDrawable;
.super Ljava/lang/Object;
.source "StrokeGradientDrawable.java"


# instance fields
.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/GradientDrawable;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 22
    return-void
.end method


# virtual methods
.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeWidth:I

    return v0
.end method

.method public setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeColor:I

    .line 55
    iget-object v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getStrokeWidth()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 56
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2
    .param p1, "strokeWidth"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeWidth:I

    .line 38
    iget-object v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 39
    return-void
.end method
