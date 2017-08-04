.class Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;
.super Ljava/lang/Object;
.source "ScreenshotTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/ScreenshotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/ScreenshotTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/ScreenshotTile;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ScreenshotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotStateChanged(Z)V
    .locals 2
    .param p1, "capturing"    # Z

    .prologue
    .line 67
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ScreenshotTile;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;Ljava/lang/Object;)V

    .line 66
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_0
.end method
