.class Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;
.super Ljava/lang/Object;
.source "PowerSaveTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/PowerSaveTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerSaveModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;I)Lcom/android/systemui/qs/QSTile$UserBoolean;

    move-result-object v0

    .line 105
    .local v0, "userBoolean":Lcom/android/systemui/qs/QSTile$UserBoolean;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->-wrap1(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;Ljava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method
