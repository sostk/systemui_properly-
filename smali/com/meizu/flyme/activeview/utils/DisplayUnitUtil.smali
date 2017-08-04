.class public Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;
.super Ljava/lang/Object;
.source "DisplayUnitUtil.java"


# static fields
.field static final DISPLAY_UNIT_DIP:Ljava/lang/String; = "dip"

.field static final DISPLAY_UNIT_DP:Ljava/lang/String; = "dp"

.field static final DISPLAY_UNIT_PX:Ljava/lang/String; = "px"

.field static final DISPLAY_UNIT_SP:Ljava/lang/String; = "sp"

.field private static final LOG_TAG:Ljava/lang/String; = "DisplayUnitUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getPixelValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 14
    if-nez p0, :cond_1

    .line 15
    :cond_0
    return v4

    .line 14
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "sp"

    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "dp"

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "dip"

    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v1, "px"

    .local v1, "unitStr":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "value":I
    :try_start_0
    const-string/jumbo v3, "dp"

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "dip"

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "sp"

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v2, v3

    .line 47
    :goto_1
    return v2

    .end local v1    # "unitStr":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_2
    const-string/jumbo v1, "sp"

    .line 20
    .restart local v1    # "unitStr":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "unitStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "dp"

    .line 22
    .restart local v1    # "unitStr":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "unitStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "dip"

    .line 24
    .restart local v1    # "unitStr":Ljava/lang/String;
    goto :goto_0

    .restart local v2    # "value":I
    :cond_5
    const/4 v3, 0x0

    .line 31
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {p0, v3}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {p0, v3}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {p0, v3}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->sp2px(Landroid/content/Context;F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DisplayUnitUtil"

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getPixelValue(Landroid/content/Context;Ljava/lang/String;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unitStr"    # Ljava/lang/String;
    .param p2, "srcValue"    # F

    .prologue
    .line 51
    if-nez p0, :cond_1

    .line 52
    :cond_0
    float-to-int v1, p2

    return v1

    .line 51
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "dp"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "dip"

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "sp"

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    float-to-int v0, p2

    .line 69
    .local v0, "value":I
    :goto_0
    return v0

    .line 57
    .end local v0    # "value":I
    :cond_2
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0

    .line 60
    .end local v0    # "value":I
    :cond_3
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0

    .line 63
    .end local v0    # "value":I
    :cond_4
    invoke-static {p0, p2}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->sp2px(Landroid/content/Context;F)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 102
    .local v0, "fontScale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 113
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
