.class Lcom/meizu/sharewidget/widget/ShareViewGroup$2;
.super Ljava/lang/Object;
.source "ShareViewGroup.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/sharewidget/widget/ShareViewGroup;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;


# direct methods
.method constructor <init>(Lcom/meizu/sharewidget/widget/ShareViewGroup;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$2;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 301
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$2;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0, p1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->drawPoint(I)V

    .line 306
    return-void
.end method
