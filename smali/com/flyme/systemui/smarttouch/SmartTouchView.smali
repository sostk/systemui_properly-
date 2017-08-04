.class public Lcom/flyme/systemui/smarttouch/SmartTouchView;
.super Landroid/widget/ImageView;
.source "SmartTouchView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/smarttouch/SmartTouchView$State;,
        Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;
    }
.end annotation


# instance fields
.field private final ClickToDragList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ClickToNormalList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final DragToClickList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final DragToNormalList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final NormalToClickList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final NormalToDragList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastRotation:F

.field private nowList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nowPictureId:I

.field private nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field private toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/smarttouch/SmartTouchView;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/smarttouch/SmartTouchView;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/smarttouch/SmartTouchView;Lcom/flyme/systemui/smarttouch/SmartTouchView$State;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x7f020568

    const v5, 0x7f020567

    const v4, 0x7f020566

    const v3, 0x7f020565

    const v2, 0x7f020564

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    .line 30
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020553

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020554

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020555

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020556

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020557

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020558

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020559

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020553

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020554

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020555

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020556

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020557

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020558

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020559

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020569

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    const v1, 0x7f02056a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    const v1, 0x7f020569

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    const v1, 0x7f02056a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020549

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02054a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02054b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02054c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02054d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02054e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02054f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020550

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020551

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020552

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    const v1, 0x7f02056a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    const v1, 0x7f020569

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02055a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02055b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02055c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02055d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02055e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f02055f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020560

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020561

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020562

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    const v1, 0x7f020563

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method bindAnimation()V
    .locals 8

    .prologue
    .line 140
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v7, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v6, v7, :cond_1

    .line 141
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v7, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v6, v7, :cond_0

    .line 142
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    iget v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 143
    .local v2, "indexof":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToNormalList:Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    .line 166
    :goto_0
    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 167
    .local v5, "start":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 168
    .local v4, "size":I
    if-lt v5, v4, :cond_5

    .line 169
    return-void

    .line 145
    .end local v2    # "indexof":I
    .end local v4    # "size":I
    .end local v5    # "start":I
    :cond_0
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    iget v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 146
    .restart local v2    # "indexof":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToNormalList:Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_0

    .line 148
    .end local v2    # "indexof":I
    :cond_1
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v7, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v6, v7, :cond_3

    .line 149
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v7, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v6, v7, :cond_2

    .line 150
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    iget v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 151
    .restart local v2    # "indexof":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->DragToClickList:Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_0

    .line 153
    .end local v2    # "indexof":I
    :cond_2
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    iget v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 154
    .restart local v2    # "indexof":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_0

    .line 157
    .end local v2    # "indexof":I
    :cond_3
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v7, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne v6, v7, :cond_4

    .line 158
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    iget v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 159
    .restart local v2    # "indexof":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToDragList:Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_0

    .line 161
    .end local v2    # "indexof":I
    :cond_4
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    iget v7, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowPictureId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 162
    .restart local v2    # "indexof":I
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->ClickToDragList:Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    goto :goto_0

    .line 172
    .restart local v4    # "size":I
    .restart local v5    # "start":I
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 173
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;

    invoke-direct {v0, p0, p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView$1;-><init>(Lcom/flyme/systemui/smarttouch/SmartTouchView;Lcom/flyme/systemui/smarttouch/SmartTouchView;)V

    .line 180
    .local v0, "animationDrawable":Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;
    move v1, v5

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_6

    .line 181
    iget-object v6, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v0, v6, v7}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->setOneShot(Z)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView$CallBackAnimationDrawable;->start()V

    .line 137
    return-void
.end method

.method public refreshResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setImageResource(I)V

    .line 128
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->NormalToClickList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setImageResource(I)V

    goto :goto_0
.end method

.method public declared-synchronized updateState(Lcom/flyme/systemui/smarttouch/SmartTouchView$State;F)V
    .locals 6
    .param p1, "newState"    # Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .param p2, "rotation"    # F

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    monitor-enter p0

    .line 99
    :try_start_0
    sget-object v3, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-ne p1, v3, :cond_4

    iget v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->lastRotation:F

    cmpl-float v3, v3, p2

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->getRotation()F

    move-result v0

    .line 101
    .local v0, "nowRoitation":F
    const/4 v2, 0x0

    .line 102
    .local v2, "shouldDeal":Z
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 103
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 104
    sub-float/2addr v0, v4

    .line 108
    :goto_1
    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    add-float/2addr v0, v4

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->setRotation(F)V

    .line 112
    sub-float v1, p2, v0

    .line 113
    .local v1, "rotationBy":F
    cmpl-float v3, v1, v5

    if-lez v3, :cond_6

    .line 114
    sub-float/2addr v1, v4

    .line 118
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 119
    iput p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->lastRotation:F

    .line 121
    .end local v0    # "nowRoitation":F
    .end local v1    # "rotationBy":F
    .end local v2    # "shouldDeal":Z
    :cond_4
    sget-object v3, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-eq p1, v3, :cond_7

    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    if-eq p1, v3, :cond_5

    iget-object v3, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->nowState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_7

    :cond_5
    monitor-exit p0

    .line 122
    return-void

    .line 115
    .restart local v0    # "nowRoitation":F
    .restart local v1    # "rotationBy":F
    .restart local v2    # "shouldDeal":Z
    :cond_6
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 116
    add-float/2addr v1, v4

    goto :goto_2

    .line 124
    .end local v0    # "nowRoitation":F
    .end local v1    # "rotationBy":F
    .end local v2    # "shouldDeal":Z
    :cond_7
    :try_start_1
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchView;->toState:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 125
    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->bindAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 98
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
