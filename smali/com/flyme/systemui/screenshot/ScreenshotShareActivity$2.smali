.class Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;
.super Ljava/lang/Object;
.source "ScreenshotShareActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 57
    iput-object p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get5(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-get5(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "delete_after_shared"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;->this$0:Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;

    invoke-static {v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->-wrap1(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)V

    .line 59
    return-void
.end method
