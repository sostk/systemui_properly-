.class Lcom/android/systemui/volume/VolumePanel$11;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v9, 0x40000000    # 2.0f

    .line 1008
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/VolumePanel$AnimationValue;

    .line 1009
    .local v6, "value":Lcom/android/systemui/volume/VolumePanel$AnimationValue;
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get4(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;

    move-result-object v7

    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->r:F

    invoke-virtual {v7, v8}, Landroid/view/View;->setRotation(F)V

    .line 1010
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get6(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1011
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v6, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    add-float/2addr v7, v9

    const/high16 v8, 0x41100000    # 9.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    mul-float/2addr v7, v10

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v2, v7, v8

    .line 1012
    .local v2, "heightFactor":F
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get10(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1013
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get6(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    iget v7, v6, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->y:F

    add-float/2addr v7, v9

    div-float/2addr v7, v9

    mul-float/2addr v7, v10

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v8}, Lcom/android/systemui/volume/VolumePanel;->-get10(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v8

    int-to-float v8, v8

    mul-float v0, v7, v8

    .line 1015
    .local v0, "Y":F
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get7(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setY(F)V

    .line 1017
    monitor-enter p0

    .line 1018
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get7(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1019
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1020
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->-get7(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1021
    .local v5, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamTv:Landroid/widget/TextView;

    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$AnimationValue;->a:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    monitor-exit p0

    .line 1007
    return-void

    .line 1017
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
