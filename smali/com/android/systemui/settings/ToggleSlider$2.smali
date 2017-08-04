.class Lcom/android/systemui/settings/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 147
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 151
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSlider;->isRunningAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->-get9(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    .line 154
    invoke-interface {v1, v2, v3, v4, p2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get3(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v1

    sub-int v0, p2, v1

    .line 162
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1, p2}, Lcom/android/systemui/settings/ToggleSlider;->-set0(Lcom/android/systemui/settings/ToggleSlider;I)I

    .line 163
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get9(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    if-lez v0, :cond_5

    .line 165
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 149
    .end local v0    # "delta":I
    :cond_4
    :goto_0
    return-void

    .line 167
    .restart local v0    # "delta":I
    :cond_5
    if-gez v0, :cond_4

    .line 168
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 177
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v6, 0x0

    const v5, 0x3ecccccd    # 0.4f

    .line 204
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0, v6}, Lcom/android/systemui/settings/ToggleSlider;->-set1(Lcom/android/systemui/settings/ToggleSlider;Z)Z

    .line 206
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get4(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSlider;->-get9(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSlider;->-get8(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSlider;->-get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v4

    .line 207
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get5(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/settings/ToggleSeekBar;->setPressed(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get0(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get6(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$2;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get7(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->disableVerticalSeek(Z)V

    .line 203
    :cond_3
    return-void
.end method
