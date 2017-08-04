.class Lcom/meizu/common/widget/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePickerDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePickerDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerDialog$1;->this$0:Lcom/meizu/common/widget/DatePickerDialog;

    iput-object p2, p0, Lcom/meizu/common/widget/DatePickerDialog$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 191
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerDialog$1;->this$0:Lcom/meizu/common/widget/DatePickerDialog;

    const v3, 0x102001c

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/DatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    .local v0, "dialogParentView":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
