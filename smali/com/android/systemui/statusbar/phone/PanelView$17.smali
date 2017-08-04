.class Lcom/android/systemui/statusbar/phone/PanelView$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->collapseThenDismissKeyguardOnKeyguardShade(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 1550
    return-void
.end method
