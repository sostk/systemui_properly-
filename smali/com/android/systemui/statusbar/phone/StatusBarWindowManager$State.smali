.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field bouncerShowing:Z

.field keyguardFadingAway:Z

.field keyguardNeedsInput:Z

.field keyguardOccluded:Z

.field keyguardShowing:Z

.field keyguardUserActivityTimeout:J

.field qsExpanded:Z

.field statusBarExpanded:Z

.field statusBarFocusable:Z

.field statusBarState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>()V

    return-void
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
