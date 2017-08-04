.class public final Lcom/android/systemui/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 270
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    .local p1, "this$0":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSTile;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_0

    .line 279
    const-string/jumbo v1, "handleSetCallback"

    .line 280
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-static {v4, v3}, Lcom/android/systemui/qs/QSTile;->-wrap1(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 275
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 281
    .local v1, "name":Ljava/lang/String;
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 282
    const-string/jumbo v1, "handleClick"

    .line 283
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/qs/QSTile;->-set0(Lcom/android/systemui/qs/QSTile;Z)Z

    .line 284
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleClick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 318
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    .local v1, "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 286
    const-string/jumbo v1, "handleSecondaryClick"

    .line 287
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleSecondaryClick()V

    goto :goto_0

    .line 288
    .local v1, "name":Ljava/lang/String;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 289
    const-string/jumbo v1, "handleLongClick"

    .line 290
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleLongClick()V

    goto :goto_0

    .line 291
    .local v1, "name":Ljava/lang/String;
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_4

    .line 292
    const-string/jumbo v1, "handleRefreshState"

    .line 293
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .local v1, "name":Ljava/lang/String;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_6

    .line 295
    const-string/jumbo v1, "handleShowDetail"

    .line 296
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_5

    :goto_1
    invoke-static {v3, v4}, Lcom/android/systemui/qs/QSTile;->-wrap3(Lcom/android/systemui/qs/QSTile;Z)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    .line 297
    .local v1, "name":Ljava/lang/String;
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_7

    .line 298
    const-string/jumbo v1, "handleUserSwitch"

    .line 299
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 300
    .local v1, "name":Ljava/lang/String;
    :cond_7
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_9

    .line 301
    const-string/jumbo v1, "handleToggleStateChanged"

    .line 302
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_8

    :goto_2
    invoke-static {v3, v4}, Lcom/android/systemui/qs/QSTile;->-wrap4(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_2

    .line 303
    .local v1, "name":Ljava/lang/String;
    :cond_9
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x9

    if-ne v3, v6, :cond_b

    .line 304
    const-string/jumbo v1, "handleScanStateChanged"

    .line 305
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a

    :goto_3
    invoke-static {v3, v4}, Lcom/android/systemui/qs/QSTile;->-wrap0(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto :goto_3

    .line 306
    .local v1, "name":Ljava/lang/String;
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-ne v3, v6, :cond_c

    .line 307
    const-string/jumbo v1, "handleDestroy"

    .line 308
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    .line 310
    .local v1, "name":Ljava/lang/String;
    :cond_c
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x64

    if-ne v3, v6, :cond_e

    .line 311
    const-string/jumbo v1, "handleShowAlert"

    .line 312
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_d

    :goto_4
    invoke-static {v6, v3, v4}, Lcom/android/systemui/qs/QSTile;->-wrap2(Lcom/android/systemui/qs/QSTile;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_4

    .line 315
    .local v1, "name":Ljava/lang/String;
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
