.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;
.super Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMarqueeTicker"
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
    .line 3818
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3819
    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3818
    return-void
.end method


# virtual methods
.method public tickerDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f050049

    const/4 v1, 0x0

    .line 3835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3838
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    const v3, 0x7f05004c

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3834
    return-void
.end method

.method public tickerHalting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x10a0000

    const/4 v1, 0x0

    .line 3844
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3843
    :cond_0
    return-void
.end method

.method public tickerStarting()V
    .locals 5

    .prologue
    const v4, 0x7f05004a

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 3824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x7f05004b

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyMarqueeTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3823
    return-void
.end method
