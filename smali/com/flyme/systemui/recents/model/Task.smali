.class public Lcom/flyme/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;,
        Lcom/flyme/systemui/recents/model/Task$ComponentNameKey;,
        Lcom/flyme/systemui/recents/model/Task$TaskKey;
    }
.end annotation


# instance fields
.field public activityIcon:Landroid/graphics/drawable/Drawable;

.field public activityLabel:Ljava/lang/String;

.field public applicationIcon:Landroid/graphics/drawable/Drawable;

.field public colorPrimary:I

.field public group:Lcom/flyme/systemui/recents/model/TaskGrouping;

.field public icon:Landroid/graphics/Bitmap;

.field public iconFilename:Ljava/lang/String;

.field public isActive:Z

.field public isHomeStack:Z

.field public isLaunchTarget:Z

.field public isLocked:Z

.field public isOccludesLaunchTarget:Z

.field public isSecretive:Z

.field public key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

.field public lockToTaskEnabled:Z

.field public lockToThisTask:Z

.field mCb:Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

.field public mem:J

.field public pkgName:Ljava/lang/String;

.field public splitGroupId:I

.field public splitMode:I

.field public splitedTask:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flyme/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field public taskAffiliation:I

.field public taskAffiliationColor:I

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public thumbnail:Landroid/graphics/Bitmap;

.field public useLightOnPrimaryColor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/Task;->isOccludesLaunchTarget:Z

    .line 149
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/flyme/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;IIZZLandroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "key"    # Lcom/flyme/systemui/recents/model/Task$TaskKey;
    .param p2, "isActive"    # Z
    .param p3, "taskAffiliation"    # I
    .param p4, "taskAffiliationColor"    # I
    .param p5, "activityTitle"    # Ljava/lang/String;
    .param p6, "activityIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "colorPrimary"    # I
    .param p8, "lockToThisTask"    # Z
    .param p9, "lockToTaskEnabled"    # Z
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "iconFilename"    # Ljava/lang/String;
    .param p12, "splitGroupId"    # I
    .param p13, "splitMode"    # I
    .param p14, "isLocked"    # Z
    .param p15, "isSecretive"    # Z
    .param p16, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/flyme/systemui/recents/model/Task;->isOccludesLaunchTarget:Z

    .line 149
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/flyme/systemui/recents/model/Task;->mem:J

    .line 160
    iget v4, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p3, v4, :cond_0

    const/4 v3, 0x1

    .line 161
    .local v3, "isInAffiliationGroup":Z
    :goto_0
    if-eqz v3, :cond_1

    if-eqz p4, :cond_1

    const/4 v2, 0x1

    .line 162
    .local v2, "hasAffiliationGroupColor":Z
    :goto_1
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    .line 163
    iput p3, p0, Lcom/flyme/systemui/recents/model/Task;->taskAffiliation:I

    .line 164
    iput p4, p0, Lcom/flyme/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 165
    iput-object p5, p0, Lcom/flyme/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 166
    iput-object p6, p0, Lcom/flyme/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 167
    if-eqz v2, :cond_2

    .end local p4    # "taskAffiliationColor":I
    :goto_2
    iput p4, p0, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    .line 168
    iget v4, p0, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    .line 169
    const/4 v5, -0x1

    .line 168
    invoke-static {v4, v5}, Lcom/flyme/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v4

    .line 169
    const/high16 v5, 0x40000000    # 2.0f

    .line 168
    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Lcom/flyme/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 170
    iput-boolean p2, p0, Lcom/flyme/systemui/recents/model/Task;->isActive:Z

    .line 171
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/Task;->isSecretive:Z

    .line 172
    if-eqz p9, :cond_4

    .end local p8    # "lockToThisTask":Z
    :goto_4
    iput-boolean p8, p0, Lcom/flyme/systemui/recents/model/Task;->lockToThisTask:Z

    .line 173
    iput-boolean p9, p0, Lcom/flyme/systemui/recents/model/Task;->lockToTaskEnabled:Z

    .line 174
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    .line 175
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    .line 176
    move/from16 v0, p12

    iput v0, p0, Lcom/flyme/systemui/recents/model/Task;->splitGroupId:I

    .line 177
    move/from16 v0, p13

    iput v0, p0, Lcom/flyme/systemui/recents/model/Task;->splitMode:I

    .line 178
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/Task;->isLocked:Z

    .line 179
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 180
    iget-object v4, p1, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/systemui/recents/model/Task;->pkgName:Ljava/lang/String;

    .line 159
    return-void

    .line 160
    .end local v2    # "hasAffiliationGroupColor":Z
    .end local v3    # "isInAffiliationGroup":Z
    .restart local p4    # "taskAffiliationColor":I
    .restart local p8    # "lockToThisTask":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isInAffiliationGroup":Z
    goto :goto_0

    .line 161
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "hasAffiliationGroupColor":Z
    goto :goto_1

    :cond_2
    move p4, p7

    .line 167
    goto :goto_2

    .line 168
    .end local p4    # "taskAffiliationColor":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 172
    :cond_4
    const/4 p8, 0x0

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 237
    check-cast v0, Lcom/flyme/systemui/recents/model/Task;

    .line 238
    .local v0, "t":Lcom/flyme/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public notifyTaskDataLoaded()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->mCb:Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->mCb:Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded()V

    .line 221
    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->mCb:Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->mCb:Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    .line 228
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/Task;->mCb:Lcom/flyme/systemui/recents/model/Task$TaskCallbacks;

    .line 208
    return-void
.end method

.method public setGroup(Lcom/flyme/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/flyme/systemui/recents/model/TaskGrouping;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This task is already assigned to a group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    const-string/jumbo v0, "no group"

    .line 244
    .local v0, "groupAffiliation":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/flyme/systemui/recents/model/Task;->group:Lcom/flyme/systemui/recents/model/TaskGrouping;

    iget v1, v1, Lcom/flyme/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Task ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/recents/model/Task;->key:Lcom/flyme/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/flyme/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string/jumbo v2, " ["

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string/jumbo v2, "]"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateColorPrimary(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 265
    iget v1, p0, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    .line 266
    iput p1, p0, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    .line 267
    iget v1, p0, Lcom/flyme/systemui/recents/model/Task;->colorPrimary:I

    .line 268
    const/4 v2, -0x1

    .line 267
    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v1

    .line 268
    const/high16 v2, 0x40000000    # 2.0f

    .line 267
    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 264
    :cond_1
    return-void
.end method
