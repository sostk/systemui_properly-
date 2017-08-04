.class Lcom/flyme/systemui/qs/tiles/MuteTile$1;
.super Ljava/lang/Object;
.source "MuteTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MuteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MuteTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/MuteTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/MuteTile;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MuteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onSettingsChanged(ZZ)V
    .locals 2
    .param p1, "muteOn"    # Z
    .param p2, "vibrateOn"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MuteTile;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/tiles/MuteTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/MuteTile;Ljava/lang/Object;)V

    .line 103
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_0
.end method

.method public onVibrateOnChanged(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 95
    return-void
.end method
