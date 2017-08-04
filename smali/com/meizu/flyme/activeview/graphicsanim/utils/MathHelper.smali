.class public Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;
.super Ljava/lang/Object;
.source "MathHelper.java"


# static fields
.field public static rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->rand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlexibleValue(FF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "amplitude"    # F

    .prologue
    .line 22
    sget-object v0, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method public static randomRange(FF)F
    .locals 4
    .param p0, "min"    # F
    .param p1, "max"    # F

    .prologue
    .line 10
    sget-object v1, Lcom/meizu/flyme/activeview/graphicsanim/utils/MathHelper;->rand:Ljava/util/Random;

    float-to-int v2, p1

    float-to-int v3, p0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    float-to-int v2, p0

    add-int v0, v1, v2

    .line 12
    .local v0, "randomNum":I
    int-to-float v1, v0

    return v1
.end method
