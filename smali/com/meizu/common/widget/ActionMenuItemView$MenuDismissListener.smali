.class Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;
.super Ljava/lang/Object;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ActionMenuItemView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ActionMenuItemView;->access$102(Lcom/meizu/common/widget/ActionMenuItemView;Z)Z

    .line 352
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;->this$0:Lcom/meizu/common/widget/ActionMenuItemView;

    invoke-static {v0}, Lcom/meizu/common/widget/ActionMenuItemView;->access$200(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 353
    return-void
.end method
