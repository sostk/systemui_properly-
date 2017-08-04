.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static mTickerAddSpace:Z


# instance fields
.field private mCroppedIcon:Landroid/graphics/Bitmap;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private mImageFileTitle:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mScreenshotDir:Ljava/io/File;

.field private mShareIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mShareIntent:Landroid/app/PendingIntent;

    .line 141
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 142
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCroppedIcon:Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 150
    .local v15, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 152
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyy"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v20, v0

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "imageDate":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 154
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "MMdd-HHmmss"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 155
    const-string/jumbo v18, "S%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    .line 156
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 158
    new-instance v18, Ljava/io/File;

    .line 159
    sget-object v19, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 158
    invoke-static/range {v19 .. v19}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 159
    const-string/jumbo v20, "Screenshots"

    .line 158
    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 162
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v17, "tempFlie":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 164
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyy"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v20, v0

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "MMdd-HHmmssSS"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    const-string/jumbo v18, "S%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    .line 168
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 169
    new-instance v17, Ljava/io/File;

    .end local v17    # "tempFlie":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .restart local v17    # "tempFlie":Ljava/io/File;
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 176
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 177
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 182
    .local v7, "iconSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v16, v0

    .line 183
    .local v16, "shortSide":I
    :goto_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    move/from16 v0, v16

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 184
    .local v14, "preview":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 186
    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 187
    .local v6, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 188
    new-instance v18, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 189
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 190
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 190
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 193
    const v18, 0xffffff

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 194
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v14, v7, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 199
    .local v5, "croppedIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCroppedIcon:Landroid/graphics/Bitmap;

    .line 203
    sget-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    :goto_1
    sput-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 204
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 205
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 208
    .local v12, "now":J
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f09017c

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 210
    sget-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v18, :cond_3

    const-string/jumbo v18, " "

    .line 209
    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 208
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 211
    const v19, 0x7f09017d

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 208
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 212
    const v19, 0x7f09017e

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 208
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 213
    const v19, 0x7f020576

    .line 208
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 216
    const-wide/16 v20, 0x0

    .line 208
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 218
    const v19, 0x1060070

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 208
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    move-object/from16 v18, v0

    sget v19, Lcom/flyme/internal/R$drawable;->mz_status_ic_printscreen:I

    invoke-virtual/range {v18 .. v19}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 222
    new-instance v18, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 228
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    const v19, 0x7f09017d

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 228
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 230
    const v19, 0x7f09017e

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 228
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 231
    const v19, 0x7f020576

    .line 228
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 232
    const-string/jumbo v19, "progress"

    .line 228
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 235
    const-wide/16 v20, 0x0

    .line 228
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 238
    const v19, 0x1060070

    .line 237
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 228
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 243
    .local v10, "n":Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 246
    const-string/jumbo v18, "takeScreenshot"

    const-string/jumbo v19, "screenshot is saving..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 182
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v6    # "desat":Landroid/graphics/ColorMatrix;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "n":Landroid/app/Notification;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "now":J
    .end local v14    # "preview":Landroid/graphics/Bitmap;
    .end local v16    # "shortSide":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v16, v0

    .restart local v16    # "shortSide":I
    goto/16 :goto_0

    .line 203
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "croppedIcon":Landroid/graphics/Bitmap;
    .restart local v6    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v14    # "preview":Landroid/graphics/Bitmap;
    :cond_2
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 210
    .restart local v12    # "now":J
    :cond_3
    const-string/jumbo v18, ""

    goto/16 :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 26
    .param p1, "params"    # [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 261
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v21, 0x0

    return-object v21

    .line 262
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 263
    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 264
    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 265
    const/16 v21, 0x0

    return-object v21

    .line 270
    :cond_1
    const/16 v21, -0x2

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->setThreadPriority(I)V

    .line 272
    const/16 v21, 0x0

    aget-object v21, p1, v21

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 273
    .local v6, "context":Landroid/content/Context;
    const/16 v21, 0x0

    aget-object v21, p1, v21

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 274
    .local v11, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 278
    .local v13, "r":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 282
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    div-long v8, v22, v24

    .line 285
    .local v8, "dateSeconds":J
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 286
    .local v12, "out":Ljava/io/OutputStream;
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x5f

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 287
    .local v4, "bCompressOK":Z
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 288
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 291
    if-nez v4, :cond_2

    .line 292
    const/16 v21, 0x0

    aget-object v21, p1, v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 293
    const/16 v21, 0x0

    aget-object v21, p1, v21

    return-object v21

    .line 298
    :cond_2
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v20, "values":Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 300
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v21, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v21, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v21, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v21, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string/jumbo v21, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string/jumbo v21, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    const-string/jumbo v21, "mime_type"

    const-string/jumbo v22, "image/jpeg"

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v21, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string/jumbo v21, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string/jumbo v21, "_size"

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    sget-object v21, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 316
    .local v19, "uri":Landroid/net/Uri;
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v22, "hh:mma, MMM dd, yyyy"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 318
    .local v18, "subjectDate":Ljava/lang/String;
    const-string/jumbo v21, "Screenshot (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 319
    .local v17, "subject":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.SEND"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v16, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v21, "image/jpg"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v21, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v21, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    move-object/from16 v5, v16

    .line 329
    .local v5, "chooserIntent":Landroid/content/Intent;
    const v21, 0x10008000

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v21, v0

    .line 333
    const v22, 0x10404d1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 334
    const/16 v23, 0x0

    .line 335
    const/high16 v24, 0x10000000

    .line 334
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 332
    const v24, 0x7f0200b2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 338
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v21, "com.android.systemui.action.DELETE_SCREENSHOT"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v7, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v21, "file_path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v21, "notification_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string/jumbo v21, "mob_event"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v21, v0

    sget v22, Lcom/flyme/internal/R$string;->delete:I

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 343
    const/16 v23, 0x0

    const/high16 v24, 0x10000000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 342
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 347
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v21, "com.android.systemui.action.SHARE_SCREENSHOT"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v15, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v21, "file_path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo v21, "intent"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const-string/jumbo v21, "mob_event"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const/16 v21, 0x0

    const/high16 v22, 0x10000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v0, v15, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mShareIntent:Landroid/app/PendingIntent;

    .line 352
    const/16 v21, 0x0

    const/high16 v22, 0x10000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v0, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 355
    const/16 v21, 0x0

    aget-object v21, p1, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 356
    const/16 v21, 0x0

    aget-object v21, p1, v21

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 357
    const/16 v21, 0x0

    aget-object v21, p1, v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v4    # "bCompressOK":Z
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v7    # "deleteIntent":Landroid/content/Intent;
    .end local v8    # "dateSeconds":J
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "shareIntent":Landroid/content/Intent;
    .end local v16    # "sharingIntent":Landroid/content/Intent;
    .end local v17    # "subject":Ljava/lang/String;
    .end local v18    # "subjectDate":Ljava/lang/String;
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v20    # "values":Landroid/content/ContentValues;
    :goto_0
    if-eqz v11, :cond_3

    .line 368
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 371
    :cond_3
    const/16 v21, 0x0

    aget-object v21, p1, v21

    return-object v21

    .line 358
    :catch_0
    move-exception v10

    .line 361
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    const/16 v21, 0x0

    aget-object v21, p1, v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 363
    const/16 v21, 0x0

    aget-object v21, p1, v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 260
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 13
    .param p1, "params"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    const/high16 v12, 0x10000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 378
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 379
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 380
    return-void

    .line 383
    :cond_0
    iget v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v1, :cond_1

    .line 385
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 459
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 460
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 375
    return-void

    .line 388
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 391
    .local v9, "r":Landroid/content/res/Resources;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v7, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v1, "mob_event"

    invoke-virtual {v7, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 430
    .local v10, "now":J
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 431
    .local v8, "notification":Landroid/app/Notification;
    const v1, 0x7f020576

    iput v1, v8, Landroid/app/Notification;->icon:I

    .line 432
    const v1, 0x1060070

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v8, Landroid/app/Notification;->color:I

    .line 433
    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v8, Landroid/app/Notification;->flags:I

    .line 434
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v1, v4, v7, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 436
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.action.CANCEL_SCREENSHOT"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v6, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v1, "mob_event"

    invoke-virtual {v6, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v1, v4, v6, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 440
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/flyme/internal/R$layout;->notification_template_share_and_delete:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 442
    .local v0, "view":Landroid/widget/RemoteViews;
    const v1, 0x7f0b02a5

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 443
    .local v2, "iconPadding":I
    sget v1, Lcom/flyme/internal/R$id;->icon:I

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 444
    sget v1, Lcom/flyme/internal/R$id;->icon:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCroppedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 445
    sget v1, Lcom/flyme/internal/R$id;->title:I

    const v3, 0x7f0900eb

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 446
    sget v1, Lcom/flyme/internal/R$id;->text:I

    const v3, 0x7f0900ec

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 448
    sget v1, Lcom/flyme/internal/R$id;->share_btn:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mShareIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 449
    sget v1, Lcom/flyme/internal/R$id;->delete_btn:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 450
    iput-object v0, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 451
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v1, v3, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 452
    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/SystemUIMobEventUtils;->collcetScreenshotNotify(Landroid/content/Context;)V

    .line 453
    const-string/jumbo v1, "takeScreenshot"

    const-string/jumbo v3, "screenshot is saved!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 375
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "params":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
