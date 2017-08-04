.class Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;
.super Ljava/lang/Object;
.source "SmartTouchTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/SmartTouchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/SmartTouchTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/SmartTouchTile;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/SmartTouchTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartTouchChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/SmartTouchTile;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;Ljava/lang/Object;)V

    .line 88
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_0
.end method
