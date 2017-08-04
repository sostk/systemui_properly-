.class Lcom/meizu/common/widget/TimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# static fields
.field static final SET_AMPM:I = 0x3

.field static final SET_HOUR:I = 0x1

.field static final SET_MIN:I = 0x2


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/TimePicker;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 121
    iput-object p1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 122
    iput p2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    .line 123
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    iget v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    return-object v0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    if-eqz p1, :cond_2

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/TimePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :cond_2
    const/16 p1, 0xc

    .line 154
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/TimePicker;->mMinTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 162
    :pswitch_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 164
    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$600(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    const/4 v0, 0x0

    .line 126
    iget v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 137
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/TimePicker;->access$002(Lcom/meizu/common/widget/TimePicker;I)I

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->mType:I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/TimePicker;->access$400(Lcom/meizu/common/widget/TimePicker;I)V

    .line 145
    return-void

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/TimePicker;->access$102(Lcom/meizu/common/widget/TimePicker;I)I

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    if-eqz p3, :cond_0

    :goto_2
    invoke-static {v1, v0}, Lcom/meizu/common/widget/TimePicker;->access$202(Lcom/meizu/common/widget/TimePicker;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker;->access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/meizu/common/widget/TimePicker;II)V

    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
