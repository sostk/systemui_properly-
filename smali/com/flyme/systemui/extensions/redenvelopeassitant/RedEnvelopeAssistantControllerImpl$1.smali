.class Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "RedEnvelopeAssistantControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl$1;->this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 43
    iget-object v0, p0, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl$1;->this$0:Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;->-wrap0(Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantControllerImpl;)V

    .line 41
    return-void
.end method
