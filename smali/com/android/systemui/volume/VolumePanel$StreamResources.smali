.class final enum Lcom/android/systemui/volume/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/volume/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    .line 191
    const v4, 0x1040411

    .line 192
    const v5, 0x7f020063

    .line 193
    const v6, 0x7f020064

    move v7, v2

    .line 190
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 195
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "RingerStream"

    .line 196
    const v7, 0x1040412

    .line 197
    const v8, 0x7f020121

    .line 198
    const v9, 0x7f020122

    move v5, v11

    move v6, v12

    move v10, v2

    .line 195
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 200
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "VoiceStream"

    .line 201
    const v7, 0x1040413

    .line 202
    const v8, 0x7f020063

    .line 203
    const v9, 0x7f020064

    move v5, v12

    move v6, v2

    move v10, v2

    .line 200
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 205
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "AlarmStream"

    .line 206
    const v7, 0x104040e

    .line 207
    const v8, 0x7f020121

    .line 208
    const v9, 0x7f020122

    move v5, v13

    move v6, v14

    move v10, v2

    .line 205
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 210
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "MediaStream"

    .line 211
    const v7, 0x1040414

    .line 212
    const v8, 0x7f0200b3

    .line 213
    const v9, 0x7f0200b4

    move v5, v14

    move v6, v13

    move v10, v11

    .line 210
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 215
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "NotificationStream"

    const/4 v5, 0x5

    const/4 v6, 0x5

    .line 216
    const v7, 0x1040415

    .line 217
    const v8, 0x7f0200b6

    .line 218
    const v9, 0x7f0200b7

    move v10, v11

    .line 215
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 220
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "SystemStream"

    const/4 v5, 0x6

    .line 221
    const v7, 0x7f0900f1

    .line 222
    const v8, 0x7f02016c

    .line 223
    const v9, 0x7f02016d

    move v6, v11

    move v10, v2

    .line 220
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 225
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "MasterStream"

    const/4 v5, 0x7

    .line 226
    const/16 v6, -0x64

    .line 227
    const v7, 0x1040414

    .line 228
    const v8, 0x7f020121

    .line 229
    const v9, 0x7f020122

    move v10, v2

    .line 225
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 226
    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 227
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string/jumbo v4, "RemoteStream"

    const/16 v5, 0x8

    .line 231
    const/16 v6, -0xc8

    .line 232
    const v7, 0x1040414

    .line 233
    const v8, 0x7f0200b3

    .line 234
    const v9, 0x7f0200b4

    move v10, v2

    .line 227
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 231
    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 189
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .param p3, "streamType"    # I
    .param p4, "descRes"    # I
    .param p5, "iconRes"    # I
    .param p6, "iconMuteRes"    # I
    .param p7, "show"    # Z

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 247
    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    .line 248
    iput p5, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    .line 249
    iput p6, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    .line 250
    iput-boolean p7, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 245
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-object v0
.end method
