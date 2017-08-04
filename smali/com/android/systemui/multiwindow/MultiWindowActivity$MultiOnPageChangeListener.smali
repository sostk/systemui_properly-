.class public Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 426
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 422
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get2(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/PageIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get2(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/PageIndicators;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get3(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/multiwindow/PageIndicators;->setCurrentPage(II)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$MultiOnPageChangeListener;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0, p1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-set1(Lcom/android/systemui/multiwindow/MultiWindowActivity;I)I

    .line 413
    :cond_0
    return-void
.end method
