.class Lcom/meizu/common/widget/ActionMenuItemView$1;
.super Ljava/lang/Object;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ActionMenuItemView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ActionMenuItemView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-static {v0}, Lcom/meizu/common/widget/ActionMenuItemView;->access$000(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/PopupMenu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-static {v0}, Lcom/meizu/common/widget/ActionMenuItemView;->access$000(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-static {v0}, Lcom/meizu/common/widget/ActionMenuItemView;->access$100(Lcom/meizu/common/widget/ActionMenuItemView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ActionMenuItemView;->access$102(Lcom/meizu/common/widget/ActionMenuItemView;Z)Z

    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-static {v0}, Lcom/meizu/common/widget/ActionMenuItemView;->access$000(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 229
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$1;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-static {v0}, Lcom/meizu/common/widget/ActionMenuItemView;->access$200(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0
.end method
