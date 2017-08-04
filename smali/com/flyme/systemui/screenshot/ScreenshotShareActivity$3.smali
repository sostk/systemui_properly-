.class Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;
.super Ljava/lang/Object;
.source "ScreenshotShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->copyPicIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v2}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get2(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils;->copyPic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "tempFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    new-instance v3, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;

    invoke-direct {v3, p0, v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;-><init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-set1(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 119
    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-set0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "tempFilePath":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    new-instance v3, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$2;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$2;-><init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;)V

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-set0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;I)I

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
