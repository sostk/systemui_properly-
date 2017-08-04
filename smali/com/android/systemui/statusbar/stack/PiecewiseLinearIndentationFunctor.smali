.class public Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;
.super Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;
.source "PiecewiseLinearIndentationFunctor.java"


# instance fields
.field private final mBaseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mLinearPart:F


# direct methods
.method constructor <init>(IIIF)V
    .locals 2
    .param p1, "maxItemsInStack"    # I
    .param p2, "peekSize"    # I
    .param p3, "distanceToPeekStart"    # I
    .param p4, "linearPart"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;-><init>(III)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->initBaseValues()V

    .line 63
    iput p4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mLinearPart:F

    .line 59
    return-void
.end method

.method private getSumOfSquares(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 83
    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p1

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private initBaseValues()V
    .locals 6

    .prologue
    .line 67
    iget v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->getSumOfSquares(I)I

    move-result v1

    .line 68
    .local v1, "sumOfSquares":I
    const/4 v2, 0x0

    .line 69
    .local v2, "totalWeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 71
    iget v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mMaxItemsInStack:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;->mBaseValues:Ljava/util/ArrayList;

    int-to-float v4, v2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
