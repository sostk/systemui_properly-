.class public Lcom/flyme/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# instance fields
.field public alpha:F

.field public dim:F

.field public p:F

.field public rect:Landroid/graphics/Rect;

.field public scale:F

.field public startDelay:I

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 29
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 30
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 31
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 32
    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 33
    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 34
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 36
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    .line 37
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 39
    return-void
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 168
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 170
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 164
    return-void
.end method


# virtual methods
.method public applyToTaskView(Lcom/flyme/systemui/recents/views/TaskView;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 6
    .param p1, "v"    # Lcom/flyme/systemui/recents/views/TaskView;
    .param p2, "duration"    # I
    .param p3, "interp"    # Landroid/view/animation/Interpolator;
    .param p4, "allowLayers"    # Z
    .param p5, "allowShadows"    # Z
    .param p6, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v4, 0x0

    .line 99
    if-lez p2, :cond_8

    .line 100
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    .line 104
    .local v1, "requiresLayers":Z
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 112
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 117
    iget v3, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 118
    const/4 v1, 0x1

    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 123
    const/4 v1, 0x1

    .line 125
    :cond_4
    if-eqz v1, :cond_5

    if-eqz p4, :cond_5

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 128
    :cond_5
    if-eqz p6, :cond_7

    .line 129
    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 133
    :goto_0
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->startDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 134
    int-to-long v4, p2

    .line 133
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "requiresLayers":Z
    :cond_6
    :goto_1
    return-void

    .line 131
    .restart local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .restart local v1    # "requiresLayers":Z
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 141
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "requiresLayers":Z
    :cond_8
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasTranslationXChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 142
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 144
    :cond_9
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 145
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 147
    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 148
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 150
    :cond_b
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 151
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 152
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 154
    :cond_c
    invoke-virtual {p1}, Lcom/flyme/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/recents/views/TaskViewTransform;->hasDimChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    iget v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/recents/views/TaskView;->setDim(F)V

    goto :goto_1
.end method

.method public hasAlphaChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 75
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDimChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasScaleChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 78
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTranslationXChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 82
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTranslationYChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 85
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 88
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 63
    iput v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 64
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 65
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 66
    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 67
    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 68
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 70
    iput v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TaskViewTransform delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->startDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, " scale: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, " alpha: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, " visible: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, " rect: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    const-string/jumbo v1, " p: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    iget v1, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/flyme/systemui/recents/views/TaskViewTransform;)V
    .locals 2
    .param p1, "o"    # Lcom/flyme/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 48
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->startDelay:I

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 49
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationX:F

    .line 50
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationY:F

    .line 51
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 52
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->scale:F

    .line 53
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 54
    iget-boolean v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->p:F

    .line 57
    iget v0, p1, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    iput v0, p0, Lcom/flyme/systemui/recents/views/TaskViewTransform;->dim:F

    .line 47
    return-void
.end method
