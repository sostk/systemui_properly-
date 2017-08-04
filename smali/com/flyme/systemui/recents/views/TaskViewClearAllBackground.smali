.class public Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;
.super Landroid/view/View;
.source "TaskViewClearAllBackground.java"


# instance fields
.field public bPaint:Landroid/graphics/Paint;

.field public fPaint:Landroid/graphics/Paint;

.field oval:Landroid/graphics/RectF;

.field progress:F

.field radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->oval:Landroid/graphics/RectF;

    .line 18
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->fPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->bPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v5, Lcom/android/systemui/R$styleable;->ClearAllBackground:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 26
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->radius:F

    .line 27
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 29
    .local v3, "strokeWidth":F
    invoke-static {p1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getRecents()Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

    move-result-object v2

    .line 30
    .local v2, "recents":Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;
    iget v1, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->mClearAllFrontColor:I

    .line 31
    .local v1, "color_light":I
    iget v0, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->mClearAllBehindColor:I

    .line 33
    .local v0, "color_dark":I
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->fPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->fPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->fPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->fPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->bPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->bPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->bPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->bPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 57
    .local v6, "center":[I
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    aput v0, v6, v4

    .line 58
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    aput v0, v6, v8

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->oval:Landroid/graphics/RectF;

    aget v1, v6, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->radius:F

    sub-float/2addr v1, v2

    aget v2, v6, v8

    int-to-float v2, v2

    iget v3, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->radius:F

    sub-float/2addr v2, v3

    aget v3, v6, v4

    int-to-float v3, v3

    .line 60
    iget v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->radius:F

    .line 59
    add-float/2addr v3, v5

    .line 60
    aget v5, v6, v8

    int-to-float v5, v5

    iget v7, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->radius:F

    add-float/2addr v5, v7

    .line 59
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    aget v0, v6, v4

    int-to-float v0, v0

    aget v1, v6, v8

    int-to-float v1, v1

    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->radius:F

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->bPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 63
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->progress:F

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->fPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public updateProgress(F)V
    .locals 0
    .param p1, "p"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->progress:F

    .line 50
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->invalidate()V

    .line 48
    return-void
.end method
