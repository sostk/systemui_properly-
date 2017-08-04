.class Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "MobileDataControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 450
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;I)I

    .line 454
    const-string/jumbo v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobile data mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V

    .line 452
    return-void
.end method
