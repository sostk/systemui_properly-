.class public Lcom/meizu/flyme/activeview/handler/ClickHandler;
.super Lcom/meizu/flyme/activeview/handler/EventHandler;
.source "ClickHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method protected constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/meizu/flyme/activeview/json/Event;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/meizu/flyme/activeview/json/Event;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/handler/EventHandler;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/meizu/flyme/activeview/json/Event;)V

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method

.method private static handleIntentUriEvent(Landroid/content/Context;Lcom/meizu/flyme/activeview/json/Event;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/meizu/flyme/activeview/json/Event;

    .prologue
    .line 51
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Event;->getArgs()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/flyme/activeview/json/Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/meizu/flyme/activeview/utils/IntentUtils;->handleActionUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :cond_0
    return-void

    .line 52
    .end local v0    # "uri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private performClick()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v1, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mEvent:Lcom/meizu/flyme/activeview/json/Event;

    invoke-virtual {v1}, Lcom/meizu/flyme/activeview/json/Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 39
    iget-object v1, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mEvent:Lcom/meizu/flyme/activeview/json/Event;

    invoke-static {v1, v2}, Lcom/meizu/flyme/activeview/handler/ClickHandler;->handleIntentUriEvent(Landroid/content/Context;Lcom/meizu/flyme/activeview/json/Event;)V

    .line 41
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v3, "showToast"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mEvent:Lcom/meizu/flyme/activeview/json/Event;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/json/Event;->getArgs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 33
    nop

    :pswitch_data_0
    .packed-switch -0x720fded6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

    if-nez v0, :cond_1

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/meizu/flyme/activeview/handler/ClickHandler;->performClick()V

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mOnEventListener:Lcom/meizu/flyme/activeview/listener/OnEventListener;

    iget-object v1, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mEvent:Lcom/meizu/flyme/activeview/json/Event;

    invoke-virtual {v2}, Lcom/meizu/flyme/activeview/json/Event;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/activeview/handler/ClickHandler;->mEvent:Lcom/meizu/flyme/activeview/json/Event;

    invoke-virtual {v3}, Lcom/meizu/flyme/activeview/json/Event;->getArgs()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/flyme/activeview/listener/OnEventListener;->onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
