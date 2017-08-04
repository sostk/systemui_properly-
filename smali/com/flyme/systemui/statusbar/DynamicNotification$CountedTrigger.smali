.class public Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;
.super Ljava/lang/Object;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountedTrigger"
.end annotation


# instance fields
.field public isSuccess:Z

.field mCount:I

.field mErrorRunnable:Ljava/lang/Runnable;

.field mSuccessRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Runnable;
    .param p2, "error"    # Ljava/lang/Runnable;

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->isSuccess:Z

    .line 597
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mSuccessRunnable:Ljava/lang/Runnable;

    .line 598
    iput-object p2, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    .line 596
    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mCount:I

    .line 610
    iget v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mCount:I

    if-nez v0, :cond_2

    .line 611
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mSuccessRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mSuccessRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 616
    :cond_2
    iget v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mCount:I

    if-gez v0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "Invalid ref count"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;->mCount:I

    .line 604
    return-void
.end method
