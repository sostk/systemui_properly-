.class Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;
.super Ljava/lang/Object;
.source "RecentsTestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestEvent"
.end annotation


# instance fields
.field action:I

.field delay:J

.field press:F


# direct methods
.method public constructor <init>(IFJ)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "press"    # F
    .param p3, "delay"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->action:I

    .line 23
    iput p2, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->press:F

    .line 24
    iput-wide p3, p0, Lcom/flyme/systemui/recents/presenter/RecentsTestPresenter$TestEvent;->delay:J

    .line 21
    return-void
.end method
