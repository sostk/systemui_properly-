.class Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$1;
.super Ljava/lang/Object;
.source "DeleteScreenshotReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$1;->this$0:Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$1;->this$0:Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    invoke-static {v1}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->-get0(Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 44
    const-string/jumbo v2, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 45
    iget-object v4, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$1;->this$0:Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    invoke-static {v4}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->-get1(Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    return-void
.end method
