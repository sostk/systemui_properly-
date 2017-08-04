.class Lcom/flyme/systemui/qs/tiles/VibrateTile$1;
.super Ljava/lang/Object;
.source "VibrateTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/VibrateTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/VibrateTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/VibrateTile;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onSettingsChanged(ZZ)V
    .locals 2
    .param p1, "muteOn"    # Z
    .param p2, "vibrateOn"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/VibrateTile;Ljava/lang/Object;)V

    .line 97
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_0
.end method

.method public onVibrateOnChanged(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 89
    return-void
.end method
