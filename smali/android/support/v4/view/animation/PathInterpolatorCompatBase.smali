.class Landroid/support/v4/view/animation/PathInterpolatorCompatBase;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatBase.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F

    .prologue
    .line 41
    new-instance v0, Landroid/support/v4/view/animation/PathInterpolatorDonut;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/view/animation/PathInterpolatorDonut;-><init>(FFFF)V

    return-object v0
.end method
