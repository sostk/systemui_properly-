.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method

.method private updateSaverMode()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->-get7(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap3(Lcom/android/systemui/power/PowerUI;Z)V

    .line 184
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mzAlertIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    .line 161
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "meizu.intent.action.BATTERY_LOW_WRANING_DIALOG"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 192
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Intent MZ_ACTION_BATTERY_LOW_WRANING_DIALOG received!: level="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9, p2}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string/jumbo v9, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 195
    const-string/jumbo v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 194
    if-eqz v9, :cond_4

    .line 196
    :cond_2
    const-string/jumbo v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 197
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    sget-object v10, Lcom/android/systemui/power/PowerUI$SoundType;->PLUGIN:Lcom/android/systemui/power/PowerUI$SoundType;

    invoke-virtual {v9, v10}, Lcom/android/systemui/power/PowerUI;->playBatterySound(Lcom/android/systemui/power/PowerUI$SoundType;)V

    .line 199
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-wrap1(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_0

    .line 200
    :cond_4
    const-string/jumbo v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 201
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v2

    .line 202
    .local v2, "oldBatteryLevel":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v10, "level"

    const/16 v11, 0x64

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    .line 203
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    .line 204
    .local v3, "oldBatteryStatus":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v10, "status"

    .line 205
    const/4 v11, 0x1

    .line 204
    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;I)I

    .line 206
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    .line 207
    .local v6, "oldPlugType":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v10, "plugged"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    .line 208
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    .line 209
    .local v5, "oldInvalidCharger":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v10, "invalid_charger"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    .line 211
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x1

    .line 212
    .local v8, "plugged":Z
    :goto_1
    if-eqz v6, :cond_7

    const/4 v7, 0x1

    .line 214
    .local v7, "oldPlugged":Z
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9, v2}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 215
    .local v4, "oldBucket":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v1

    .line 217
    .local v1, "bucket":I
    sget-boolean v9, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 218
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "buckets   ....."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get4(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 219
    const-string/jumbo v11, " .. "

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 219
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 220
    const-string/jumbo v11, " .. "

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 220
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v11

    const/4 v12, 0x1

    aget v11, v11, v12

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "level          "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "status         "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "plugType       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalidCharger "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "bucket         "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "plugged        "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    .line 230
    const/4 v9, 0x5

    if-eq v3, v9, :cond_0

    .line 229
    if-eqz v8, :cond_0

    .line 232
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    sget-object v10, Lcom/android/systemui/power/PowerUI$SoundType;->CHARGED:Lcom/android/systemui/power/PowerUI$SoundType;

    invoke-virtual {v9, v10}, Lcom/android/systemui/power/PowerUI;->playBatterySound(Lcom/android/systemui/power/PowerUI$SoundType;)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "bucket":I
    .end local v4    # "oldBucket":I
    .end local v7    # "oldPlugged":Z
    .end local v8    # "plugged":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "plugged":Z
    goto/16 :goto_1

    .line 212
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "oldPlugged":Z
    goto/16 :goto_2

    .line 261
    .end local v2    # "oldBatteryLevel":I
    .end local v3    # "oldBatteryStatus":I
    .end local v5    # "oldInvalidCharger":I
    .end local v6    # "oldPlugType":I
    .end local v7    # "oldPlugged":Z
    .end local v8    # "plugged":Z
    :cond_8
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 262
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_0

    .line 263
    :cond_9
    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 264
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v10, -0x1

    invoke-static {v9, v10, v11}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_0

    .line 265
    :cond_a
    const-string/jumbo v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 266
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    goto/16 :goto_0

    .line 267
    :cond_b
    const-string/jumbo v9, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    goto/16 :goto_0

    .line 269
    :cond_c
    const-string/jumbo v9, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 270
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/power/PowerUI;->-wrap3(Lcom/android/systemui/power/PowerUI;Z)V

    goto/16 :goto_0

    .line 271
    :cond_d
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mzAlertIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 272
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v9}, Lcom/android/systemui/power/PowerUI;->-wrap4(Lcom/android/systemui/power/PowerUI;)V

    goto/16 :goto_0

    .line 274
    :cond_e
    const-string/jumbo v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unknown intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
