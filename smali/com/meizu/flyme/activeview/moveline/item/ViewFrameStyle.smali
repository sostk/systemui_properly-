.class public Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;
.super Ljava/lang/Object;
.source "ViewFrameStyle.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;


# instance fields
.field protected final mStyleValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mToUpdateStyles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mToUpdateStyles:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private buildPathMeasure(Ljava/util/List;)Landroid/graphics/PathMeasure;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)",
            "Landroid/graphics/PathMeasure;"
        }
    .end annotation

    .prologue
    .local p1, "trackPaths":Ljava/util/List;, "Ljava/util/List<[F>;"
    const/4 v7, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    if-nez p1, :cond_1

    :cond_0
    return-object v7

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .local v3, "path":Landroid/graphics/Path;
    const/4 v6, 0x2

    .line 81
    new-array v5, v6, [F

    .local v5, "pointPrev":[F
    const/4 v2, 0x0

    .line 82
    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 100
    new-instance v6, Landroid/graphics/PathMeasure;

    invoke-direct {v6, v3, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    return-object v6

    .line 83
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 84
    .local v4, "point":[F
    if-eqz v2, :cond_3

    .line 87
    aget v6, v4, v8

    aget v7, v5, v8

    add-float/2addr v6, v7

    div-float v0, v6, v10

    .line 88
    .local v0, "cX":F
    aget v6, v4, v9

    aget v7, v5, v9

    add-float/2addr v6, v7

    div-float v1, v6, v10

    .line 90
    .local v1, "cY":F
    aget v6, v5, v8

    aget v7, v5, v9

    invoke-virtual {v3, v6, v7, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_4

    .line 98
    .end local v0    # "cX":F
    .end local v1    # "cY":F
    :goto_1
    move-object v5, v4

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_3
    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 93
    .restart local v0    # "cX":F
    .restart local v1    # "cY":F
    :cond_4
    aget v6, v4, v8

    add-float/2addr v6, v0

    div-float v0, v6, v10

    .line 94
    aget v6, v4, v9

    add-float/2addr v6, v1

    div-float v1, v6, v10

    .line 95
    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {v3, v0, v1, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1
.end method


# virtual methods
.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValueType(Ljava/lang/String;)Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 129
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->OTHER:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-object v0

    :sswitch_0
    const-string/jumbo v2, "left"

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "scaleX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "scaleY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "rotationX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "rotationY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "trackPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 124
    :pswitch_0
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->FLOAT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-object v0

    .line 126
    :pswitch_1
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->OTHER:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-object v0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_5
        -0x4a771f65 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_2
        -0x3621dfb1 -> :sswitch_3
        -0x266f082 -> :sswitch_4
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x589b15e -> :sswitch_7
        0x2b7e2c10 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUpdateProperties()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mToUpdateStyles:Ljava/util/Set;

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "alpha"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 64
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setLeft(F)V
    .locals 3
    .param p1, "left"    # F

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "left"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    const-string/jumbo v1, "left"

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "top"

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "scaleX"

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "scaleY"

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "rotationX"

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "rotationY"

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "alpha"

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "rotation"

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "trackPath"

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_8

    .line 165
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mToUpdateStyles:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    return-void

    .line 136
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setLeft(F)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "moveline"

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the value type of the property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is illegal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_2
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setTop(F)V

    goto :goto_0

    .line 142
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setScaleX(F)V

    goto :goto_0

    .line 145
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setScaleY(F)V

    goto :goto_0

    .line 148
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setRotationX(F)V

    goto :goto_0

    .line 151
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setRotationY(F)V

    goto :goto_0

    .line 154
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setAlpha(F)V

    goto :goto_0

    .line 157
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setRotation(F)V

    goto :goto_0

    .line 159
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setTrackPath(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public setRotation(F)V
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "rotation"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public setRotationX(F)V
    .locals 3
    .param p1, "rotationX"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "rotationX"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setRotationY(F)V
    .locals 3
    .param p1, "rotationY"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "rotationY"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public setScaleX(F)V
    .locals 3
    .param p1, "scaleX"    # F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "scaleX"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public setScaleY(F)V
    .locals 3
    .param p1, "scaleY"    # F

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "scaleY"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setTop(F)V
    .locals 3
    .param p1, "top"    # F

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "top"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setTrackPath(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "trackPath":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->buildPathMeasure(Ljava/util/List;)Landroid/graphics/PathMeasure;

    move-result-object v0

    .line 75
    .local v0, "pathMeasure":Landroid/graphics/PathMeasure;
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v2, "trackPath"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
