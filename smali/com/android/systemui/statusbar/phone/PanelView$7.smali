.class Lcom/android/systemui/statusbar/phone/PanelView$7;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$realDuration:F

.field final synthetic val$realInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/TimeInterpolator;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "val$realInterpolator"    # Landroid/animation/TimeInterpolator;
    .param p3, "val$realDuration"    # F

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realInterpolator:Landroid/animation/TimeInterpolator;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realDuration:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, "result":F
    const/4 v0, 0x0

    .line 801
    .local v0, "in":F
    cmpl-float v2, p1, v6

    if-nez v2, :cond_0

    .line 802
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v2, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 814
    :goto_0
    return v1

    .line 804
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realDuration:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-wide v4, v3, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 805
    cmpg-float v2, p1, v6

    if-gez v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realInterpolator:Landroid/animation/TimeInterpolator;

    .line 807
    const v3, 0x3f7fbe77    # 0.999f

    .line 806
    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_0

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realInterpolator:Landroid/animation/TimeInterpolator;

    .line 811
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-wide v4, v3, Lcom/android/systemui/statusbar/phone/PanelView;->PANEL_FLING_BACK_MIN_DURATION:J

    long-to-float v3, v4

    .line 810
    mul-float/2addr v3, p1

    .line 812
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView$7;->val$realDuration:F

    .line 810
    div-float/2addr v3, v4

    .line 809
    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_0
.end method
