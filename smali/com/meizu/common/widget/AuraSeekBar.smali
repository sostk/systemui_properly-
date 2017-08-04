.class public Lcom/meizu/common/widget/AuraSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "AuraSeekBar.java"


# static fields
.field private static final mMaxHeight:I = 0x30

.field private static final mMinHeight:I = 0x7


# instance fields
.field private mAuraRadis:I

.field private mInitialTouchX:F

.field private mIsDrag:Z

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_AuraSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    .line 64
    sget-object v1, Lcom/meizu/common/R$styleable;->AuraSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->AuraSeekBar_mcAuraThumbDrawble:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 66
    sget v1, Lcom/meizu/common/R$styleable;->AuraSeekBar_mcAuraDistance:I

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private onProgressChanged()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 151
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private onStopTrackTouch()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    monitor-enter p0

    .line 90
    :try_start_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    if-nez v5, :cond_1

    .line 111
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 112
    return-void

    .line 90
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 92
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 93
    .local v4, "thumbHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v2, v5, v6

    .line 94
    .local v2, "height":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 96
    .local v1, "delta":I
    if-gt v2, v4, :cond_2

    .line 99
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    :goto_2
    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xcc

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 108
    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "delta":I
    .end local v2    # "height":I
    .end local v3    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v4    # "thumbHeight":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 97
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "delta":I
    .restart local v2    # "height":I
    .restart local v3    # "thumb":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "thumbHeight":I
    :cond_2
    sub-int v5, v2, v4

    :try_start_2
    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/AuraSeekBar;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, "thumbHeight":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "dw":I
    const/4 v0, 0x0

    .line 76
    .local v0, "dh":I
    if-nez v1, :cond_1

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 82
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    const/4 v4, 0x0

    .line 83
    invoke-static {v2, p1, v4}, Lcom/meizu/common/widget/AuraSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/AuraSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/AuraSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 85
    return-void

    .line 77
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v4, 0x7

    const/16 v5, 0x30

    .line 78
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .end local v0    # "dh":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 121
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return v3

    .line 118
    .end local v0    # "x":F
    :cond_1
    return v2

    .line 123
    .restart local v0    # "x":F
    :pswitch_0
    iput v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 128
    iput-boolean v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 129
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onProgressChanged()V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
