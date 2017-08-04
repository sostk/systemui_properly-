.class Lcom/meizu/keyguard/BatteryInfoView$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/BatteryInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/BatteryInfoView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/BatteryInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/BatteryInfoView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    const-string/jumbo v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/meizu/keyguard/BatteryInfoView;->-set1(Lcom/meizu/keyguard/BatteryInfoView;I)I

    .line 74
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    const-string/jumbo v4, "scale"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/meizu/keyguard/BatteryInfoView;->-set2(Lcom/meizu/keyguard/BatteryInfoView;I)I

    .line 75
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v4}, Lcom/meizu/keyguard/BatteryInfoView;->-get2(Lcom/meizu/keyguard/BatteryInfoView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v5}, Lcom/meizu/keyguard/BatteryInfoView;->-get3(Lcom/meizu/keyguard/BatteryInfoView;)I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/meizu/keyguard/BatteryInfoView;->-set0(Lcom/meizu/keyguard/BatteryInfoView;I)I

    .line 76
    invoke-static {}, Lcom/meizu/keyguard/BatteryInfoView;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remaining battery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v5}, Lcom/meizu/keyguard/BatteryInfoView;->-get1(Lcom/meizu/keyguard/BatteryInfoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v3}, Lcom/meizu/keyguard/BatteryInfoView;->-get4(Lcom/meizu/keyguard/BatteryInfoView;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v5}, Lcom/meizu/keyguard/BatteryInfoView;->-get1(Lcom/meizu/keyguard/BatteryInfoView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "status":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 81
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 82
    .local v1, "isCharging":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v3}, Lcom/meizu/keyguard/BatteryInfoView;->-get1(Lcom/meizu/keyguard/BatteryInfoView;)I

    move-result v3

    if-eq v3, v8, :cond_3

    .line 84
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v3}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$drawable;->sys_battery_charge:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v3}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->battery_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v4}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->battery_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v3}, Lcom/meizu/keyguard/BatteryInfoView;->-get4(Lcom/meizu/keyguard/BatteryInfoView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v3}, Lcom/meizu/keyguard/BatteryInfoView;->-get4(Lcom/meizu/keyguard/BatteryInfoView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-virtual {v4}, Lcom/meizu/keyguard/BatteryInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->battery_textpadding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 91
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v3}, Lcom/meizu/keyguard/BatteryInfoView;->-wrap1(Lcom/meizu/keyguard/BatteryInfoView;)V

    .line 71
    .end local v1    # "isCharging":Z
    .end local v2    # "status":I
    :cond_0
    return-void

    .line 80
    .restart local v2    # "status":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "isCharging":Z
    goto :goto_0

    .line 81
    .end local v1    # "isCharging":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isCharging":Z
    goto :goto_0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    iget-object v4, p0, Lcom/meizu/keyguard/BatteryInfoView$1;->this$0:Lcom/meizu/keyguard/BatteryInfoView;

    invoke-static {v4}, Lcom/meizu/keyguard/BatteryInfoView;->-get1(Lcom/meizu/keyguard/BatteryInfoView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/meizu/keyguard/BatteryInfoView;->-wrap0(Lcom/meizu/keyguard/BatteryInfoView;I)V

    goto :goto_1
.end method
