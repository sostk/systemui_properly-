.class Lcom/android/systemui/multiwindow/MultiWindowActivity$2;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-set0(Lcom/android/systemui/multiwindow/MultiWindowActivity;Z)Z

    .line 135
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get6(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->preloadAppInfo()V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v1

    if-lez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get2(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/PageIndicators;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/PageIndicators;->setIndicatorCount(I)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get2(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/PageIndicators;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get6(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v3}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get3(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/multiwindow/PageIndicators;->setCurrentPage(II)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-set1(Lcom/android/systemui/multiwindow/MultiWindowActivity;I)I

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get0(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;->notifyDataSetChanged()V

    .line 131
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$2;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
