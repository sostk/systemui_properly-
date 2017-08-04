.class public Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;
.super Ljava/lang/Object;
.source "RecentsTestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;,
        Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;,
        Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;
    }
.end annotation


# static fields
.field private static synthetic -com_flyme_systemui_recents_presenter_RecentsTestPresenter$CASESwitchesValues:[I


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

.field mSleep:Z

.field private final mTask:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;",
            ">;"
        }
    .end annotation
.end field

.field mTestRunnablke:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;


# direct methods
.method private static synthetic -getcom_flyme_systemui_recents_presenter_RecentsTestPresenter$CASESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->-com_flyme_systemui_recents_presenter_RecentsTestPresenter$CASESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->-com_flyme_systemui_recents_presenter_RecentsTestPresenter$CASESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->values()[Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_CANCEL:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_2_COMPLETE:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_MOVE_NOUP:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->DOWN_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->UP_ONLY:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->-com_flyme_systemui_recents_presenter_RecentsTestPresenter$CASESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flyme/systemui/recents/model/IRecentsTestModel;Landroid/os/Handler;)V
    .locals 1
    .param p1, "model"    # Lcom/flyme/systemui/recents/model/IRecentsTestModel;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mSleep:Z

    .line 73
    new-instance v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;-><init>(Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;)V

    iput-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTestRunnablke:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mModel:Lcom/flyme/systemui/recents/model/IRecentsTestModel;

    .line 34
    iput-object p2, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method


# virtual methods
.method public testCase(Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;)V
    .locals 10
    .param p1, "testCase"    # Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0xc8

    .line 42
    invoke-static {}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->-getcom_flyme_systemui_recents_presenter_RecentsTestPresenter$CASESwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$CASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mSleep:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->wake()V

    .line 41
    :cond_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    invoke-direct {v1, v6, v3, v8, v9}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_4
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    new-instance v1, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v6, v2, v4, v5}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;-><init>(IFJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method wake()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mSleep:Z

    .line 103
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mSleep:Z

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;

    .line 108
    .local v0, "pop":Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;
    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTestRunnablke:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->setTestEvent(Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;)V

    .line 110
    iget-wide v2, v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTestRunnablke:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;

    invoke-virtual {v1}, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;->run()V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;->mTestRunnablke:Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestRunnablke;

    iget-wide v4, v0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->delay:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
