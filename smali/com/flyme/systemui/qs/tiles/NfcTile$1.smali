.class Lcom/flyme/systemui/qs/tiles/NfcTile$1;
.super Ljava/lang/Object;
.source "NfcTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/NfcTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/NfcTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/NfcTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/NfcTile;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/NfcTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNfcStateChanged(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "turningOn"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/NfcTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/NfcTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/NfcTile;)V

    .line 86
    return-void
.end method
