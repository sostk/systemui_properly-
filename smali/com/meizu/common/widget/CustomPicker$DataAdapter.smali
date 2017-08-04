.class Lcom/meizu/common/widget/CustomPicker$DataAdapter;
.super Ljava/lang/Object;
.source "CustomPicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAdapter"
.end annotation


# instance fields
.field private mColumnIndex:I

.field private mStartValue:I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomPicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomPicker;II)V
    .locals 1
    .param p2, "i"    # I
    .param p3, "value"    # I

    .prologue
    .line 136
    iput-object p1, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/common/widget/CustomPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->mColumnIndex:I

    .line 137
    iput p2, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->mColumnIndex:I

    .line 138
    iput p3, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->mStartValue:I

    .line 139
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->mStartValue:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/common/widget/CustomPicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomPicker;->access$000(Lcom/meizu/common/widget/CustomPicker;)[I

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->mColumnIndex:I

    aput p3, v0, v1

    .line 144
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/common/widget/CustomPicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomPicker;->access$100(Lcom/meizu/common/widget/CustomPicker;)Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/common/widget/CustomPicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomPicker;->access$100(Lcom/meizu/common/widget/CustomPicker;)Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/common/widget/CustomPicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomPicker$DataAdapter;->this$0:Lcom/meizu/common/widget/CustomPicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomPicker;->access$000(Lcom/meizu/common/widget/CustomPicker;)[I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/CustomPicker$OnCurrentItemChangedListener;->onCurrentItemChanged(Lcom/meizu/common/widget/CustomPicker;[I)V

    goto :goto_0
.end method
