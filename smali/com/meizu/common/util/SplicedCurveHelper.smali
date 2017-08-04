.class public Lcom/meizu/common/util/SplicedCurveHelper;
.super Ljava/lang/Object;
.source "SplicedCurveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;
    }
.end annotation


# static fields
.field private static final CORNER_RADIU:I = 0x64


# instance fields
.field private mLenPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private mPeakY:I

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;",
            ">;"
        }
    .end annotation
.end field

.field private mValleyY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    .line 27
    invoke-direct {p0}, Lcom/meizu/common/util/SplicedCurveHelper;->init()V

    .line 28
    return-void
.end method

.method private addSection2Path(Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;)V
    .locals 4
    .param p1, "cs"    # Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    .prologue
    .line 120
    if-nez p1, :cond_1

    .line 121
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 123
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 132
    return-void

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v2, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    if-gt v1, v2, :cond_3

    .line 128
    :goto_1
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    if-lt v1, v2, :cond_4

    .line 123
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_3
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    goto :goto_1

    .line 129
    :cond_4
    iget-object v1, p1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    goto :goto_2
.end method

.method private drawSplitPath(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startPoint"    # Landroid/graphics/Point;
    .param p3, "endPoint"    # Landroid/graphics/Point;
    .param p4, "lineColor"    # I

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->x:I

    if-lt v3, v4, :cond_0

    .line 182
    iget v2, p3, Landroid/graphics/Point;->x:I

    .line 183
    .local v2, "startX":I
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 187
    .local v0, "endX":I
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    iget v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 189
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    return-void

    .line 179
    .end local v0    # "endX":I
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "startX":I
    :cond_0
    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 180
    .restart local v2    # "startX":I
    iget v0, p3, Landroid/graphics/Point;->x:I

    .restart local v0    # "endX":I
    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 154
    return-void
.end method

.method private setOriginPath()V
    .locals 6

    .prologue
    .line 71
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    if-eqz v3, :cond_2

    .line 80
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    .line 81
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 99
    return-void

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 75
    :cond_1
    return-void

    .line 78
    :cond_2
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    goto :goto_0

    .line 82
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    .line 83
    .local v0, "cs":Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 85
    .local v2, "j":I
    :goto_2
    iget-object v3, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 81
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .restart local v2    # "j":I
    :cond_5
    if-eqz v1, :cond_7

    .line 89
    :cond_6
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    :goto_3
    iget-object v3, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    if-gt v3, v4, :cond_8

    .line 94
    :goto_4
    iget-object v3, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    if-lt v3, v4, :cond_9

    .line 85
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_7
    if-nez v2, :cond_6

    .line 87
    iget-object v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mLenPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    .line 92
    :cond_8
    iget-object v3, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPeakY:I

    goto :goto_4

    .line 95
    :cond_9
    iget-object v3, v0, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mValleyY:I

    goto :goto_5
.end method


# virtual methods
.method public addCurveSection(Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;)V
    .locals 1
    .param p1, "cs"    # Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/meizu/common/util/SplicedCurveHelper;->addSection2Path(Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;)V

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/util/SplicedCurveHelper;->setOriginPath()V

    goto :goto_0
.end method

.method public drawCurve(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 162
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 163
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 165
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 172
    return-void

    .line 166
    :cond_2
    if-eqz v0, :cond_3

    .line 169
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v2, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v1, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v2, v1

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v3, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v1, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v3, v3, v1

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget v1, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/meizu/common/util/SplicedCurveHelper;->drawSplitPath(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 165
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v1, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    aget-object v2, v1, v5

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v3, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget-object v1, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mPoints:[Landroid/graphics/Point;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v3, v3, v1

    iget-object v1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;

    iget v1, v1, Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;->mColor:I

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/meizu/common/util/SplicedCurveHelper;->drawSplitPath(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Point;I)V

    goto :goto_1
.end method

.method public setCurveSections(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "curveSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/util/SplicedCurveHelper$CurveSection;>;"
    iput-object p1, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mSections:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0}, Lcom/meizu/common/util/SplicedCurveHelper;->setOriginPath()V

    .line 68
    return-void
.end method

.method public setCurveStroke(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 140
    if-gtz p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/meizu/common/util/SplicedCurveHelper;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method
