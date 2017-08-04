.class Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;
.super Ljava/lang/Object;
.source "MzKeyguardAffordanceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->fling(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-set2(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;F)F

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get3(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->setBottomAreaTranslation(F)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$8;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get3(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-wrap1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;F)V

    .line 459
    return-void
.end method
