.class public Lcom/flyme/systemui/qs/ArrowView;
.super Landroid/view/View;
.source "ArrowView.java"


# instance fields
.field private mArrowPosition:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x26ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/ArrowView;->getMeasuredWidth()I

    move-result v4

    .line 60
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/ArrowView;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    sub-int v1, v5, v6

    .line 61
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/ArrowView;->getPaddingLeft()I

    move-result v2

    .line 62
    .local v2, "leftPadding":I
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/ArrowView;->getPaddingRight()I

    move-result v3

    .line 63
    .local v3, "rightPadding":I
    int-to-double v6, v1

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    invoke-static {v8, v9}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 65
    .local v0, "delta":F
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 66
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    int-to-float v6, v2

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 67
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    sub-int v6, v4, v3

    int-to-float v6, v6

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public setArrowPosition(I)V
    .locals 0
    .param p1, "arrowPosition"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    .line 52
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/ArrowView;->invalidate()V

    .line 50
    return-void
.end method
