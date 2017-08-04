.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;
.super Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarqueeTickerHolster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sb"    # Landroid/view/View;

    .prologue
    .line 3856
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3857
    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3856
    return-void
.end method


# virtual methods
.method public tickerDone()V
    .locals 4

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get47(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x7f050049

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get47(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    const v3, 0x7f05004c

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3870
    return-void
.end method

.method public tickerHalting()V
    .locals 4

    .prologue
    .line 3878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get47(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v2, 0x10a0000

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3877
    return-void
.end method

.method public tickerStarting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get47(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get47(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x7f05004b

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MarqueeTickerHolster;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x7f05004a

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3861
    return-void
.end method
