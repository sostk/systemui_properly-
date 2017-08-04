.class Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;
.super Ljava/lang/Object;
.source "ScreenshotControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->capturePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Landroid/content/Context;Landroid/os/Handler;)V

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Z)Z

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-wrap1(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    .line 52
    return-void
.end method
