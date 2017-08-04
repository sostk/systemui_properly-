.class Lcom/meizu/common/widget/CustomDatePickerDialog$2;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/CustomDatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1, v3}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$102(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    :goto_1
    return-void

    .line 224
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 225
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1, v4}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$102(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .local v0, "indicatorLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_picker_dicator_margin_left_rtl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 233
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
