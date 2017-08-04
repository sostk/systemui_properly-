.class Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat$1;
.super Landroid/database/ContentObserver;
.source "RedEnvelopeAssistantWechat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat$1;->this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat$1;->this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;

    invoke-static {v0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;->-wrap0(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantWechat;)V

    .line 47
    return-void
.end method
