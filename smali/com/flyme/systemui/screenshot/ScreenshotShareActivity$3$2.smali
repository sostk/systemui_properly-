.class Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$2;
.super Ljava/lang/Object;
.source "ScreenshotShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$2;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 127
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$2;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v1, v1, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$2;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v2, v2, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v2}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get1(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-wrap0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;Z)V

    .line 126
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
