.class public Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityReport"
.end annotation


# instance fields
.field public numVisibleTasks:I

.field public numVisibleThumbnails:I

.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .param p2, "tasks"    # I
    .param p3, "thumbnails"    # I

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->this$0:Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    .line 56
    iput p3, p0, Lcom/flyme/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    .line 54
    return-void
.end method
