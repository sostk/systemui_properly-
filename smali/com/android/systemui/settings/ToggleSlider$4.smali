.class Lcom/android/systemui/settings/ToggleSlider$4;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Lcom/meizu/common/widget/SkipPosSeekBar$OnSkipAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$4;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$4;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$4;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onAnimationEnd()V

    .line 293
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$4;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setSkipPosMax(I)V

    .line 300
    return-void
.end method
