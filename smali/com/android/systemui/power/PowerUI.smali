.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$SoundType;,
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field private final mLowBatteryReminderLevels:[I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mScreenOffTime:J

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

.field final mzAlarmSoundPath:Ljava/lang/String;

.field mzAlertIntentAction:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->dissmissLowBatteryDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerUI;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showTemperatureAlert()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 66
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 67
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 79
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    .line 419
    const-string/jumbo v0, "/system/media/audio/ui/41_Hight_Temperature_Alarm.ogg"

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mzAlarmSoundPath:Ljava/lang/String;

    .line 420
    const-string/jumbo v0, "meizu.intent.action.USB_CHARCH_TMEPERATURE_DIALOG"

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mzAlertIntentAction:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private dissmissLowBatteryDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dissmissLowBatteryDialog()--closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 298
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 294
    :cond_0
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_0

    .line 145
    const/4 v2, 0x1

    return v2

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    .line 148
    return v3

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 151
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 152
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 153
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 151
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 522
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private playAlarmSound()V
    .locals 3

    .prologue
    .line 426
    const-string/jumbo v1, "file:///system/media/audio/ui/41_Hight_Temperature_Alarm.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    .local v0, "soundUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 425
    :cond_1
    return-void

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSaverMode(Z)V

    .line 106
    return-void
.end method

.method private showLowBatteryWarning(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x8

    .line 311
    const-string/jumbo v4, "lowLevel"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 312
    .local v3, "lowLevel":I
    const-string/jumbo v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showLowBatteryWarning()--show low battery warning: level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    sget-object v4, Lcom/android/systemui/power/PowerUI$SoundType;->BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/power/PowerUI;->playBatterySound(Lcom/android/systemui/power/PowerUI$SoundType;)V

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "levelText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 326
    .local v1, "iconId":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0900e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "levelText":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->dissmissLowBatteryDialog()V

    .line 328
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 329
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    return-void

    .line 332
    :cond_1
    if-ge v3, v7, :cond_2

    .line 333
    const v1, 0x7f0202d6

    .line 336
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 337
    const/4 v6, 0x5

    .line 336
    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 342
    new-instance v5, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 341
    const v6, 0x104000a

    .line 336
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 351
    .local v0, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 357
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 358
    const/16 v5, 0x7d3

    .line 357
    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 359
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 361
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 362
    const-string/jumbo v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showLowBatteryWarning()--d.show(): level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showTemperatureAlert()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->playAlarmSound()V

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showTemperatureAlertDialog()V

    .line 421
    return-void
.end method

.method private showTemperatureAlertDialog()V
    .locals 5

    .prologue
    .line 440
    const v1, 0x7f0202d6

    .line 441
    .local v1, "iconId":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 442
    const/4 v4, 0x5

    .line 441
    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 445
    const v3, 0x7f0900ff

    .line 441
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 447
    new-instance v3, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 446
    const v4, 0x104000a

    .line 441
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 456
    .local v0, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 464
    const/16 v3, 0x7d3

    .line 463
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 467
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 439
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 472
    const-string/jumbo v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 474
    const-string/jumbo v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 486
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 487
    const-string/jumbo v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 489
    const-string/jumbo v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 492
    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 494
    const-string/jumbo v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    .line 493
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 495
    const-string/jumbo v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 471
    return-void
.end method

.method playBatterySound(Lcom/android/systemui/power/PowerUI$SoundType;)V
    .locals 11
    .param p1, "soundType"    # Lcom/android/systemui/power/PowerUI$SoundType;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 368
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "low_battery_sound_timeout"

    .line 370
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 372
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 373
    .local v2, "offTime":J
    if-lez v1, :cond_0

    .line 374
    iget-wide v6, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 375
    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 376
    const-string/jumbo v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 377
    const-string/jumbo v8, "ms): not waking up the user with low battery sound"

    .line 376
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 381
    :cond_0
    sget-boolean v6, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 382
    const-string/jumbo v6, "PowerUI"

    const-string/jumbo v7, "playing sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    const/4 v4, 0x0

    .line 385
    .local v4, "soundPath":Ljava/lang/String;
    const-string/jumbo v6, "key_system_tips_sound"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 386
    sget-object v6, Lcom/android/systemui/power/PowerUI$SoundType;->BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

    if-ne p1, v6, :cond_5

    .line 388
    const-string/jumbo v6, "low_battery_sound"

    .line 387
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 398
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 399
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 404
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v6, :cond_4

    .line 405
    sget-object v6, Lcom/android/systemui/power/PowerUI$SoundType;->BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

    if-ne p1, v6, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->phoneIsInUse()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 406
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 410
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    .line 367
    .end local v5    # "soundUri":Landroid/net/Uri;
    :cond_4
    return-void

    .line 389
    .restart local v4    # "soundPath":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/android/systemui/power/PowerUI$SoundType;->PLUGIN:Lcom/android/systemui/power/PowerUI$SoundType;

    if-ne p1, v6, :cond_6

    .line 391
    const-string/jumbo v6, "plugin_sound"

    .line 390
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "soundPath":Ljava/lang/String;
    goto :goto_0

    .line 392
    .local v4, "soundPath":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/android/systemui/power/PowerUI$SoundType;->CHARGED:Lcom/android/systemui/power/PowerUI$SoundType;

    if-ne p1, v6, :cond_2

    .line 394
    const-string/jumbo v6, "charged_sound"

    .line 393
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "soundPath":Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v4    # "soundPath":Ljava/lang/String;
    .restart local v5    # "soundUri":Landroid/net/Uri;
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v6, :cond_8

    .line 401
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->stop()V

    .line 402
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    goto :goto_1

    .line 408
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6, v10}, Landroid/media/Ringtone;->setStreamType(I)V

    goto :goto_2
.end method

.method public start()V
    .locals 5

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 90
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 92
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 98
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 100
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    .line 99
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 99
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 87
    return-void

    .line 89
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 111
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 112
    const v5, 0x10e0052

    .line 111
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 114
    .local v0, "critLevel":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 115
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    const v5, 0x10e0054

    .line 115
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 118
    .local v1, "defWarnLevel":I
    const-string/jumbo v4, "low_power_trigger_level"

    .line 117
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 119
    .local v3, "warnLevel":I
    if-nez v3, :cond_0

    .line 120
    move v3, v1

    .line 122
    :cond_0
    if-ge v3, v0, :cond_1

    .line 123
    move v3, v0

    .line 126
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    .line 127
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 128
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    .line 129
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 130
    const v6, 0x10e0055

    .line 129
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 128
    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 110
    return-void
.end method
