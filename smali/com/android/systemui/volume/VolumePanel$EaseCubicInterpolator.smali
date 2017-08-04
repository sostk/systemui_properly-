.class public Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EaseCubicInterpolator"
.end annotation


# instance fields
.field private final mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

.field private final mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

.field private mLastI:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    .line 1047
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$PointF;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel$PointF;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    .line 1048
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$PointF;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel$PointF;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iput p2, v0, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iput p3, v0, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iput p4, v0, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iput p5, v0, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    .line 1049
    return-void
.end method


# virtual methods
.method public cubicCurves(DDDDD)D
    .locals 15
    .param p1, "t"    # D
    .param p3, "value0"    # D
    .param p5, "value1"    # D
    .param p7, "value2"    # D
    .param p9, "value3"    # D

    .prologue
    .line 1078
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v4, v12, p1

    .line 1079
    .local v4, "u":D
    mul-double v0, p1, p1

    .line 1080
    .local v0, "tt":D
    mul-double v6, v4, v4

    .line 1081
    .local v6, "uu":D
    mul-double v8, v6, v4

    .line 1082
    .local v8, "uuu":D
    mul-double v2, v0, p1

    .line 1084
    .local v2, "ttt":D
    mul-double v10, v8, p3

    .line 1085
    .local v10, "value":D
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v6

    mul-double v12, v12, p1

    mul-double v12, v12, p5

    add-double/2addr v10, v12

    .line 1086
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v4

    mul-double/2addr v12, v0

    mul-double v12, v12, p7

    add-double/2addr v10, v12

    .line 1087
    mul-double v12, v2, p9

    add-double/2addr v10, v12

    .line 1088
    return-wide v10
.end method

.method public getInterpolation(F)F
    .locals 20
    .param p1, "input"    # F

    .prologue
    .line 1058
    move/from16 v14, p1

    .line 1059
    .local v14, "t":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_0

    .line 1060
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x45800000    # 4096.0f

    div-float v14, v3, v4

    .line 1061
    float-to-double v4, v14

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget v3, v3, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget v3, v3, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    float-to-double v10, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->cubicCurves(DDDDD)D

    move-result-wide v18

    .line 1062
    .local v18, "x":D
    move/from16 v0, p1

    float-to-double v4, v0

    cmpl-double v3, v18, v4

    if-ltz v3, :cond_2

    .line 1063
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    .line 1067
    .end local v18    # "x":D
    :cond_0
    float-to-double v4, v14

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget v3, v3, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget v3, v3, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    float-to-double v10, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->cubicCurves(DDDDD)D

    move-result-wide v16

    .line 1068
    .local v16, "value":D
    const-wide v4, 0x3feff7ced916872bL    # 0.999

    cmpl-double v3, v16, v4

    if-lez v3, :cond_1

    .line 1069
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 1070
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    .line 1072
    :cond_1
    move-wide/from16 v0, v16

    double-to-float v3, v0

    return v3

    .line 1059
    .end local v16    # "value":D
    .restart local v18    # "x":D
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
