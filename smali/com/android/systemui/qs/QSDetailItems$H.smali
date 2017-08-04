.class Lcom/android/systemui/qs/QSDetailItems$H;
.super Landroid/os/Handler;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap2(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 282
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems$Callback;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap0(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    goto :goto_0

    .line 283
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 284
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v2, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap1(Lcom/android/systemui/qs/QSDetailItems;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 286
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    :goto_2
    invoke-static {v2, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap3(Lcom/android/systemui/qs/QSDetailItems;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
