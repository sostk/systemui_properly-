.class Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;
.super Ljava/lang/Object;
.source "RecentsTestPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestRunnablke"
.end annotation


# instance fields
.field testEvent:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

.field final synthetic this$0:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->this$0:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->testEvent:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->testEvent:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    iget v0, v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->action:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->this$0:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->wake()V

    .line 83
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->this$0:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    iget-object v0, v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/model/IRecentsTestModel;->injectQuickChangeMotionEventDown()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->this$0:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    iget-object v0, v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/model/IRecentsTestModel;->injectQuickChangeMotionEventUp()V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->this$0:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;

    iget-object v0, v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->testEvent:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    iget v1, v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->press:F

    invoke-interface {v0, v1}, Lcom/flyme/systemui/recents/model/IRecentsTestModel;->injectQuickChangeMotionEventPress(F)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTestEvent(Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->testEvent:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    .line 78
    return-void
.end method
