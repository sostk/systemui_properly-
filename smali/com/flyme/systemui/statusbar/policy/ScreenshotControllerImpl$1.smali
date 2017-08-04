.class Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;
.super Ljava/lang/Object;
.source "ScreenshotControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->takeScreenShot()V
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
    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;Z)Z

    .line 43
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;->-wrap1(Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;)V

    .line 41
    return-void
.end method
