.class Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ$1;
.super Landroid/database/ContentObserver;
.source "RedEnvelopeAssistantQQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ$1;->this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 30
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ$1;->this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;

    invoke-static {v0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;->-wrap0(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantQQ;)V

    .line 28
    return-void
.end method
