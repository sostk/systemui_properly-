.class public abstract Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;
.super Ljava/lang/Object;
.source "RecentsEmptyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/RecentsEmptyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResumeRunnable"
.end annotation


# instance fields
.field public isCancel:Z

.field public isSync:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isCancel:Z

    .line 38
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsEmptyActivity$ResumeRunnable;->isSync:Z

    .line 36
    return-void
.end method
