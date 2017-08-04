.class public final enum Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
.super Ljava/lang/Enum;
.source "RoundCornerRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RoundCornerRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field public static final enum BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field public static final enum BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field public static final enum BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field public static final enum BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field public static final enum BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field public static final enum BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;


# instance fields
.field final borderTypeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const-string/jumbo v1, "BORDER_NULL"

    invoke-direct {v0, v1, v4, v4}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 137
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const-string/jumbo v1, "BORDER_LIST_CONTACT"

    invoke-direct {v0, v1, v5, v5}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 138
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const-string/jumbo v1, "BORDER_EDIT_CONTACT"

    invoke-direct {v0, v1, v6, v6}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 139
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const-string/jumbo v1, "BORDER_VIEW_CONTACT"

    invoke-direct {v0, v1, v7, v7}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 140
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const-string/jumbo v1, "BORDER_SMS_CONTACT"

    invoke-direct {v0, v1, v8, v8}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 141
    new-instance v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const-string/jumbo v1, "BORDER_SMALL_CONTACT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v0, 0x6

    .line 135
    new-array v0, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->$VALUES:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

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
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->borderTypeInt:I

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 135
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->$VALUES:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    return-object v0
.end method
