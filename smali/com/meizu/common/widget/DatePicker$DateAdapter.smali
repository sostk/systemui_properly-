.class Lcom/meizu/common/widget/DatePicker$DateAdapter;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAdapter"
.end annotation


# static fields
.field static final SET_DAY:I = 0x3

.field static final SET_MONTH:I = 0x2

.field static final SET_YEAR:I = 0x1


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 164
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 165
    iput p2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    .line 166
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :cond_0
    return-object v2

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_3

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/DatePicker;->access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$100(Lcom/meizu/common/widget/DatePicker;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_6

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 208
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 209
    .local v0, "maxdays":I
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    .line 211
    .local v1, "maxmonths":I
    iget v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 270
    return-void

    .line 213
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$000(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/2addr v3, p3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$402(Lcom/meizu/common/widget/DatePicker;I)I

    .line 214
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_3

    .line 220
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 233
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 273
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1400(Lcom/meizu/common/widget/DatePicker;I)V

    .line 274
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1500(Lcom/meizu/common/widget/DatePicker;I)V

    .line 276
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1600(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object v2

    if-nez v2, :cond_8

    .line 280
    :goto_3
    iget v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    if-eq v2, v7, :cond_9

    .line 283
    :goto_4
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->mType:I

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1800(Lcom/meizu/common/widget/DatePicker;I)V

    .line 284
    return-void

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 215
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 216
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    goto :goto_0

    .line 220
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$800(Lcom/meizu/common/widget/DatePicker;)I

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, v1}, Lcom/meizu/common/widget/DatePicker;->access$1002(Lcom/meizu/common/widget/DatePicker;I)I

    .line 224
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 225
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 226
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1102(Lcom/meizu/common/widget/DatePicker;I)I

    .line 227
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 228
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto/16 :goto_1

    .line 233
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 236
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 237
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 238
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1102(Lcom/meizu/common/widget/DatePicker;I)I

    .line 240
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto/16 :goto_2

    .line 247
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, p3}, Lcom/meizu/common/widget/DatePicker;->access$602(Lcom/meizu/common/widget/DatePicker;I)I

    .line 248
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_7

    .line 251
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$700(Lcom/meizu/common/widget/DatePicker;)I

    move-result v0

    .line 254
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1302(Lcom/meizu/common/widget/DatePicker;I)I

    .line 255
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 256
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/DatePicker;->access$1102(Lcom/meizu/common/widget/DatePicker;I)I

    .line 258
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    goto/16 :goto_2

    .line 248
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 249
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$612(Lcom/meizu/common/widget/DatePicker;I)I

    goto :goto_5

    .line 264
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1102(Lcom/meizu/common/widget/DatePicker;I)I

    .line 265
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 266
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1102(Lcom/meizu/common/widget/DatePicker;I)I

    goto/16 :goto_2

    .line 277
    :cond_8
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$1600(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/DatePicker;->access$400(Lcom/meizu/common/widget/DatePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v5}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v6}, Lcom/meizu/common/widget/DatePicker;->access$1100(Lcom/meizu/common/widget/DatePicker;)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V

    goto/16 :goto_3

    .line 281
    :cond_9
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePicker;->access$600(Lcom/meizu/common/widget/DatePicker;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DatePicker;->access$1700(Lcom/meizu/common/widget/DatePicker;I)V

    goto/16 :goto_4

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
