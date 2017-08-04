.class Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzKeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;
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
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get3(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-set1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-wrap0(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Z)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get0(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 114
    return-void
.end method
