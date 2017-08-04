.class public Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;
.super Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;
.source "BlurViewFrameStyle.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;-><init>()V

    .line 16
    return-void
.end method

.method private setBlur(F)V
    .locals 3
    .param p1, "blurLevel"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    const-string/jumbo v1, "blur"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;->mStyleValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValueType(Ljava/lang/String;)Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "blur"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->getPropertyValueType(Ljava/lang/String;)Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->FLOAT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-object v0
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
    .line 20
    iget-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;->mToUpdateStyles:Ljava/util/Set;

    return-object v0
.end method

.method public setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    const-string/jumbo v1, "blur"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/activeview/moveline/item/ViewFrameStyle;->setPropertyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 42
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;->setBlur(F)V

    .line 43
    iget-object v1, p0, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;->mToUpdateStyles:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "moveline"

    .line 48
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
.end method
