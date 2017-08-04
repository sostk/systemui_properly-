.class public Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "KeyguardIntelligentHolsterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolsterPagerAdapter"
.end annotation


# instance fields
.field public mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "mListViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 401
    invoke-static {p1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->mListViews:Ljava/util/List;

    .line 400
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 418
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView$HolsterPagerAdapter;->this$0:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-static {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->-get2(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)Ljava/util/ArrayList;

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
    .line 415
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
