.class Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;
.super Ljava/lang/Object;
.source "QuickChangePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-set1(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;Z)Z

    .line 34
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$1;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onFinish()V

    .line 32
    return-void
.end method
