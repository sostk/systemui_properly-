.class public Lcom/android/systemui/screenshot/ScreenshotExService;
.super Landroid/app/IntentService;
.source "ScreenshotExService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "ScreenshotExService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private showNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "croppedIcon"    # Landroid/graphics/Bitmap;
    .param p4, "shareIntent"    # Landroid/content/Intent;
    .param p5, "deleteIntent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 47
    .local v8, "r":Landroid/content/res/Resources;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v6, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v6, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 51
    .local v7, "notification":Landroid/app/Notification;
    const v1, 0x7f020576

    iput v1, v7, Landroid/app/Notification;->icon:I

    .line 52
    const v1, 0x1060070

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v7, Landroid/app/Notification;->color:I

    .line 53
    iget v1, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v7, Landroid/app/Notification;->flags:I

    .line 54
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 56
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/flyme/internal/R$layout;->notification_template_share_and_delete:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 58
    .local v0, "view":Landroid/widget/RemoteViews;
    const v1, 0x7f0b02a5

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 59
    .local v2, "iconPadding":I
    sget v1, Lcom/flyme/internal/R$id;->icon:I

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 60
    sget v1, Lcom/flyme/internal/R$id;->icon:I

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 61
    sget v1, Lcom/flyme/internal/R$id;->title:I

    const v3, 0x7f0900eb

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 62
    sget v1, Lcom/flyme/internal/R$id;->text:I

    const v3, 0x7f0900ec

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 64
    sget v1, Lcom/flyme/internal/R$id;->share_btn:I

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, p4, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 65
    sget v1, Lcom/flyme/internal/R$id;->delete_btn:I

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, p5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 66
    iput-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 68
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v3, 0x315

    invoke-virtual {v1, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    const-string/jumbo v0, "imageuri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 34
    .local v2, "imageuri":Landroid/net/Uri;
    const-string/jumbo v0, "croppedicon"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 35
    .local v3, "croppedicon":Landroid/graphics/Bitmap;
    const-string/jumbo v0, "shareintent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 36
    .local v4, "shareintent":Landroid/content/Intent;
    const-string/jumbo v0, "deleteintent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 38
    .local v5, "deleteintent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotExService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScreenshotExService;->showNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 31
    :cond_1
    return-void
.end method
