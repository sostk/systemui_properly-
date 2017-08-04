.class Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile$1;
.super Ljava/lang/Object;
.source "AutoBrightnessTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoBrightnessChanged(Z)V
    .locals 2
    .param p1, "auto"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;Ljava/lang/Object;)V

    .line 89
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_0
.end method
