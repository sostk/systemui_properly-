.class public Lcom/flyme/systemui/statusbar/DynamicNotification;
.super Ljava/lang/Object;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;,
        Lcom/flyme/systemui/statusbar/DynamicNotification$ModelHolder;,
        Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;,
        Lcom/flyme/systemui/statusbar/DynamicNotification$CountedTrigger;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildActiveModel(Landroid/os/Bundle;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .locals 9
    .param p0, "activeBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string/jumbo v6, "DynamicNotification"

    const-string/jumbo v7, "Build active model faild : activeBundle == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v8

    .line 101
    :cond_0
    const/4 v2, 0x0

    .line 102
    .local v2, "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    if-eqz p0, :cond_5

    .line 103
    new-instance v2, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .end local v2    # "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    invoke-direct {v2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;-><init>()V

    .line 104
    .local v2, "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 105
    .local v5, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "s":Ljava/lang/String;
    const-string/jumbo v6, "big"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 110
    new-instance v1, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;-><init>()V

    .line 111
    .local v1, "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    invoke-virtual {v1, v0}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->setActiveBundle(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {v2, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setBigcontent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V

    goto :goto_0

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    :cond_2
    const-string/jumbo v6, "headsup"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 119
    new-instance v1, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;-><init>()V

    .line 120
    .restart local v1    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    invoke-virtual {v1, v0}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->setActiveBundle(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setHeadsupcontent(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)V

    goto :goto_0

    .line 127
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    sget-object v6, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    invoke-virtual {v2, v6}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setType(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;)V

    .line 128
    :cond_4
    return-object v2

    .line 130
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    .end local v5    # "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    :cond_5
    const-string/jumbo v6, "DynamicNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Build model faild : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v2
.end method

.method public static buildAnimModel(Ljava/lang/String;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    .locals 7
    .param p0, "customAnimaiton"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-string/jumbo v4, "DynamicNotification"

    const-string/jumbo v5, "Build anim model faild : customAnimaiton == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v6

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 78
    .local v1, "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    if-eqz p0, :cond_1

    .line 79
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 82
    .local v3, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v4, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .line 81
    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    move-object v1, v0

    .line 83
    .local v1, "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v4, "DynamicNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Build model sucess : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v4, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    invoke-virtual {v1, v4}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->setType(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-object v1

    .line 88
    .end local v1    # "dynamicModel":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    :cond_1
    const-string/jumbo v4, "DynamicNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Build model faild : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-object v1
.end method

.method public static dealwithBigcontent(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    .locals 17
    .param p0, "contentView"    # Landroid/view/View;
    .param p1, "model"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getType()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-result-object v15

    sget-object v16, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getBigcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v3

    .line 233
    .local v3, "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getAnim()[I

    move-result-object v15

    if-eqz v15, :cond_6

    .line 235
    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getAnim()[I

    move-result-object v4

    .line 236
    .local v4, "custom":[I
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v12, v4

    .local v12, "size":I
    :goto_0
    if-ge v7, v12, :cond_0

    .line 237
    add-int/lit8 v15, v7, 0x2

    if-le v15, v12, :cond_1

    .line 259
    :cond_0
    sget-object v15, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v15

    .line 238
    :cond_1
    add-int/lit8 v15, v7, 0x1

    aget v15, v4, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 239
    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 241
    :try_start_0
    aget v15, v4, v7

    if-nez v15, :cond_3

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    add-int/lit8 v16, v7, 0x2

    aget v16, v4, v16

    invoke-static/range {v15 .. v16}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 243
    .local v1, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v13, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 236
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v13    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    .line 244
    .restart local v13    # "view":Landroid/view/View;
    :cond_3
    aget v15, v4, v7

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    add-int/lit8 v16, v7, 0x2

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 246
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v13, Landroid/widget/ImageView;

    .end local v13    # "view":Landroid/view/View;
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    check-cast v5, Landroid/graphics/drawable/Animatable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v6

    .line 254
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    sget-object v15, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v15

    .line 248
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v13    # "view":Landroid/view/View;
    :cond_4
    :try_start_1
    aget v15, v4, v7

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    add-int/lit8 v16, v7, 0x2

    aget v16, v4, v16

    invoke-static/range {v15 .. v16}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 250
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2, v13}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 261
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v3    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .end local v4    # "custom":[I
    .end local v7    # "i":I
    .end local v12    # "size":I
    .end local v13    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getType()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-result-object v15

    sget-object v16, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getBigcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v3

    .line 263
    .restart local v3    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v3, :cond_6

    move-object/from16 v14, p0

    .line 264
    check-cast v14, Landroid/view/ViewGroup;

    .line 265
    .local v14, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    .line 266
    .local v9, "paddingLeft":I
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    .line 267
    .local v10, "paddingRight":I
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    .line 268
    .local v11, "paddingTop":I
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    .line 269
    .local v8, "paddingBottom":I
    add-int/lit8 v15, v9, 0x18

    add-int/lit8 v16, v10, 0x18

    move/from16 v0, v16

    invoke-virtual {v14, v15, v11, v0, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 270
    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 271
    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getActiveView()Lcom/meizu/flyme/activeview/views/ActiveView;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->setActiveView(Lcom/meizu/flyme/activeview/views/ActiveView;)V

    .line 274
    sget-object v15, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v15

    .line 277
    .end local v3    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .end local v8    # "paddingBottom":I
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "paddingTop":I
    .end local v14    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    sget-object v15, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v15
.end method

.method public static dealwithContentView(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Z
    .locals 13
    .param p0, "contentView"    # Landroid/view/View;
    .param p1, "model"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 281
    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getContent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v2

    .line 282
    .local v2, "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getAnim()[I

    move-result-object v9

    if-eqz v9, :cond_5

    .line 284
    invoke-virtual {v2}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getAnim()[I

    move-result-object v3

    .line 285
    .local v3, "custom":[I
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v3

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 286
    add-int/lit8 v9, v6, 0x2

    if-le v9, v7, :cond_1

    .line 308
    :cond_0
    return v12

    .line 287
    :cond_1
    add-int/lit8 v9, v6, 0x1

    aget v9, v3, v9

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 288
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_2

    .line 290
    :try_start_0
    aget v9, v3, v6

    if-nez v9, :cond_3

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v3, v10

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 292
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v8, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 285
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v8    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 293
    .restart local v8    # "view":Landroid/view/View;
    :cond_3
    aget v9, v3, v6

    if-ne v9, v12, :cond_4

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 295
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v8, Landroid/widget/ImageView;

    .end local v8    # "view":Landroid/view/View;
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    check-cast v4, Landroid/graphics/drawable/Animatable;

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v5

    .line 303
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    return v11

    .line 297
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v8    # "view":Landroid/view/View;
    :cond_4
    :try_start_1
    aget v9, v3, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v3, v10

    invoke-static {v9, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 299
    .local v1, "animator":Landroid/animation/Animator;
    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 310
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v3    # "custom":[I
    .end local v6    # "i":I
    .end local v7    # "size":I
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    return v11
.end method

.method public static dealwithHeadsupcontent(Landroid/view/View;Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;)Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;
    .locals 20
    .param p0, "contentView"    # Landroid/view/View;
    .param p1, "model"    # Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getType()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-result-object v18

    sget-object v19, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getHeadsupcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v5

    .line 137
    .local v5, "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getAnim()[I

    move-result-object v18

    if-eqz v18, :cond_a

    .line 139
    invoke-virtual {v5}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getAnim()[I

    move-result-object v6

    .line 140
    .local v6, "custom":[I
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v15, v6

    .local v15, "size":I
    :goto_0
    if-ge v9, v15, :cond_0

    .line 141
    add-int/lit8 v18, v9, 0x2

    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 209
    :cond_0
    sget-object v18, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Anim:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v18

    .line 142
    :cond_1
    add-int/lit8 v18, v9, 0x1

    aget v18, v6, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 143
    .local v16, "view":Landroid/view/View;
    if-eqz v16, :cond_4

    .line 145
    :try_start_0
    aget v18, v6, v9

    const/high16 v19, -0x80000000

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    const/4 v14, 0x1

    .line 146
    .local v14, "repeat":Z
    :goto_1
    if-eqz v14, :cond_2

    .line 147
    aget v18, v6, v9

    const v19, 0x7fffffff

    and-int v18, v18, v19

    aput v18, v6, v9

    .line 149
    :cond_2
    aget v18, v6, v9

    if-nez v18, :cond_6

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    add-int/lit8 v19, v9, 0x2

    aget v19, v6, v19

    invoke-static/range {v18 .. v19}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 151
    .local v3, "animation":Landroid/view/animation/Animation;
    if-eqz v14, :cond_3

    .line 152
    new-instance v18, Lcom/flyme/systemui/statusbar/DynamicNotification$1;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$1;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 140
    .end local v3    # "animation":Landroid/view/animation/Animation;
    .end local v14    # "repeat":Z
    .end local v16    # "view":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x3

    goto :goto_0

    .line 145
    .restart local v16    # "view":Landroid/view/View;
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "repeat":Z
    goto :goto_1

    .line 175
    :cond_6
    aget v18, v6, v9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    add-int/lit8 v19, v9, 0x2

    aget v19, v6, v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 177
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v16, Landroid/widget/ImageView;

    .end local v16    # "view":Landroid/view/View;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    check-cast v7, Landroid/graphics/drawable/Animatable;

    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v7}, Landroid/graphics/drawable/Animatable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 203
    .end local v14    # "repeat":Z
    :catch_0
    move-exception v8

    .line 204
    .local v8, "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    sget-object v18, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v18

    .line 179
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v14    # "repeat":Z
    .restart local v16    # "view":Landroid/view/View;
    :cond_7
    :try_start_1
    aget v18, v6, v9

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    add-int/lit8 v19, v9, 0x2

    aget v19, v6, v19

    invoke-static/range {v18 .. v19}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 181
    .local v4, "animator":Landroid/animation/Animator;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 182
    if-eqz v14, :cond_8

    .line 183
    new-instance v18, Lcom/flyme/systemui/statusbar/DynamicNotification$2;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/DynamicNotification$2;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    :cond_8
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 211
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v5    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .end local v6    # "custom":[I
    .end local v9    # "i":I
    .end local v14    # "repeat":Z
    .end local v15    # "size":I
    .end local v16    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getType()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-result-object v18

    sget-object v19, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;->getHeadsupcontent()Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;

    move-result-object v5

    .line 213
    .restart local v5    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    if-eqz v5, :cond_a

    move-object/from16 v17, p0

    .line 214
    check-cast v17, Landroid/view/ViewGroup;

    .line 215
    .local v17, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    .line 216
    .local v11, "paddingLeft":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v12

    .line 217
    .local v12, "paddingRight":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    .line 218
    .local v13, "paddingTop":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    .line 219
    .local v10, "paddingBottom":I
    add-int/lit8 v18, v11, 0x18

    add-int/lit8 v19, v12, 0x18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v2, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 220
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 221
    invoke-virtual {v5}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->getActiveView()Lcom/meizu/flyme/activeview/views/ActiveView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    const/16 v19, -0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->setActiveView(Lcom/meizu/flyme/activeview/views/ActiveView;)V

    .line 224
    sget-object v18, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->Active:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v18

    .line 227
    .end local v5    # "content":Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
    .end local v10    # "paddingBottom":I
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .end local v13    # "paddingTop":I
    .end local v17    # "viewGroup":Landroid/view/ViewGroup;
    :cond_a
    sget-object v18, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;->None:Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicType;

    return-object v18
.end method

.method public static getAndRemoveActiveBundle(Landroid/service/notification/StatusBarNotification;)Landroid/os/Bundle;
    .locals 4
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const-string/jumbo v0, "DynamicNotification"

    const-string/jumbo v1, "getAndRemoveActiveBundle faild : sbn == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v3

    .line 65
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "flyme.active"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "flyme.active"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "flyme.active"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    throw v0
.end method

.method public static getAndRemoveAnimString(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 4
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const-string/jumbo v0, "DynamicNotification"

    const-string/jumbo v1, "getAndRemoveAnimString faild : sbn == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v3

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "dynamic_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "dynamic_notification"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "dynamic_notification"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    throw v0
.end method
