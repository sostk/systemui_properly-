.class Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;
.super Ljava/lang/Object;
.source "KeyguardIntelligentHolsterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-static {}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get5()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get5()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get5()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get1(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->notifyDataSetChanged()V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Lcom/meizu/keyguard/PageIndicators;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$3;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/PageIndicators;->setIndicatorCount(I)V

    .line 611
    return-void
.end method
