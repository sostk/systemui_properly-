.class public Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
.super Ljava/lang/Object;
.source "ViewTweenItem.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/moveline/item/TweenItem;


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final TRACK_PATH:Ljava/lang/String; = "trackPath"


# instance fields
.field protected mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method


# virtual methods
.method public buildFrameStyle()Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;

    invoke-direct {v0}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;-><init>()V

    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 95
    .local v0, "targetView":Landroid/view/View;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "left"

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "top"

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "scaleX"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "scaleY"

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "rotationX"

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "rotationY"

    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "alpha"

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "rotation"

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "trackPath"

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :cond_0
    return-object v2

    .line 95
    :cond_1
    return-object v2

    .line 97
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 100
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 103
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 106
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 109
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 112
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 115
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 118
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public isUpdatable()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replaceTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "newTarget"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method

.method public updateProperty(Ljava/lang/String;Ljava/lang/Object;F)V
    .locals 14
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "fraction"    # F

    .prologue
    .line 47
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 48
    .local v8, "targetView":Landroid/view/View;
    if-eqz v8, :cond_0

    :try_start_0
    const-string/jumbo v11, "left"

    .line 50
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "top"

    .line 53
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "scaleX"

    .line 56
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "scaleY"

    .line 59
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "rotationX"

    .line 62
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "rotationY"

    .line 65
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "alpha"

    .line 68
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "rotation"

    .line 71
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "trackPath"

    .line 74
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 90
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 48
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    return-void

    .line 51
    :cond_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationX(F)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v11, "moveline"

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "the value type of the property "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is illegal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 57
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 60
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 63
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 66
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 69
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 72
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p2

    check-cast v0, Landroid/graphics/PathMeasure;

    move-object v7, v0

    .line 76
    .local v7, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 77
    .local v6, "length":F
    mul-float v2, v6, p3

    .local v2, "distance":F
    const/4 v11, 0x2

    .line 78
    new-array v1, v11, [F

    .local v1, "curPosition":[F
    const/4 v11, 0x0

    .line 79
    invoke-virtual {v7, v2, v1, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 80
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 81
    .local v10, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .local v4, "height":I
    const/4 v11, 0x0

    .line 82
    aget v11, v1, v11

    div-int/lit8 v12, v10, 0x2

    int-to-float v12, v12

    sub-float v5, v11, v12

    .local v5, "left":F
    const/4 v11, 0x1

    .line 83
    aget v11, v1, v11

    div-int/lit8 v12, v4, 0x2

    int-to-float v12, v12

    sub-float v9, v11, v12

    .line 84
    .local v9, "top":F
    invoke-virtual {v8, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
