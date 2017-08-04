.class Lcom/android/keyguard/PagedView$12;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/keyguard/PagedView;
    .param p2, "val$startTime"    # J

    .prologue
    .line 2546
    iput-object p1, p0, Lcom/android/keyguard/PagedView$12;->this$0:Lcom/android/keyguard/PagedView;

    iput-wide p2, p0, Lcom/android/keyguard/PagedView$12;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2547
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    .line 2551
    iget-wide v0, p0, Lcom/android/keyguard/PagedView$12;->val$startTime:J

    iput-wide v0, p0, Lcom/android/keyguard/PagedView$12;->mStartTime:J

    .line 2546
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 2556
    iget v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    if-gez v0, :cond_1

    .line 2557
    iget v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    .line 2563
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/keyguard/PagedView$12;->mOffset:F

    add-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2558
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    if-nez v0, :cond_0

    .line 2559
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2560
    iget-wide v2, p0, Lcom/android/keyguard/PagedView$12;->mStartTime:J

    .line 2559
    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 2560
    iget-object v1, p0, Lcom/android/keyguard/PagedView$12;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v1}, Lcom/android/keyguard/PagedView;->-get1(Lcom/android/keyguard/PagedView;)I

    move-result v1

    int-to-float v1, v1

    .line 2559
    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView$12;->mOffset:F

    .line 2561
    iget v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/PagedView$12;->mCount:I

    goto :goto_0
.end method
