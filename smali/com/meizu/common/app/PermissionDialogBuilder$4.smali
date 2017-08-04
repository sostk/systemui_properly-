.class Lcom/meizu/common/app/PermissionDialogBuilder$4;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;)V
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
    .line 136
    iput-object p1, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$100(Lcom/meizu/common/app/PermissionDialogBuilder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$100(Lcom/meizu/common/app/PermissionDialogBuilder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/PermissionDialogBuilder$4;->this$0:Lcom/meizu/common/app/PermissionDialogBuilder;

    invoke-static {v0}, Lcom/meizu/common/app/PermissionDialogBuilder;->access$100(Lcom/meizu/common/app/PermissionDialogBuilder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
