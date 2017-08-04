.class public final enum Lcom/meizu/common/widget/RoundCornerRecordView$IconType;
.super Ljava/lang/Enum;
.source "RoundCornerRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RoundCornerRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/RoundCornerRecordView$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field public static final enum IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;


# instance fields
.field final iconTypeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_NULL"

    invoke-direct {v0, v1, v4, v4}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 154
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_CALLOUT"

    invoke-direct {v0, v1, v5, v5}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 155
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_CALLIN"

    invoke-direct {v0, v1, v6, v6}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 156
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_MISSED"

    invoke-direct {v0, v1, v7, v7}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 157
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_REFUSED"

    invoke-direct {v0, v1, v8, v8}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 158
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_RINGONCE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 159
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_RECORD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 160
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_RECORD_FAIL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 161
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_CALL_LOG_VOICEMAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 162
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_SMS_HAS_UNREAD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 163
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const-string/jumbo v1, "IC_SMS_HAS_NOTDELIVERED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const/16 v0, 0xb

    .line 152
    new-array v0, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->$VALUES:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput p3, p0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->iconTypeInt:I

    .line 167
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/RoundCornerRecordView$IconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 152
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->$VALUES:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-object v0
.end method
