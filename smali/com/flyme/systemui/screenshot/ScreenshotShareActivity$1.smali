.class Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get3(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get3(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-virtual {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->finish()V

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get4(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Lcom/meizu/sharewidget/widget/ShareViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->resetData()V

    .line 38
    return-void
.end method
