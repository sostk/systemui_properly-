.class Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;
.super Ljava/lang/Object;
.source "ScreenRecordTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenRecordChanged(Z)V
    .locals 1
    .param p1, "readying"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;)V

    .line 63
    return-void
.end method
