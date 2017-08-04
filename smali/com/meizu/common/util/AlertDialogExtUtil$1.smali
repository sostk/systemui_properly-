.class Lcom/meizu/common/util/AlertDialogExtUtil$1;
.super Ljava/lang/Object;
.source "AlertDialogExtUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/AlertDialogExtUtil;->setButtonUnDismissOnClick(Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$whichButton:I


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$dialog:Landroid/app/AlertDialog;

    iput p2, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$whichButton:I

    iput-object p3, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    new-instance v0, Lcom/meizu/common/util/AlertDialogExtUtil$ButtonHandler;

    iget-object v2, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v2}, Lcom/meizu/common/util/AlertDialogExtUtil$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    .line 257
    .local v0, "handler":Lcom/meizu/common/util/AlertDialogExtUtil$ButtonHandler;
    iget v2, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$whichButton:I

    packed-switch v2, :pswitch_data_0

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Button does not exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 270
    :goto_0
    if-nez v1, :cond_1

    .line 274
    :goto_1
    return-void

    .line 262
    :cond_0
    iget v2, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$whichButton:I

    iget-object v3, p0, Lcom/meizu/common/util/AlertDialogExtUtil$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Lcom/meizu/common/util/AlertDialogExtUtil$ButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "m":Landroid/os/Message;
    goto :goto_0

    .line 271
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
