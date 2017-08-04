.class Lcom/android/systemui/screenshot/GlobalScreenshot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$isFirstScreenshot:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p2, "val$finisher"    # Ljava/lang/Runnable;
    .param p3, "val$isFirstScreenshot"    # Z

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$isFirstScreenshot:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 704
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    .line 705
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 708
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 709
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 712
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$isFirstScreenshot:Z

    if-eqz v2, :cond_0

    .line 713
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.flyme.systemuitools.screenshot.TEST.ACTION_GUIDE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.flyme.systemuitools"

    const-string/jumbo v3, "com.flyme.systemuitools.screenshot.ScreenshotService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get3(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 717
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
