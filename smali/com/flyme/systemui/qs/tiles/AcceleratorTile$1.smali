.class Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;
.super Ljava/lang/Object;
.source "AcceleratorTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/AcceleratorTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/AcceleratorTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/AcceleratorTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/AcceleratorTile;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/AcceleratorTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcceleratorChanged()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/AcceleratorTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/AcceleratorTile;)V

    .line 66
    return-void
.end method
