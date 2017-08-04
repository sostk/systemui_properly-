.class Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get5(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 406
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get4(Lcom/android/systemui/multiwindow/MultiWindowActivity;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get5(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$LaunchPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get5(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 402
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
