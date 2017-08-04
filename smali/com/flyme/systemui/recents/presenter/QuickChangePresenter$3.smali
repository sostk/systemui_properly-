.class Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;
.super Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
.source "QuickChangePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->onStop()V
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
    .line 198
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-direct {p0}, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;->this$0:Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;

    invoke-static {v0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;->-get4(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3$1;-><init>(Lcom/flyme/systemui/recents/presenter/QuickChangePresenter$3;)V

    .line 211
    const-wide/16 v2, 0x30

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method
