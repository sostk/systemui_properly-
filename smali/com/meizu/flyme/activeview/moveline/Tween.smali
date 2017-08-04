.class public Lcom/meizu/flyme/activeview/moveline/Tween;
.super Lcom/meizu/flyme/activeview/moveline/Animation;
.source "Tween.java"


# instance fields
.field private mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

.field private mTarget:Lcom/meizu/flyme/activeview/moveline/item/TweenItem;

.field private final mTargetFromValues:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/activeview/moveline/item/TweenItem;ILcom/meizu/flyme/activeview/moveline/item/FrameStyle;)V
    .locals 1
    .param p1, "target"    # Lcom/meizu/flyme/activeview/moveline/item/TweenItem;
    .param p2, "duration"    # I
    .param p3, "itemStyle"    # Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/Animation;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTarget:Lcom/meizu/flyme/activeview/moveline/item/TweenItem;

    .line 23
    iput p2, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->duration:I

    .line 24
    iput-object p3, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTargetFromValues:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private updateFrame(F)V
    .locals 13
    .param p1, "fraction"    # F

    .prologue
    .line 79
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    if-nez v11, :cond_1

    .line 121
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    invoke-interface {v11}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->getUpdateProperties()Ljava/util/Set;

    move-result-object v9

    .line 81
    .local v9, "updateStyles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 82
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 83
    .local v7, "property":Ljava/lang/String;
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    invoke-interface {v11, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->getPropertyValueType(Ljava/lang/String;)Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    move-result-object v10

    .line 85
    .local v10, "valueType":Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;
    sget-object v11, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->OTHER:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    if-eq v10, v11, :cond_3

    .line 89
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTargetFromValues:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 93
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTargetFromValues:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "fromValue":Ljava/lang/Object;
    :goto_1
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    invoke-interface {v11, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 97
    .local v8, "toValue":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 98
    :cond_2
    return-void

    .line 86
    .end local v0    # "fromValue":Ljava/lang/Object;
    .end local v8    # "toValue":Ljava/lang/Object;
    :cond_3
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    invoke-interface {v11, v7}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;->getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 114
    .local v6, "newValue":Ljava/lang/Object;
    :goto_2
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTarget:Lcom/meizu/flyme/activeview/moveline/item/TweenItem;

    invoke-interface {v11, v7, v6, p1}, Lcom/meizu/flyme/activeview/moveline/item/TweenItem;->updateProperty(Ljava/lang/String;Ljava/lang/Object;F)V

    goto :goto_0

    .line 90
    .end local v6    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTarget:Lcom/meizu/flyme/activeview/moveline/item/TweenItem;

    invoke-interface {v11, v7}, Lcom/meizu/flyme/activeview/moveline/item/TweenItem;->getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .restart local v0    # "fromValue":Ljava/lang/Object;
    iget-object v11, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTargetFromValues:Ljava/util/Map;

    invoke-interface {v11, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    .restart local v8    # "toValue":Ljava/lang/Object;
    :cond_5
    if-eqz v8, :cond_2

    .line 101
    sget-object v11, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->INT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    if-eq v10, v11, :cond_6

    .line 107
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "fromValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 108
    .local v2, "intFromValue":F
    check-cast v8, Ljava/lang/Float;

    .end local v8    # "toValue":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 109
    .local v4, "intToValue":F
    sub-float v11, v4, v2

    mul-float/2addr v11, p1

    add-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .restart local v6    # "newValue":Ljava/lang/Object;
    goto :goto_2

    .line 102
    .end local v2    # "intFromValue":F
    .end local v4    # "intToValue":F
    .end local v6    # "newValue":Ljava/lang/Object;
    .restart local v0    # "fromValue":Ljava/lang/Object;
    .restart local v8    # "toValue":Ljava/lang/Object;
    :cond_6
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "fromValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 103
    .local v3, "intFromValue":I
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "toValue":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 104
    .local v5, "intToValue":I
    int-to-float v11, v3

    sub-int v12, v5, v3

    int-to-float v12, v12

    mul-float/2addr v12, p1

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .restart local v6    # "newValue":Ljava/lang/Object;
    goto :goto_2
.end method


# virtual methods
.method public getFrameStyle()Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mFrameStyle:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;

    return-object v0
.end method

.method protected initAnimationValue()V
    .locals 7

    .prologue
    .line 130
    iget-object v5, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTargetFromValues:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 138
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v5, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTargetFromValues:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 132
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 135
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTarget:Lcom/meizu/flyme/activeview/moveline/item/TweenItem;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v4, v6}, Lcom/meizu/flyme/activeview/moveline/item/TweenItem;->updateProperty(Ljava/lang/String;Ljava/lang/Object;F)V

    goto :goto_0
.end method

.method protected update(J)V
    .locals 13
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "isComplete":Z
    iget-wide v2, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->time:J

    .line 35
    .local v2, "prevTime":J
    iget v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->duration:I

    int-to-long v8, v4

    cmp-long v4, p1, v8

    if-gez v4, :cond_0

    move v4, v5

    :goto_0
    if-nez v4, :cond_1

    .line 36
    iget v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->duration:I

    int-to-long v8, v4

    iput-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->time:J

    .line 37
    const/4 v1, 0x1

    .line 44
    :goto_1
    iget-wide v8, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->time:J

    cmp-long v4, v2, v8

    if-nez v4, :cond_4

    .line 45
    return-void

    :cond_0
    move v4, v6

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    cmp-long v4, p1, v10

    if-ltz v4, :cond_2

    move v4, v5

    :goto_2
    if-nez v4, :cond_3

    .line 39
    iput-wide v10, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->time:J

    .line 40
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    .line 38
    goto :goto_2

    .line 42
    :cond_3
    iput-wide p1, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->time:J

    goto :goto_1

    .line 47
    :cond_4
    iget v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mPlayingState:I

    if-ne v4, v5, :cond_5

    .line 51
    :goto_3
    iget-boolean v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->isActive:Z

    if-eqz v4, :cond_6

    .line 54
    :goto_4
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mTarget:Lcom/meizu/flyme/activeview/moveline/item/TweenItem;

    invoke-interface {v4}, Lcom/meizu/flyme/activeview/moveline/item/TweenItem;->isUpdatable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 60
    iget-wide v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->time:J

    long-to-float v4, v4

    iget v5, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->duration:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 62
    .local v0, "fraction":F
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Tween;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    if-nez v4, :cond_8

    .line 64
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    if-nez v4, :cond_9

    .line 68
    :goto_5
    invoke-direct {p0, v0}, Lcom/meizu/flyme/activeview/moveline/Tween;->updateFrame(F)V

    .line 71
    .end local v0    # "fraction":F
    :goto_6
    if-nez v1, :cond_a

    .line 76
    :goto_7
    return-void

    .line 48
    :cond_5
    iput v5, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mPlayingState:I

    .line 49
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Tween;->notifyStartListeners()V

    goto :goto_3

    .line 52
    :cond_6
    iput-boolean v5, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->isActive:Z

    goto :goto_4

    .line 55
    :cond_7
    const/4 v1, 0x1

    goto :goto_6

    .line 63
    .restart local v0    # "fraction":F
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Tween;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_5

    .line 65
    :cond_9
    iget-object v4, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->timeline:Lcom/meizu/flyme/activeview/moveline/BaseTimeline;

    invoke-virtual {v4}, Lcom/meizu/flyme/activeview/moveline/BaseTimeline;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_5

    .line 72
    .end local v0    # "fraction":F
    :cond_a
    invoke-virtual {p0, v6}, Lcom/meizu/flyme/activeview/moveline/Tween;->setActive(Z)V

    .line 73
    iput v6, p0, Lcom/meizu/flyme/activeview/moveline/Tween;->mPlayingState:I

    .line 74
    invoke-virtual {p0}, Lcom/meizu/flyme/activeview/moveline/Tween;->notifyEndListeners()V

    goto :goto_7
.end method
