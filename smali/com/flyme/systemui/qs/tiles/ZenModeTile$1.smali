.class Lcom/flyme/systemui/qs/tiles/ZenModeTile$1;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "ZenModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/ZenModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/ZenModeTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/ZenModeTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/ZenModeTile;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ZenModeTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 86
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 87
    .local v0, "on":Z
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/ZenModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ZenModeTile;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_1
    invoke-static {v2, v1}, Lcom/flyme/systemui/qs/tiles/ZenModeTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/ZenModeTile;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 86
    .end local v0    # "on":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "on":Z
    goto :goto_0

    .line 88
    :cond_1
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_1
.end method
