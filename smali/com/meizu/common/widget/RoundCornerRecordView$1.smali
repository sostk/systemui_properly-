.class synthetic Lcom/meizu/common/widget/RoundCornerRecordView$1;
.super Ljava/lang/Object;
.source "RoundCornerRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RoundCornerRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

.field static final synthetic $SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 417
    invoke-static {}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->values()[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    :try_start_0
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    .line 345
    :goto_7
    invoke-static {}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->values()[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    :try_start_8
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    .line 417
    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
