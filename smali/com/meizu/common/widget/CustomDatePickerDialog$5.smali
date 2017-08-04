.class Lcom/meizu/common/widget/CustomDatePickerDialog$5;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;->initTabView(Landroid/content/Context;Landroid/view/View;)V
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
    .line 358
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$400(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$500(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)V

    .line 366
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "mx4pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$400(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setLunar(Z)V

    .line 377
    :goto_0
    return-void

    .line 361
    :cond_0
    return-void

    .line 367
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$5$1;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog$5;)V

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$5;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$600(Lcom/meizu/common/widget/CustomDatePickerDialog;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
