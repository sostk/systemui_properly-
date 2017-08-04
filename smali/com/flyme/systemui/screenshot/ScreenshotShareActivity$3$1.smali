.class Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;
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

.field final synthetic val$tempFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;
    .param p2, "val$tempFilePath"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iput-object p2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->val$tempFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v0, v0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get3(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->val$tempFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v0, v0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get3(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v1, v1, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v0, v0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v1, v1, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get3(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v0, v0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-virtual {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->finish()V

    .line 116
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3$1;->this$1:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    iget-object v0, v0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get4(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Lcom/meizu/sharewidget/widget/ShareViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->resetData()V

    .line 111
    return-void
.end method
