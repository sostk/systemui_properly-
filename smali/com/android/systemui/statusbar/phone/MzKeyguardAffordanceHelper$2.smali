.class Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;
.super Ljava/lang/Object;
.source "MzKeyguardAffordanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get1(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get2(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get2(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 105
    :cond_0
    return-void
.end method
