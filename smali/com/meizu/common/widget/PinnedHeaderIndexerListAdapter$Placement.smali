.class public final Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
.super Ljava/lang/Object;
.source "PinnedHeaderIndexerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public firstInSection:Z

.field public lastInSection:Z

.field private position:I

.field public sectionHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return p1
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    .line 62
    return-void
.end method
