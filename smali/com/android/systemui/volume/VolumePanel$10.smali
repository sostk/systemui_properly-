.class Lcom/android/systemui/volume/VolumePanel$10;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/systemui/volume/VolumePanel$AnimationValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/systemui/volume/VolumePanel$AnimationValue;Lcom/android/systemui/volume/VolumePanel$AnimationValue;)Lcom/android/systemui/volume/VolumePanel$AnimationValue;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lcom/android/systemui/volume/VolumePanel$AnimationValue;
    .param p3, "endValue"    # Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    .prologue
    .line 994
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel$AnimationValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 995
    .local v0, "value":Lcom/android/systemui/volume/VolumePanel$AnimationValue;
    iget v1, p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->r:F

    iget v2, p3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->r:F

    iget v3, p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->r:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->r:F

    .line 996
    iget v1, p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->a:F

    iget v2, p3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->a:F

    iget v3, p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->a:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->a:F

    .line 997
    iget v1, p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    iget v2, p3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    iget v3, p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    .line 998
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 992
    check-cast p2, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel$10;->evaluate(FLcom/android/systemui/volume/VolumePanel$AnimationValue;Lcom/android/systemui/volume/VolumePanel$AnimationValue;)Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    move-result-object v0

    return-object v0
.end method
