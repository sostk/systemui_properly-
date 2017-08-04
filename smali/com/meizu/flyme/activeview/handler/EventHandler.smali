.class public abstract Lcom/meizu/flyme/activeview/handler/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# instance fields
.field protected mEvent:Lcom/meizu/flyme/activeview/json/Event;

.field protected mId:Ljava/lang/String;

.field protected mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

.field protected mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/meizu/flyme/activeview/json/Event;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/meizu/flyme/activeview/json/Event;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/meizu/flyme/activeview/handler/EventHandler;->mView:Landroid/view/View;

    .line 30
    iput-object p3, p0, Lcom/meizu/flyme/activeview/handler/EventHandler;->mEvent:Lcom/meizu/flyme/activeview/json/Event;

    .line 31
    iput-object p2, p0, Lcom/meizu/flyme/activeview/handler/EventHandler;->mId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static registerEventHandler(Landroid/view/View;Ljava/lang/String;Lcom/meizu/flyme/activeview/json/Event;)Lcom/meizu/flyme/activeview/handler/EventHandler;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/meizu/flyme/activeview/json/Event;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2}, Lcom/meizu/flyme/activeview/json/Event;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    .line 25
    return-object v0

    :pswitch_0
    const-string/jumbo v3, "click"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 23
    :pswitch_1
    new-instance v0, Lcom/meizu/flyme/activeview/handler/ClickHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/flyme/activeview/handler/ClickHandler;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/meizu/flyme/activeview/json/Event;)V

    return-object v0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x5a5c588
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public setOnEventListener(Lcom/meizu/flyme/activeview/listener/OnEventListener;)V
    .locals 0
    .param p1, "onEventListener"    # Lcom/meizu/flyme/activeview/listener/OnEventListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/flyme/activeview/handler/EventHandler;->mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

    .line 36
    return-void
.end method
