.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;
.super Ljava/lang/Object;
.source "ExpandableListPreference.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimInterpolator"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;


# direct methods
.method private constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Lcom/meizu/common/preference/ExpandableListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;
    .param p2, "x1"    # Lcom/meizu/common/preference/ExpandableListPreference$1;

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 465
    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method
