.class public Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/StackScrollState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# instance fields
.field alpha:F

.field belowSpeedBump:Z

.field clipTopAmount:I

.field dark:Z

.field dimmed:Z

.field gone:Z

.field height:I

.field hideSensitive:Z

.field location:I

.field notGoneIndex:I

.field scale:F

.field screenOn:Z

.field topOverLap:I

.field yTranslation:F

.field zTranslation:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->screenOn:Z

    .line 227
    return-void
.end method
