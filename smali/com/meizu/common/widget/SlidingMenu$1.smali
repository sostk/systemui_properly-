.class Lcom/meizu/common/widget/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/meizu/common/widget/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final POSITION_CLOSE:I = 0x1

.field public static final POSITION_OPEN:I


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SlidingMenu;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v0}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v0}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;->onScrolling(I)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 533
    if-eqz p1, :cond_2

    .line 537
    :cond_0
    if-eq p1, v2, :cond_3

    .line 542
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v1

    if-nez v1, :cond_4

    .line 551
    :goto_1
    return-void

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$100(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$100(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;->onOpen()V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$200(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$200(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;->onClose()V

    goto :goto_0

    .line 544
    :cond_4
    if-eq p1, v2, :cond_5

    .line 547
    sget-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->OPEN:Lcom/meizu/common/widget/SlidingMenu$State;

    .line 549
    .local v0, "state":Lcom/meizu/common/widget/SlidingMenu$State;
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu$1;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-static {v1}, Lcom/meizu/common/widget/SlidingMenu;->access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;->onMenuState(Lcom/meizu/common/widget/SlidingMenu$State;)V

    goto :goto_1

    .line 545
    .end local v0    # "state":Lcom/meizu/common/widget/SlidingMenu$State;
    :cond_5
    sget-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->CLOSE:Lcom/meizu/common/widget/SlidingMenu$State;

    .restart local v0    # "state":Lcom/meizu/common/widget/SlidingMenu$State;
    goto :goto_2
.end method
