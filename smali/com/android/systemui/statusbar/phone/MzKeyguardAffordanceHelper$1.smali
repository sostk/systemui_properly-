.class Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;
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
    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-set1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-wrap0(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;Z)V

    .line 97
    return-void
.end method
