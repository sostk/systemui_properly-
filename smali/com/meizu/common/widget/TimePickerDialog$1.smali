.class Lcom/meizu/common/widget/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/TimePickerDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->this$0:Lcom/meizu/common/widget/TimePickerDialog;

    iput-object p2, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->val$view:Landroid/view/View;

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

    .line 130
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 131
    iget-object v2, p0, Lcom/meizu/common/widget/TimePickerDialog$1;->this$0:Lcom/meizu/common/widget/TimePickerDialog;

    const v3, 0x102001c

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/TimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 132
    .local v0, "dialogParentView":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
