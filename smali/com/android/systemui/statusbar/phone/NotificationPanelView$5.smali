.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x1c0

    const/4 v6, 0x1

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get21(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 1459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1460
    const/4 v1, 0x0

    .line 1459
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1461
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    .line 1459
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 1459
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1467
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSContainer;->getTranslationY()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 1468
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get21(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1469
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v5

    .line 1468
    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    .line 1466
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get19(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1476
    return v6
.end method
