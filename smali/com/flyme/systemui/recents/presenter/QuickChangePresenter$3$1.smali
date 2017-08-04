.class Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;
.super Ljava/lang/Object;
.source "QuickChangePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;->this$1:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;->this$1:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;

    iget-object v0, v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get7(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Lcom/flyme/systemui/recents/views/IQuickChangeView;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/recents/views/IQuickChangeView;->dismiss()V

    .line 205
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flyme/systemui/recents/events/RecentsEvents$RecentsActivityActive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->disableAnimationScale()V

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;->this$1:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;

    iget-object v0, v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get6(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->changeActivity()V

    .line 208
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;->this$1:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;

    iget-object v0, v0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get6(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Lcom/flyme/systemui/recents/model/IQuickChangeModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/recents/model/IQuickChangeModel;->clearData()V

    .line 209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity;->setImageCache(Landroid/graphics/Bitmap;)V

    .line 203
    return-void
.end method
