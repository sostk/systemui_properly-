.class Lcom/meizu/common/app/PermissionDialogBuilder$5;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/PermissionDialogBuilder;->create()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/PermissionDialogBuilder;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    iput-object p2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-virtual {v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v2

    if-nez v2, :cond_2

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$100(Lcom/meizu/common/app/PermissionDialogBuilder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_3

    .line 200
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->val$alertDialog:Landroid/app/AlertDialog;

    const v3, 0x102001c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 201
    .local v0, "dialogParentView":Landroid/widget/LinearLayout;
    if-nez v0, :cond_4

    .line 205
    :goto_2
    return-void

    .line 191
    .end local v0    # "dialogParentView":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-virtual {v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->isPerformanceTest()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-virtual {v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->isShopDemo()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v2}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v2

    invoke-interface {v2, p1, v3, v3}, Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;->onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/app/PermissionDialogBuilder$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 202
    .restart local v0    # "dialogParentView":Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method
