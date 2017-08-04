.class public Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

.field static final E:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final ICON_3G:I

.field static final ICON_4G:I

.field static final ICON_4G_PLUS:I

.field static final ICON_E:I

.field static final ICON_G:I

.field static final ICON_H:I

.field static final IN_DOUBLE_ICON:Z

.field static final LTE:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final QS_DATA_1X:[I

.field static final QS_DATA_3G:[I

.field static final QS_DATA_4G:[I

.field static final QS_DATA_E:[I

.field static final QS_DATA_G:[I

.field static final QS_DATA_H:[I

.field static final QS_DATA_LTE:[I

.field static final QS_DATA_R:[I

.field static QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH_EXCLAMATION:[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH_FULL:[I

.field static final ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final TELEPHONY_LEVEL_COUNT:I

.field static TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_EXCLAMATION:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FULL:[I

.field static TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_EXCLAMATION:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_EXCLAMATION:[I

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_EXCLAMATION:[I

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_EXCLAMATION:[I

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[I

    .line 92
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    .line 93
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 94
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 95
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_LEVEL_COUNT:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 163
    const v0, 0x7f02010e

    .line 164
    const v1, 0x7f02010e

    .line 162
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 171
    const v1, 0x7f0205b0

    .line 172
    const v2, 0x7f0205b0

    .line 173
    const v3, 0x7f0205b0

    .line 174
    const v4, 0x7f0205b0

    .line 171
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 175
    const v1, 0x7f0205b0

    .line 176
    const v2, 0x7f0205b0

    .line 177
    const v3, 0x7f0205b0

    .line 178
    const v4, 0x7f0205b0

    .line 175
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 170
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 182
    const v0, 0x7f020108

    .line 183
    const v1, 0x7f020108

    .line 181
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 187
    const v1, 0x7f0205a8

    .line 188
    const v2, 0x7f0205a8

    .line 189
    const v3, 0x7f0205a8

    .line 190
    const v4, 0x7f0205a8

    .line 187
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 191
    const v1, 0x7f0205a8

    .line 192
    const v2, 0x7f0205a8

    .line 193
    const v3, 0x7f0205a8

    .line 194
    const v4, 0x7f0205a8

    .line 191
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 186
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 198
    const v0, 0x7f0200fe

    .line 199
    const v1, 0x7f0200fe

    .line 197
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 203
    const v1, 0x7f0205ae

    .line 204
    const v2, 0x7f0205ae

    .line 205
    const v3, 0x7f0205ae

    .line 206
    const v4, 0x7f0205ae

    .line 203
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 207
    const v1, 0x7f0205ae

    .line 208
    const v2, 0x7f0205ae

    .line 209
    const v3, 0x7f0205ae

    .line 210
    const v4, 0x7f0205ae

    .line 207
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 202
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 214
    const v0, 0x7f020102

    .line 215
    const v1, 0x7f020102

    .line 213
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    .line 219
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 220
    const v1, 0x7f0205b2

    .line 221
    const v2, 0x7f0205b2

    .line 222
    const v3, 0x7f0205b2

    .line 223
    const v4, 0x7f0205b2

    .line 220
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 224
    const v1, 0x7f0205b2

    .line 225
    const v2, 0x7f0205b2

    .line 226
    const v3, 0x7f0205b2

    .line 227
    const v4, 0x7f0205b2

    .line 224
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 219
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 231
    const v0, 0x7f020109

    .line 232
    const v1, 0x7f020109

    .line 230
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 238
    const v1, 0x7f0205a6

    .line 239
    const v2, 0x7f0205a6

    .line 240
    const v3, 0x7f0205a6

    .line 241
    const v4, 0x7f0205a6

    .line 238
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 242
    const v1, 0x7f0205a6

    .line 243
    const v2, 0x7f0205a6

    .line 244
    const v3, 0x7f0205a6

    .line 245
    const v4, 0x7f0205a6

    .line 242
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 237
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 249
    const v0, 0x7f0200fb

    .line 250
    const v1, 0x7f0200fb

    .line 248
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 255
    const v1, 0x7f0205aa

    .line 256
    const v2, 0x7f0205aa

    .line 257
    const v3, 0x7f0205aa

    .line 258
    const v4, 0x7f0205aa

    .line 255
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 259
    const v1, 0x7f0205aa

    .line 260
    const v2, 0x7f0205aa

    .line 261
    const v3, 0x7f0205aa

    .line 262
    const v4, 0x7f0205aa

    .line 259
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 254
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 266
    const v0, 0x7f020100

    .line 267
    const v1, 0x7f020100

    .line 265
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 272
    const v1, 0x7f0205b6

    .line 273
    const v2, 0x7f0205b6

    .line 274
    const v3, 0x7f0205b6

    .line 275
    const v4, 0x7f0205b6

    .line 272
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 276
    const v1, 0x7f0205b6

    .line 277
    const v2, 0x7f0205b6

    .line 278
    const v3, 0x7f0205b6

    .line 279
    const v4, 0x7f0205b6

    .line 276
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 271
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 283
    const v0, 0x7f02010b

    .line 284
    const v1, 0x7f02010b

    .line 282
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    .line 291
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->IsFullDataType()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    .line 292
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0205b1

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 293
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0205af

    :goto_1
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 294
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0205b3

    :goto_2
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 295
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0205a9

    :goto_3
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 296
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0205ab

    :goto_4
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 297
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IN_DOUBLE_ICON:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0205ad

    :goto_5
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 307
    const-string/jumbo v1, "3G"

    .line 308
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 309
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 310
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 314
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 316
    sget v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 318
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    .line 311
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 312
    const v7, 0x7f0205fa

    .line 313
    const v8, 0x7f02010c

    .line 315
    const v10, 0x7f0901c1

    .line 317
    const/4 v12, 0x1

    .line 306
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 321
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 322
    const-string/jumbo v1, "Unknown"

    .line 323
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 324
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 325
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 329
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 330
    const/4 v5, 0x2

    new-array v13, v5, [I

    .line 326
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 327
    const v7, 0x7f0205fa

    .line 328
    const v8, 0x7f02010c

    .line 330
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 321
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 333
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 334
    const-string/jumbo v1, "E"

    .line 335
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 336
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 337
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 341
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 343
    sget v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 345
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    .line 338
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 339
    const v7, 0x7f0205fa

    .line 340
    const v8, 0x7f02010c

    .line 342
    const v10, 0x7f0901c7

    .line 344
    const/4 v12, 0x0

    .line 333
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 348
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 349
    const-string/jumbo v1, "1X"

    .line 350
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 351
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 352
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 356
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 360
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    .line 353
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 354
    const v7, 0x7f0205fa

    .line 355
    const v8, 0x7f02010c

    .line 357
    const v10, 0x7f0901c5

    .line 358
    const v11, 0x7f0205a6

    .line 359
    const/4 v12, 0x1

    .line 348
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 363
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 364
    const-string/jumbo v1, "G"

    .line 365
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 366
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 367
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 371
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 373
    sget v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 375
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    .line 368
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 369
    const v7, 0x7f0205fa

    .line 370
    const v8, 0x7f02010c

    .line 372
    const v10, 0x7f0901be

    .line 374
    const/4 v12, 0x0

    .line 363
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 378
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 379
    const-string/jumbo v1, "H"

    .line 380
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 381
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 382
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 386
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 388
    sget v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 390
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    .line 383
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 384
    const v7, 0x7f0205fa

    .line 385
    const v8, 0x7f02010c

    .line 387
    const v10, 0x7f0901c2

    .line 389
    const/4 v12, 0x0

    .line 378
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 393
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 394
    const-string/jumbo v1, "4G"

    .line 395
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 396
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 397
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 401
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 403
    sget v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 405
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    .line 398
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 399
    const v7, 0x7f0205fa

    .line 400
    const v8, 0x7f02010c

    .line 402
    const v10, 0x7f0901c3

    .line 404
    const/4 v12, 0x1

    .line 393
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 408
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 409
    const-string/jumbo v1, "H+"

    .line 410
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 411
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 412
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 416
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 420
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    .line 413
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 414
    const v7, 0x7f0205fa

    .line 415
    const v8, 0x7f02010c

    .line 417
    const v10, 0x7f0901c2

    .line 418
    const v11, 0x7f0205b4

    .line 419
    const/4 v12, 0x0

    .line 408
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 422
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 423
    const-string/jumbo v1, "4G+"

    .line 424
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 425
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 426
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 430
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 432
    sget v11, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 434
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    .line 427
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 428
    const v7, 0x7f0205fa

    .line 429
    const v8, 0x7f02010c

    .line 431
    const v10, 0x7f0901c3

    .line 433
    const/4 v12, 0x1

    .line 422
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 437
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 438
    const-string/jumbo v1, "LTE"

    .line 439
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 440
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 441
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 445
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 449
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    .line 442
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 443
    const v7, 0x7f0205fa

    .line 444
    const v8, 0x7f02010c

    .line 446
    const v10, 0x7f0901c4

    .line 447
    const v11, 0x7f0205b6

    .line 448
    const/4 v12, 0x1

    .line 437
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 452
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 453
    const-string/jumbo v1, "Roaming"

    .line 454
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 455
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 456
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 460
    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    .line 464
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    .line 457
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 458
    const v7, 0x7f0205fa

    .line 459
    const v8, 0x7f02010c

    .line 461
    const v10, 0x7f0901c6

    .line 462
    const v11, 0x7f0205b7

    .line 463
    const/4 v12, 0x0

    .line 452
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 25
    return-void

    .line 292
    :cond_0
    const v0, 0x7f0205b0

    goto/16 :goto_0

    .line 293
    :cond_1
    const v0, 0x7f0205ae

    goto/16 :goto_1

    .line 294
    :cond_2
    const v0, 0x7f0205b2

    goto/16 :goto_2

    .line 295
    :cond_3
    const v0, 0x7f0205a8

    goto/16 :goto_3

    .line 296
    :cond_4
    const v0, 0x7f0205aa

    goto/16 :goto_4

    .line 297
    :cond_5
    const v0, 0x7f0205ac

    goto/16 :goto_5

    .line 28
    :array_0
    .array-data 4
        0x7f0205ec
        0x7f0205ee
        0x7f0205f0
        0x7f0205f2
        0x7f0205f4
        0x7f0205f6
    .end array-data

    .line 38
    :array_1
    .array-data 4
        0x7f0205ed
        0x7f0205ef
        0x7f0205f1
        0x7f0205f3
        0x7f0205f5
        0x7f0205f7
    .end array-data

    .line 49
    :array_2
    .array-data 4
        0x7f0200f9
        0x7f0200fa
        0x7f0200fc
        0x7f0200fd
        0x7f0200ff
        0x7f0200ff
    .end array-data

    .line 60
    :array_3
    .array-data 4
        0x7f020103
        0x7f020104
        0x7f020105
        0x7f020106
        0x7f020107
        0x7f020107
    .end array-data

    .line 71
    :array_4
    .array-data 4
        0x7f0205d2
        0x7f0205d4
        0x7f0205d6
        0x7f0205d8
        0x7f0205da
        0x7f0205dc
    .end array-data

    .line 81
    :array_5
    .array-data 4
        0x7f0205d3
        0x7f0205d5
        0x7f0205d7
        0x7f0205d9
        0x7f0205db
        0x7f0205dd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRoamingIconGroup(I)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    .locals 14
    .param p0, "dateTypeIcon"    # I

    .prologue
    const/4 v5, 0x0

    .line 468
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 469
    const-string/jumbo v1, "Roaming"

    .line 470
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 471
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 472
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 476
    sget-object v6, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v6, v5

    .line 480
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    .line 474
    const v7, 0x7f0205fa

    .line 475
    const v8, 0x7f02010c

    .line 477
    const v10, 0x7f0901c6

    move v6, v5

    move v11, p0

    move v12, v5

    .line 468
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    return-object v0
.end method

.method static initTelephonyIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v2

    .line 100
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v3

    .line 101
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v2

    .line 102
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_FULL:[I

    aput-object v1, v0, v3

    .line 103
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[I

    aput-object v1, v0, v2

    .line 104
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[I

    aput-object v1, v0, v3

    .line 97
    return-void
.end method
