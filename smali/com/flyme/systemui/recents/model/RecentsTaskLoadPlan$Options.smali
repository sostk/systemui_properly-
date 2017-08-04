.class public Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public loadIcons:Z

.field public loadThumbnails:Z

.field public numVisibleTaskThumbnails:I

.field public numVisibleTasks:I

.field public onlyLoadPausedActivities:Z

.field public prepareForEnter:Z

.field public skipRunningThumbnail:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->skipRunningThumbnail:Z

    .line 56
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    .line 57
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 58
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 59
    iput v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 60
    iput v2, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 61
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/RecentsTaskLoadPlan$Options;->prepareForEnter:Z

    .line 54
    return-void
.end method
