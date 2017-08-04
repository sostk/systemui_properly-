.class Lcom/flyme/systemui/qs/tiles/VpnTile$1;
.super Ljava/lang/Object;
.source "VpnTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/VpnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/VpnTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/VpnTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/VpnTile;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VpnTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpnStateChanged(ZZZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "connecting"    # Z
    .param p3, "initializing"    # Z
    .param p4, "waitForReconnect"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VpnTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/VpnTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/VpnTile;)V

    .line 86
    return-void
.end method
