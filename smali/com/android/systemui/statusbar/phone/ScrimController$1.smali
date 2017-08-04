.class Lcom/android/systemui/statusbar/phone/ScrimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "val$scrim"    # Lcom/android/systemui/statusbar/ScrimView;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set0(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Lcom/android/systemui/statusbar/ScrimView;

    const v1, 0x7f0f004b

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 287
    return-void
.end method
