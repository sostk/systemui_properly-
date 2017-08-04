.class Lcom/meizu/common/app/PermissionDialogBuilder$1;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/app/PermissionDialogBuilder;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/PermissionDialogBuilder;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder$1;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$1;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$1;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$000(Lcom/meizu/common/app/PermissionDialogBuilder;)Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/meizu/common/app/PermissionDialogBuilder$OnPermissionClickListener;->onPerMisssionClick(Landroid/content/DialogInterface;ZZ)V

    goto :goto_0
.end method
