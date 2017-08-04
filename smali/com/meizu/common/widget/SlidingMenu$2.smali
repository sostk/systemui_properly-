.class Lcom/meizu/common/widget/SlidingMenu$2;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SlidingMenu;->manageLayers(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SlidingMenu;

.field final synthetic val$layerType:I


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SlidingMenu;I)V
    .locals 0

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/meizu/common/widget/SlidingMenu$2;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    iput p2, p0, Lcom/meizu/common/widget/SlidingMenu$2;->val$layerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v1, "SlidingMenu"

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changing layerType. hardware? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/meizu/common/widget/SlidingMenu$2;->val$layerType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$2;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/SlidingMenu$2;->val$layerType:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1517
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$2;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu;->getMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/SlidingMenu$2;->val$layerType:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1518
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$2;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1522
    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1514
    goto :goto_0

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu$2;->this$0:Lcom/meizu/common/widget/SlidingMenu;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/SlidingMenu$2;->val$layerType:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method
