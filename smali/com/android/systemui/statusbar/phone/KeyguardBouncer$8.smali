.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideKeyguardViewAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardViewBase;->setAlpha(F)V

    .line 696
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 697
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewBase;->setTranslationY(F)V

    .line 694
    return-void
.end method
