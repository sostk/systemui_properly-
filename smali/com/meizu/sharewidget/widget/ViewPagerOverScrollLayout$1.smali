.class Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$1;
.super Ljava/lang/Object;
.source "ViewPagerOverScrollLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;


# direct methods
.method constructor <init>(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-static {v0, p2}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->access$002(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;F)F

    .line 67
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout$1;->this$0:Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;

    invoke-static {v0, p1}, Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;->access$102(Lcom/meizu/sharewidget/widget/ViewPagerOverScrollLayout;I)I

    .line 72
    return-void
.end method
