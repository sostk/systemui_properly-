.class public Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;
.super Ljava/lang/Object;
.source "KeyguardIntelligentHolsterView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolsterOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 476
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v0, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v0, v0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 469
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-set0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;I)I

    .line 461
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Lcom/meizu/keyguard/PageIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get0(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Lcom/meizu/keyguard/PageIndicators;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get4(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/meizu/keyguard/PageIndicators;->setCurrentPage(II)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-set1(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;I)I

    .line 464
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterOnPageChangeListener;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setColor()V

    .line 459
    :cond_0
    return-void
.end method
