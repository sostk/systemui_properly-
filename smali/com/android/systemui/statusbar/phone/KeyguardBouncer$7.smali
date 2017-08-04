.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideAnimation(Ljava/lang/Runnable;)V
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
    .line 659
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setAlpha(F)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setTranslationY(F)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/keyguard/KeyguardViewBase;->setLayerType(ILandroid/graphics/Paint;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 661
    :cond_0
    return-void
.end method
