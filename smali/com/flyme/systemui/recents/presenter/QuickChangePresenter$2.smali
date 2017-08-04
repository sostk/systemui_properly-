.class Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;
.super Ljava/lang/Object;
.source "QuickChangePresenter.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    const v3, 0x3d4ccccd    # 0.05f

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get1(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get3(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get0(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onStop()V

    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-set0(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;Z)Z

    .line 51
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get3(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get3(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v2}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v2

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-set2(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;F)F

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get7(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Lcom/flyme/systemui/recents/views/IQuickChangeView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get2(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Z

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v2}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->update(ZF)V

    .line 46
    return-void

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get3(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get3(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$2;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v2}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get5(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)F

    move-result v2

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-set2(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;F)F

    goto :goto_0

    .line 58
    :cond_3
    return-void
.end method
