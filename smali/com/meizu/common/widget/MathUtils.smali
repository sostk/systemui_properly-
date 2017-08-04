.class final Lcom/meizu/common/widget/MathUtils;
.super Ljava/lang/Object;
.source "Switch.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 1755
    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "v":F
    :goto_0
    return p0

    .restart local p0    # "v":F
    :cond_0
    neg-float p0, p0

    goto :goto_0
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 1759
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static log(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 1763
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1767
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1775
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move p2, p0

    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "c":F
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static max(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1771
    if-gt p0, p1, :cond_0

    int-to-float v0, p1

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    goto :goto_0
.end method

.method public static max(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1779
    if-gt p0, p1, :cond_1

    if-gt p1, p2, :cond_2

    .end local p2    # "c":I
    :cond_0
    :goto_0
    int-to-float v0, p2

    return v0

    .restart local p2    # "c":I
    :cond_1
    if-le p0, p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_2
    move p2, p1

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1783
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1791
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    cmpg-float v0, p0, p2

    if-gez v0, :cond_0

    move p2, p0

    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "c":F
    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static min(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1787
    if-lt p0, p1, :cond_0

    int-to-float v0, p1

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    goto :goto_0
.end method

.method public static min(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1795
    if-lt p0, p1, :cond_1

    if-lt p1, p2, :cond_2

    .end local p2    # "c":I
    :cond_0
    :goto_0
    int-to-float v0, p2

    return v0

    .restart local p2    # "c":I
    :cond_1
    if-ge p0, p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_2
    move p2, p1

    goto :goto_0
.end method
